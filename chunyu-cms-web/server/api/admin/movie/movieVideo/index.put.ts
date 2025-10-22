import { MovieVideoServices } from '~~/server/services/movie/movieVideo/movieVideo.services';

const movieVideoServices = new MovieVideoServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await movieVideoServices.update(body);
  return createApiResponse(null);
});
