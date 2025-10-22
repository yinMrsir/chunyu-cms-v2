import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await movieBasicsServices.pageList(query);
  return createApiResponse(data);
});
