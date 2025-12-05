import { createApiResponse } from '~~/server/utils/apiResponse';
import { MemberInviteCodeServices } from '~~/server/services/member/memberInviteCode.services';

export default defineEventHandler(async event => {
  try {
    // 获取当前登录用户
    const currentUser = event.context.memberUser;

    const memberInviteCodeServices = new MemberInviteCodeServices();
    const inviteCode = await memberInviteCodeServices.getOrCreateInviteCode(currentUser.memberUserId);

    const stats = await memberInviteCodeServices.getInviteCodeStats(currentUser.memberUserId);

    return createApiResponse(
      {
        inviteCode,
        stats
      },
      200,
      '获取邀请码成功'
    );
  } catch (error: any) {
    return createApiResponse(null, 500, error.message || '获取邀请码失败');
  }
});
