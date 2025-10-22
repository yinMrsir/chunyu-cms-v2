import { MemberRateServices } from '~~/server/services/member/memberRate.services';

const memberRateServices = new MemberRateServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberRateServices.getMemberRateByMemberUserId(
    event.context.memberUser.memberUserId,
    Number(query.movieBasicsId)
  );
  return createApiResponse(data);
});
