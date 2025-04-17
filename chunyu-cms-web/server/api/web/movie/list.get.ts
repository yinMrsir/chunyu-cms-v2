import { MovieBasicsServices } from '~/server/services/movie/movieBasics/movieBasics.services';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (!query.orderBy || query.orderBy === 'createTime') {
    return (await movieBasicsServices.pageList(query)).rows;
  }
  return [];
});
