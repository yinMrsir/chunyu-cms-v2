import { MoviePhotoServices } from '~~/server/services/movie/moviePhoto/moviePhoto.services';

const moviePhotoServices = new MoviePhotoServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await moviePhotoServices.update(body);
  return createApiResponse(null);
});
