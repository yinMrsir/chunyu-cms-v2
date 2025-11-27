import { ApiResponse } from '~~/server/utils/apiResponse';
import type { Columns } from '~~/server/db/schema/basic/columns';
import type { MovieBasics } from '~~/server/db/schema/movie/movieBasics';
import type { Video } from '~~/server/db/schema/movie/movieVideo';
import type { MemberUser } from '~~/server/db/schema/member/memberUser';
import type { Comment } from '~~/server/db/schema/movie/comment';

type ColumnVo = Columns;

type Movie = Pick<MovieBasics, 'movieBasicsId' | 'title'> & { column: ColumnVo };

type Video = Pick<Video, 'title'>;

type MemberUser = Pick<MemberUser, 'nickname' | 'avatar'>;

export type WebMovieCommentListItem = Comment & { id: number } & {
  memberUser: MemberUser;
  video: Video;
  movie: Movie;
};

export type WebMovieCommentList = {
  rows: WebMovieCommentListItem[];
  total: number;
};

export type WebMovieCommentListRaw = ApiResponse<WebMovieCommentList>;
