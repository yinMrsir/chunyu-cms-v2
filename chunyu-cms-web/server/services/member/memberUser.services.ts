import { eq } from 'drizzle-orm';
import { MemberUser, memberUserTable, NewMemberUser } from '~/server/db/schema/member/user';

export class MemberUserServices {
  // 通过邮箱查询用户
  async getUserByEmail(email: string): Promise<MemberUser | undefined> {
    return await db.query.memberUserTable.findFirst({
      where: eq(memberUserTable.email, email)
    });
  }

  // 创建用户
  async createUser(user: NewMemberUser): Promise<Number> {
    const [{ memberUserId }] = await db.insert(memberUserTable).values(user).$returningId();
    return memberUserId;
  }
}
