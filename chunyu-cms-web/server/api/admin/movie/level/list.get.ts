import { MovieLevelServices } from '~~/server/services/movie/movieLevel/movieLevel.services';

const movieLevelServices = new MovieLevelServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await movieLevelServices.pageList(query);
  return createApiResponse(data);
});
