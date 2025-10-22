import { MemberLikeServices } from '~~/server/services/member/memberLike.services';

const memberLikeServices = new MemberLikeServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const isLike = await memberLikeServices.getByMemberUserIdAndShortId(
    event.context.memberUser.memberUserId,
    Number(query.shortId)
  );
  return createApiResponse(!!isLike);
});
