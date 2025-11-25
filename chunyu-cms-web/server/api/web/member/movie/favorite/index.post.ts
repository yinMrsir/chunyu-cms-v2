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
    await memberFavoriteServices.add({
      movieBasicsId: body.movieBasicsId,
      memberUserId: event.context.memberUser.memberUserId
    });
    return createApiResponse(null, 200, '收藏成功');
  } catch (error) {
    console.log(error);

    if (error instanceof Error) {
      if (error.message === '已经收藏过了') {
        return createApiResponse(null, 400, '已经收藏过了');
      }
      if (error.message === '电影未找到') {
        return createApiResponse(null, 404, '电影未找到');
      }
    }
    return createApiResponse(null, 500, '收藏失败');
  }
});
