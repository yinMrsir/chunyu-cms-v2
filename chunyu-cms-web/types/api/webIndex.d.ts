import type { Columns } from '~~/server/db/schema/basic/columns';
import type { Genre } from '~~/server/db/schema/basic/genre';
import type { Cast } from '~~/server/db/schema/movie/cast';
import type { MovieBasics } from '~~/server/db/schema/movie/movieBasics';
import type { MovieRate } from '~~/server/db/schema/movie/rate';
import type { Actor } from '~~/server/db/schema/movie/actor';

type casts = Cast & {
  actor: Actor;
};
type movieBasics = MovieBasics & {
  casts: casts[];
  movieRate: MovieRate;
};
export type WebIndexListItem = Columns & {
  id: number;
  genre: Genre[];
  movies: movieBasics[];
};
export type WebIndexList = WebIndexListItem[];
