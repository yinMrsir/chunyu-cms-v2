export interface UserInfo {
  avatar: string;
  email: string;
  memberUserId: number;
  nickname: string;
}

export type CookieUserInfo = UserInfo | undefined;
