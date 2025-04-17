import { MoviePvServices } from '~/server/services/movie/moviePv/moviePv.services';

const moviePvServices = new MoviePvServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const moviePv = await moviePvServices.findByMovieBasicsId(body.movieBasicsId);
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
