import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';
import { MoviePvServices } from '~~/server/services/movie/moviePv/moviePv.services';
import { MovieRateServices } from '~~/server/services/movie/movieRate/movieRate.services';

const movieBasicsServices = new MovieBasicsServices();
const moviePvServices = new MoviePvServices();
const movieRateServices = new MovieRateServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (!query.orderBy || query.orderBy === 'createTime') {
    return await movieBasicsServices.pageList(query, query?.notId ? Number(query.notId) : undefined);
  }
  if (query.orderBy === 'pv') {
    const { rows, total } = await moviePvServices.byPvDescPage(query, query?.notId ? Number(query.notId) : undefined);
    return {
      rows: rows.map(item => item.movieBasic),
      total
    };
  }
  if (query.orderBy === 'rate') {
    const { rows, total } = await movieRateServices.byRateDescPage(
      query,
      query?.notId ? Number(query.notId) : undefined
    );
    return {
      rows: rows.map(item => item.movieBasic),
      total
    };
  }
  return {
    rows: [],
    total: 0
  };
});
