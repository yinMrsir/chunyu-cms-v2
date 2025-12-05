import { createApiResponse } from '~~/server/utils/apiResponse';
import { MemberInviteCodeServices } from '~~/server/services/member/memberInviteCode.services';
import { MemberInviteRecordServices } from '~~/server/services/member/memberInviteRecord.services';

export default defineEventHandler(async event => {
  try {
    // 获取当前登录用户
    const currentUser = event.context.memberUser;

    const memberInviteCodeServices = new MemberInviteCodeServices();
    const memberInviteRecordServices = new MemberInviteRecordServices();

    // 并行获取邀请码统计和邀请统计
    const [codeStats, inviteStats] = await Promise.all([
      memberInviteCodeServices.getInviteCodeStats(currentUser.memberUserId),
      memberInviteRecordServices.getInviteStats(currentUser.memberUserId)
    ]);

    return createApiResponse(
      {
        codeStats,
        inviteStats
      },
      200,
      '获取邀请统计成功'
    );
  } catch (error: any) {
    return createApiResponse(null, 500, error.message || '获取邀请统计失败');
  }
});
