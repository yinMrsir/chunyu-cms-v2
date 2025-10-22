import { MoviePvServices } from '~~/server/services/movie/moviePv/moviePv.services';
import { MovieBasicsServices } from '~~/server/services/movie/movieBasics/movieBasics.services';

const moviePvServices = new MoviePvServices();
const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const [movie, moviePv] = await Promise.all([
    movieBasicsServices.findById(body.movieBasicsId),
    moviePvServices.findByMovieBasicsId(body.movieBasicsId)
  ]);
  if (!movie) {
    return 'movie not found';
  }
  let pv = moviePv?.pv || 1;
  if (moviePv) {
    pv++;
    await moviePvServices.update(moviePv.moviePvId, pv);
  } else {
    await moviePvServices.add({
      movieBasicsId: body.movieBasicsId,
      pv
    });
  }
  return 'success';
});
