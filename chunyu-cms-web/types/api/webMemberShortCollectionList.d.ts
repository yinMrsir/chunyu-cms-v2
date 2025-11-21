import { ApiResponse } from '~~/server/utils/apiResponse';
import type { Short } from '~~/server/db/schema/shorts/short';
import type { MemberCollection } from '~~/server/db/schema/member/collection';
import type { MemberUser } from '~~/server/db/schema/member/user';

type MemberUserVo = Pick<MemberUser, 'memberUserId' | 'nickname' | 'avatar'>;
type ShortVo = Pick<
  Short,
  'shortId' | 'videoUrl' | 'poster' | 'description' | 'duration' | 'playCount' | 'likes' | 'comments' | 'collection'
> & {
  memberUser: MemberUserVo;
};

export type WebMemberShortCollectionListItem = ShortVo;
export type webMemberShortCollectionList = ApiResponse<{
  rows: WebMemberShortCollectionListItem[];
  total: number;
}>;
