import { MovieBasicsServices } from '~/server/services/movie/movieBasics/movieBasics.services';
import { MoviePvServices } from '~/server/services/movie/moviePv/moviePv.services';

const movieBasicsServices = new MovieBasicsServices();
const moviePvServices = new MoviePvServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.createBy = body.updateBy = event.context.user.userName;
  body.createTime = body.updateTime = new Date();
  const id = await movieBasicsServices.add(body);
  await moviePvServices.add({ movieBasicsId: id, pv: 0 });
  return createApiResponse({ id });
});
