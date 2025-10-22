import { MemberCollectionServices } from '~~/server/services/member/memberCollection.services';

const memberCollectionServices = new MemberCollectionServices();

/**
 * 查询短视频收藏状态
 */
export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (!query.shortId) {
    return false;
  }
  const data = await memberCollectionServices.getByMemberUserIdAndShortId(
    event.context.memberUser.memberUserId,
    Number(query.shortId)
  );
  return createApiResponse(!!data);
});
