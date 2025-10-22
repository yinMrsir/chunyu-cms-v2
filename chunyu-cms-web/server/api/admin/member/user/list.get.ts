import { MemberUserServices } from '~~/server/services/member/memberUser.services';

const memberUserServices = new MemberUserServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberUserServices.list(query);
  return createApiResponse(data);
});
