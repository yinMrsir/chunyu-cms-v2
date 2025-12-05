import { createApiResponse } from '~~/server/utils/apiResponse';
import { MemberInviteRecordServices } from '~~/server/services/member/memberInviteRecord.services';

export default defineEventHandler(async event => {
  try {
    // 获取当前登录用户
    const currentUser = event.context.memberUser;

    const query = getQuery(event);
    const page = Number(query.page) || 1;
    const pageSize = Number(query.pageSize) || 10;

    const memberInviteRecordServices = new MemberInviteRecordServices();
    const result = await memberInviteRecordServices.getRecordsByInviterId(currentUser.memberUserId, page, pageSize);

    return createApiResponse(result, 200, '获取邀请记录成功');
  } catch (error: any) {
    return createApiResponse(null, 500, error.message || '获取邀请记录失败');
  }
});
