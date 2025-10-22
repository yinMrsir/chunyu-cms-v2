import { CommentServices } from '~~/server/services/movie/comment/comment.services';

const commentServices = new CommentServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    return createError({
      statusCode: 400,
      message: '参数错误'
    });
  }
  await commentServices.delete(ids.split(','));
  return createApiResponse(null);
});
