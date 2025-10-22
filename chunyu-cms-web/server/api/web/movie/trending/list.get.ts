import { MovieWeeklyVisitsServices } from '~~/server/services/movie/movieWeeklyVisits/movieWeeklyVisits.services';
import { MovieMonthVisitsServices } from '~~/server/services/movie/movieMonthVisits/movieMonthVisits.services';
import { MovieYearVisitsServices } from '~~/server/services/movie/movieYearVisits/movieYearVisits.services';

const movieWeeklyVisitsServices = new MovieWeeklyVisitsServices();
const movieMonthVisitsServices = new MovieMonthVisitsServices();
const movieYearVisitsServices = new MovieYearVisitsServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  switch (query.type) {
    case 'weekly':
      return await movieWeeklyVisitsServices.list(query);
    case 'month':
      return await movieMonthVisitsServices.list(query);
    case 'year':
      return await movieYearVisitsServices.list(query);
    default:
      return createError({ statusCode: 400, message: '参数错误' });
  }
});
