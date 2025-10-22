import { MovieLevelServices } from '~~/server/services/movie/movieLevel/movieLevel.services';

const movieLevelServices = new MovieLevelServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await movieLevelServices.update(body);
  return createApiResponse(null);
});
