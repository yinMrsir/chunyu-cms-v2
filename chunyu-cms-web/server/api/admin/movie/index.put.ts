import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await movieBasicsServices.update(body);
  return createApiResponse(null);
});
