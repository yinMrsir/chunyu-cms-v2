import { MemberLikeServices } from '~~/server/services/member/memberLike.services';

const memberLikeServices = new MemberLikeServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberLikeServices.list(query, event.context.memberUser.memberUserId);
  return createApiResponse({ rows: data.rows.map(value => value.short), total: data.total });
});
