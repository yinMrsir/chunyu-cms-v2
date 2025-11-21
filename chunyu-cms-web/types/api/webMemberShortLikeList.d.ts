import { ApiResponse } from '~~/server/utils/apiResponse';
import type { MemberLike } from '~~/server/db/schema/member/like';
import type { Short } from '~~/server/db/schema/shorts/short';

type ShortVo = Pick<Short, 'shortId' | 'videoUrl' | 'poster'>;

export type WebMemberShortLikeListItem = ShortVo;
export type WebMemberShortLikeList = ApiResponse<{
  rows: ShortVo[];
  total: number;
}>;
