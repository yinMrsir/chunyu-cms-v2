import * as jwt from 'jsonwebtoken';
import { createApiResponse } from '~~/server/utils/apiResponse';
import { USER_WEB_CODE_KEY, USER_WEB_TOKEN_KEY } from '~~/server/contants/redis.contant';
import { MemberUserServices } from '~~/server/services/member/memberUser.services';
import { MemberInviteCodeServices } from '~~/server/services/member/memberInviteCode.services';
import { MemberInviteRecordServices } from '~~/server/services/member/memberInviteRecord.services';
import { SharedServices } from '~~/server/services/admin/share/shared.services';

// 在函数顶部附近添加接口定义
interface InviteInfo {
  usedInviteCode: boolean;
  inviteeReward: number;
  message: string;
}

interface ResponseData {
  userInfo: {
    memberUserId: number;
    nickname: string;
    email: string;
    avatar: string;
  };
  token: string;
  inviteInfo?: InviteInfo;
}

const redis = useStorage('redis');
const runtimeConfig = useRuntimeConfig();
const memberUserServices = new MemberUserServices();
const memberInviteCodeServices = new MemberInviteCodeServices();
const memberInviteRecordServices = new MemberInviteRecordServices();
const sharedServices = new SharedServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const ip = getRequestIP(event, { xForwardedFor: true })?.replace('::ffff:', '');
  if (!body.email) {
    return createApiResponse(null, 400, '邮箱不能为空');
  }
  if (body.loginType === '1') {
    if (!body.code) {
      return createApiResponse(null, 400, '验证码不能为空');
    }
    const validateCode = await redis.getItem(`${USER_WEB_CODE_KEY}:${body.email}`);
    if (validateCode !== body.code) {
      return createApiResponse(null, 400, '验证码错误');
    }
    const memberUser = await memberUserServices.getUserByEmail(body.email);
    if (!memberUser) {
      // 处理邀请码
      let inviterData = null;
      let inviteRewards = { inviterReward: 0, inviteeReward: 0 };

      if (body.inviteCode) {
        const validation = await memberInviteCodeServices.validateInviteCode(body.inviteCode);
        if (validation.valid && validation.inviteCodeData) {
          inviterData = validation.inviteCodeData;

          // 获取邀请奖励配置
          const sysConfigServices = new (
            await import('~~/server/services/admin/system/sysConfig/sys.config.services')
          ).SysConfigServices();
          const inviteReward = await sysConfigServices.findByConfigKey('inviteReward');
          const inviteeReward = await sysConfigServices.findByConfigKey('inviteeReward');

          inviteRewards = {
            inviterReward: inviteReward?.configValue ? Number(inviteReward.configValue) : 50,
            inviteeReward: inviteeReward?.configValue ? Number(inviteeReward.configValue) : 20
          };
        } else {
          return createApiResponse(null, 400, validation.message || '邀请码无效');
        }
      }

      // 创建用户
      const nickname = sharedServices.generateRandomValue(6);
      const avatar = runtimeConfig.imgHost + '/images/toux.png';
      const memberUserId = await memberUserServices.add({
        email: body.email,
        nickname,
        avatar,
        loginIp: ip,
        loginDate: new Date(),
        createTime: new Date()
      });

      // 如果使用了邀请码，创建邀请记录并发放奖励
      if (inviterData && memberUserId) {
        await memberInviteRecordServices.createInviteRecord({
          inviterId: inviterData.memberUserId,
          inviteeId: Number(memberUserId),
          inviteCode: body.inviteCode,
          inviterReward: inviteRewards.inviterReward,
          inviteeReward: inviteRewards.inviteeReward,
          registerTime: new Date()
        });

        // 增加邀请码使用次数
        await memberInviteCodeServices.incrementUseCount(body.inviteCode);

        // 发放被邀请者奖励（额外金币）
        if (inviteRewards.inviteeReward > 0) {
          const memberWalletServices = new (
            await import('~~/server/services/member/memberWallet.services')
          ).MemberWalletServices();

          await memberWalletServices.recharge(Number(memberUserId), inviteRewards.inviteeReward, `邀请奖励`);
        }
      }

      const payload = { memberUserId: Number(memberUserId), nickname, email: body.email, avatar };
      const token = (jwt as any).default.sign(payload, runtimeConfig.jwt.secret, {
        expiresIn: '7d'
      });
      await redis.setItem(`${USER_WEB_TOKEN_KEY}:${memberUserId}`, token);

      const responseData: ResponseData = { userInfo: payload, token };
      if (inviterData) {
        responseData.inviteInfo = {
          usedInviteCode: true,
          inviteeReward: inviteRewards.inviteeReward,
          message: `使用邀请码成功，获得 ${inviteRewards.inviteeReward} 金币奖励`
        };
      }

      return createApiResponse(responseData, 200, '登录成功');
    } else {
      const payload = {
        memberUserId: memberUser.memberUserId,
        nickname: memberUser.nickname,
        email: memberUser.email,
        avatar: memberUser.avatar
      };
      const token = (jwt as any).default.sign(payload, runtimeConfig.jwt.secret, {
        expiresIn: '7d'
      });
      await redis.setItem(`${USER_WEB_TOKEN_KEY}:${memberUser.memberUserId}`, token);
      await memberUserServices.update(memberUser.memberUserId, { loginIp: ip, loginDate: new Date() });
      return createApiResponse({ userInfo: payload, token }, 200, '登录成功');
    }
  } else if (body.loginType === '2') {
    if (!body.password) {
      return createApiResponse(null, 400, '密码不能为空');
    }
    const memberUser = await memberUserServices.getUserByEmail(body.email);
    const comparePassword = sharedServices.md5(body.password + memberUser?.salt);
    if (memberUser && comparePassword === memberUser.password) {
      const payload = {
        memberUserId: memberUser.memberUserId,
        nickname: memberUser.nickname,
        email: memberUser.email,
        avatar: memberUser.avatar
      };
      const token = (jwt as any).default.sign(payload, runtimeConfig.jwt.secret, {
        expiresIn: '7d'
      });
      await redis.setItem(`${USER_WEB_TOKEN_KEY}:${memberUser.memberUserId}`, token, { ttl: 60 * 60 * 24 * 7 });
      await memberUserServices.update(memberUser.memberUserId, { loginIp: ip, loginDate: new Date() });
      return createApiResponse({ userInfo: payload, token }, 200, '登录成功');
    } else if (!memberUser) {
      return createApiResponse(null, 400, '用户不存在');
    } else {
      return createApiResponse(null, 400, '密码错误');
    }
  }
  return createApiResponse(null, 400, '异常错误');
});
