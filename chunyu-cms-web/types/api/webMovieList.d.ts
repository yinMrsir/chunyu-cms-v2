import type { MovieBasicsVo } from '~~/server/services/movie/moviePv/moviePv.services';

export type WebMovieListItem = MovieBasicsVo;

export interface WebMovieList {
  rows: WebMovieListItem[];
  total: number;
}
