import { MovieLevelServices } from '~~/server/services/movie/movieLevel/movieLevel.services';

const movieLevelServices = new MovieLevelServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await movieLevelServices.delete(ids.split(','));
  return createApiResponse(null);
});
