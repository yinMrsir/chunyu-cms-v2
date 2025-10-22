import { MemberCollectionServices } from '~~/server/services/member/memberCollection.services';

const memberCollectionServices = new MemberCollectionServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberCollectionServices.list(query, event.context.memberUser.memberUserId);
  return createApiResponse({ rows: data.rows.map(value => value.short), total: data.total });
});
