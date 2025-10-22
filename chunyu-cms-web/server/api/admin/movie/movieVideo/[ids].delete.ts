import { MovieVideoServices } from '~~/server/services/movie/movieVideo/movieVideo.services';

const movieVideoServices = new MovieVideoServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await movieVideoServices.delete(ids.split(','));
  return createApiResponse(null);
});
