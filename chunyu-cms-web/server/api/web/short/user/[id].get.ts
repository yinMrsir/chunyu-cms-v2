import { MemberUserServices } from '~~/server/services/member/memberUser.services';

const memberServices = new MemberUserServices();

export default defineEventHandler(async event => {
  const id = getRouterParam(event, 'id');
  return await memberServices.getUserById(Number(id));
});
