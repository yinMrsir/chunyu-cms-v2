import type { MemberUser } from '~~/server/db/schema/member/user';
import type { Short } from '~~/server/db/schema/shorts/short';

export type MemberUserVo = Pick<MemberUser, 'memberUserId' | 'nickname' | 'avatar'>;

export type WebMemberShortListItem = Short & { id: number } & {
  memberUser: MemberUserVo;
};

export interface WebMemberShortList {
  rows: WebMemberShortListItem[];
  total: number;
}
