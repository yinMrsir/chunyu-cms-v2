import { MoviePhotoServices } from '~~/server/services/movie/moviePhoto/moviePhoto.services';

const moviePhotoServices = new MoviePhotoServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await moviePhotoServices.delete(ids.split(','));
  return createApiResponse(null);
});
