import { MemberOrderServices } from '~~/server/services/member/memberOrder.services';

const memberOrderServices = new MemberOrderServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberOrderServices.list(query);
  return createApiResponse(data);
});
