import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const { id } = getQuery(event);
  const data = await movieBasicsServices.findById(Number(id));
  return createApiResponse(data);
});
