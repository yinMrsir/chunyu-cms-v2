import { MemberFavoriteServices } from '~~/server/services/member/memberFavorite.services';

const memberFavoriteServices = new MemberFavoriteServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const movieBasicsId = Number(query.movieBasicsId);

  if (!movieBasicsId) {
    return createApiResponse(null, 400, '电影ID不能为空');
  }

  try {
    const isFavorited = await memberFavoriteServices.checkFavoriteStatus(
      event.context.memberUser.memberUserId,
      movieBasicsId
    );
    return createApiResponse({ isFavorited });
  } catch (error) {
    return createApiResponse(null, 500, '获取收藏状态失败');
  }
});
