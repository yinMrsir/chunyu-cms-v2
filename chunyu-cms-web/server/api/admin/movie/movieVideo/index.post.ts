import { MovieVideoServices } from '~~/server/services/movie/movieVideo/movieVideo.services';

const movieVideoServices = new MovieVideoServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await movieVideoServices.add(body);
  return createApiResponse(null);
});
