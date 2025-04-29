import * as jwt from 'jsonwebtoken';
import { createApiResponse } from '~/server/utils/apiResponse';
import { USER_WEB_CODE_KEY, USER_WEB_TOKEN_KEY } from '~/server/contants/redis.contant';
import { MemberUserServices } from '~/server/services/member/memberUser.services';
import { SharedServices } from '~/server/services/admin/share/shared.services';

const redis = useStorage('redis');
const runtimeConfig = useRuntimeConfig();
const memberUserServices = new MemberUserServices();
const sharedServices = new SharedServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const ip = getRequestIP(event)?.replace('::ffff:', '');
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
      const payload = { memberUserId, nickname, email: body.email, avatar };
      const token = (jwt as any).default.sign(payload, runtimeConfig.jwt.secret, {
        expiresIn: '7d'
      });
      await redis.setItem(`${USER_WEB_TOKEN_KEY}:${memberUserId}`, token);
      return createApiResponse({ userInfo: payload, token }, 200, '登录成功');
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
  return createApiResponse(null, 400, '开发中...');
});
