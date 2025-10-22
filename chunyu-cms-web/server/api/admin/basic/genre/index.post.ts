import { GenreServices } from '~~/server/services/basic/genre/genre.services';

const genreServices = new GenreServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await genreServices.add(body);
  return createApiResponse(null);
});
