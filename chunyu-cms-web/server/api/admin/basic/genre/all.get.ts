import { GenreServices } from '~~/server/services/basic/genre/genre.services';

const genreServices = new GenreServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await genreServices.allList(query);
  return createApiResponse(data);
});
