import { MemberFavoriteServices } from '~~/server/services/member/memberFavorite.services';

const memberFavoriteServices = new MemberFavoriteServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const { pageNum = 1, limit = 10 } = query;

  try {
    const result = await memberFavoriteServices.list(
      { pageNum: Number(pageNum), limit: Number(limit) },
      event.context.memberUser.memberUserId
    );
    return createApiResponse(result);
  } catch (error) {
    return createApiResponse(null, 500, '获取收藏列表失败');
  }
});
