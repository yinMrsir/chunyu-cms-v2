import { MoviePhotoServices } from '~~/server/services/movie/moviePhoto/moviePhoto.services';

const moviePhotoServices = new MoviePhotoServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await moviePhotoServices.add(body);
  return createApiResponse(null);
});
