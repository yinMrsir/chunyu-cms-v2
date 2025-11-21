import type { MovieWeeklyVisits } from '~~/server/db/schema/movie/movieWeeklyVisits';
import type { MovieMonthVisits } from '~~/server/db/schema/movie/movieMonthVisits';
import type { MovieYearVisits } from '~~/server/db/schema/movie/movieYearVisits';
import type { Actor } from '~~/server/db/schema/movie/actor';
import type { Cast } from '~~/server/db/schema/movie/cast';
import type { MovieBasics } from '~~/server/db/schema/movie/movieBasics';

type ActorVo = Actor;
type CastVo = Cast & { actor: ActorVo };
type MovieBasicsVo = MovieBasics & {
  casts: CastVo[];
};
type MovieWeeklyVisitsItemVo = MovieWeeklyVisits & { movie: MovieBasicsVo };
type MovieMonthVisitsItemVo = MovieMonthVisits & { movie: MovieBasicsVo };
type MovieYearVisitsItemVo = MovieYearVisits & { movie: MovieBasicsVo };
type MovieWeeklyVisitsVo = {
  rows: Array<MovieWeeklyVisitsItemVo>;
  total: number;
};
type MovieMonthVisitsVo = {
  rows: Array<MovieMonthVisitsItemVo>;
  total: number;
};
type MovieYearVisitsVo = {
  rows: Array<MovieYearVisitsItemVo>;
  total: number;
};

export type WebMovieTrendingListItem = MovieWeeklyVisitsItemVo | MovieMonthVisitsItemVo | MovieYearVisitsItemVo;
export type WebMovieTrendingList = MovieWeeklyVisitsVo | MovieMonthVisitsVo | MovieYearVisitsVo;
