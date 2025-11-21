import { Genre } from '~~/server/db/schema/basic/genre';
import { MovieBasicToGenre } from '~~/server/db/schema/movie/movieBasicToGenre';
import { MovieBasics } from '~~/server/db/schema/movie/movieBasic';
import { Actor } from '~~/server/db/schema/movie/actor';
import { Casts } from '~~/server/db/schema/movie/casts';
import { MovieRate } from '~~/server/db/schema/movie/movieRate';

type ActorVo = Pick<Actor, 'actorId' | 'name'>;
type CastsVo = Pick<Casts> & { actor: ActorVo };
type MovieRateVo = MovieRate;
type MovieBasicsVo = Pick<MovieBasics, 'movieBasicsId' | 'title' | 'poster' | 'isPay'> & { movieRate: MovieRateVo } & {
  casts: CastsVo[];
};

export type MovieBasicToGenreVo = MovieBasicToGenre & { movieBasics: MovieBasicsVo };
export type WebColumnGenreItem = Genre & { id: number } & { movies: MovieBasicToGenreVo[] };

export type WebColumnGenre = WebColumnGenreItem[];
