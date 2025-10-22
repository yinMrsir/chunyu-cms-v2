import { MovieLevelServices } from '~~/server/services/movie/movieLevel/movieLevel.services';

const movieLevelServices = new MovieLevelServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await movieLevelServices.add(body);
  return createApiResponse(null);
});
