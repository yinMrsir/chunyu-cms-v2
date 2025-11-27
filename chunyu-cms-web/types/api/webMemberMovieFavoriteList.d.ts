import { ApiResponse } from '~~/server/utils/apiResponse';
import type { Actor } from '~~/server/db/schema/movie/actor';
import type { MovieBasics } from '~~/server/db/schema/movie/movieBasics';
import type { MemberFavorite } from '~~/server/db/schema/member/favorite';

type ActorVo = Pick<Actor, 'actorId' | 'name' | 'avatar'>;

type CastsVo = { actor: ActorVo };

type MovieBasicsVo = Pick<
  MovieBasics,
  'movieBasicsId' | 'title' | 'poster' | 'summary' | 'duration' | 'year' | 'languages' | 'status' | 'columnValue'
>;

type MovieVo = MovieBasicsVo & { casts: CastsVo[] };

type WebMemberMovieFavoriteListItem = Pick<MemberFavorite, 'createTime'> & { id: number } & {
  movie: MovieVo;
};

export type WebMemberMovieFavoriteList = {
  rows: webMemberMovieFavoriteListItem[];
  total: number;
};

export type WebMemberMovieFavoriteListRaw = ApiResponse<webMemberMovieFavoriteList>;
