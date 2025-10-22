import { MoviePhotoServices } from '~~/server/services/movie/moviePhoto/moviePhoto.services';

const moviePhotoServices = new MoviePhotoServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await moviePhotoServices.pageList(query);
  return createApiResponse(data);
});
