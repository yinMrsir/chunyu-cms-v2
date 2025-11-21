import type { MemberUser } from '~~/server/db/schema/member/user';
import type { Short } from '~~/server/db/schema/short/short';

export type MemberUserVo = Pick<MemberUser, 'memberUserId' | 'nickname' | 'avatar'>;

export type WebMemberShortList = Short & { id: number } & {
  memberUser: MemberUserVo;
};
