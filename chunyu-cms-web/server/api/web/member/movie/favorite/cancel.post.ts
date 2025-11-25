import { MemberFavoriteServices } from '~~/server/services/member/memberFavorite.services';

const memberFavoriteServices = new MemberFavoriteServices();

export default defineEventHandler(async event => {
  const body = await readBody<{
    movieBasicsId: number;
  }>(event);

  if (!body.movieBasicsId) {
    return createApiResponse(null, 400, '电影ID不能为空');
  }

  try {
    await memberFavoriteServices.delete(event.context.memberUser.memberUserId, body.movieBasicsId);
    return createApiResponse(null, 200, '取消收藏成功');
  } catch (error) {
    if (error instanceof Error) {
      if (error.message === '用户未收藏') {
        return createApiResponse(null, 400, '用户未收藏该电影');
      }
      if (error.message === '电影未找到') {
        return createApiResponse(null, 404, '电影未找到');
      }
    }
    return createApiResponse(null, 500, '取消收藏失败');
  }
});