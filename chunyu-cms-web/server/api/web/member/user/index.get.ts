import { MemberUserServices } from '~~/server/services/member/memberUser.services';

const memberUserServices = new MemberUserServices();

export default defineEventHandler(async event => {
  const data = await memberUserServices.getUserById(event.context.memberUser.memberUserId);
  return data ? createApiResponse(data) : createApiResponse(null, 401, '获取用户信息失败');
});
