import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await movieBasicsServices.delete(ids.split(','));
  return createApiResponse(null);
});
