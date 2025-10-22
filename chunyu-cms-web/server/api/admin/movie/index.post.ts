import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';
import { MoviePvServices } from '~~/server/services/movie/moviePv/moviePv.services';
import { MovieRateServices } from '~~/server/services/movie/movieRate/movieRate.services';

const movieBasicsServices = new MovieBasicsServices();
const moviePvServices = new MoviePvServices();
const movieRateServices = new MovieRateServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.createBy = body.updateBy = event.context.user.userName;
  body.createTime = body.updateTime = new Date();
  const id = await movieBasicsServices.add(body);
  await moviePvServices.add({ movieBasicsId: id, pv: 0 });
  await movieRateServices.initMovieRate(id);
  return createApiResponse({ id });
});
