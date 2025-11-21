import { ApiResponse } from '~~/server/utils/apiResponse';
import type { MemberUser } from '~~/server/db/schema/member/user';

type MemberUserVo = Pick<
  MemberUser,
  | 'memberUserId'
  | 'email'
  | 'nickname'
  | 'phonenumber'
  | 'avatar'
  | 'sex'
  | 'birthday'
  | 'introduction'
  | 'loginIp'
  | 'loginDate'
>;

export type WebMemberUser = ApiResponse<MemberUserVo>;
