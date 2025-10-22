import { MovieVideoServices } from '~~/server/services/movie/movieVideo/movieVideo.services';

const movieVideoServices = new MovieVideoServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await movieVideoServices.pageList(query);
  return createApiResponse(data);
});
