import { MovieBasicsServices } from '~/server/services/movie/movieBasics/movieBasics.services';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const id = getRouterParam(event, 'id');
  return await movieBasicsServices.findById(Number(id));
});
