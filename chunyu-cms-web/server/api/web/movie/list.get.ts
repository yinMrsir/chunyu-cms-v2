import { MovieBasicsServices } from '~/server/services/movie/movieBasics/movieBasics.services';
import { MoviePvServices } from '~/server/services/movie/moviePv/moviePv.services';

const movieBasicsServices = new MovieBasicsServices();
const moviePvServices = new MoviePvServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (!query.orderBy || query.orderBy === 'createTime') {
    return await movieBasicsServices.pageList(query);
  }
  if (query.orderBy === 'pv') {
    const { rows, total } = await moviePvServices.byPvDescPage(query);
    return {
      rows: rows.map(item => item.movieBasic),
      total
    };
  }
  return [];
});
