import { MemberUserServices } from '~~/server/services/member/memberUser.services';

const memberUserServices = new MemberUserServices();

export default defineEventHandler(async event => {
  const id = getRouterParam(event, 'id');
  await memberUserServices.delete(Number(id));
  return createApiResponse(null);
});
