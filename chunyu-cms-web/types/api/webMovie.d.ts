import type { MovieBasics } from '~~/server/db/schema/movie/movieBasics';
import type { MoviePv } from '~~/server/db/schema/movie/moviePv';
import type { Cast } from '~~/server/db/schema/movie/cast';
import type { Actor } from '~~/server/db/schema/movie/actor';
import type { Profession } from '~~/server/db/schema/movie/profession';
import type { MovieRate } from '~~/server/db/schema/movie/movieRate';
import type { Country } from '~~/server/db/schema/basic/country';
import type { Genre } from '~~/server/db/schema/basic/genre';
import type { MovieVideo } from '~~/server/db/schema/movie/movieVideo';
import type { Video } from '~~/server/db/schema/movie/video';
import type { MovieBasicToCountry } from '~~/server/db/schema/movie/movieBasicToCountry';

type MovieRateVo = Pick<MovieRate, 'rate'>;

type movieBasicToCountryVo = MovieBasicToCountry & { country: Country };

type MovieVideoVo = MovieVideo & { video: Pick<Video, 'videoId' | 'title' | 'poster'> };

type CastVo = Pick<Cast, 'castId' | 'role'> & { actor: Pick<Actor, 'name' | 'actorId' | 'avatar'> } & {
  profession: Pick<Profession, 'professionId' | 'name'>;
};

export type WebMovie = MovieBasics & { favoritesCount: number } & { pv: MoviePv } & { movieRate: MovieRateVo } & {
  movieBasicToCountry: movieBasicToCountryVo[];
} & { genres: Pick<Genre, 'genreId' | 'name'>[] } & { movieVideo: MovieVideoVo[] } & {
  casts: CastVo[];
};
