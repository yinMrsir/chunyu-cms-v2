import { GenreServices } from '~~/server/services/basic/genre/genre.services';

const genreServices = new GenreServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await genreServices.update(body);
  return createApiResponse(null);
});
