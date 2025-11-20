import type { Comment } from '~~/server/db/schema/movie/comment';
import type { MemberUser } from '~~/server/db/schema/member/user';
import type { Video } from '~~/server/db/schema/movie/movieVideo';

export type WebMovieCommentListItem = Comment & { memberUser: Pick<MemberUser, 'nickname' | 'avatar'> } & {
  video: Pick<Video, 'title'>;
};

export interface WebMovieCommentList {
  rows: WebMovieCommentListItem[];
  total: number;
}
