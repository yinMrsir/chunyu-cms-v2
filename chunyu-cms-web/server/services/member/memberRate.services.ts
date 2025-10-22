import { and, eq } from 'drizzle-orm';
import { memberRateTable, NewMemberRate } from '~~/server/db/schema/member/rate';

export class MemberRateServices {
  // 通过memberUserId获取会员评分
  async getMemberRateByMemberUserId(memberUserId: number, movieBasicsId: number) {
    return await db.query.memberRateTable.findFirst({
      columns: {
        rate: true
      },
      where: and(eq(memberRateTable.memberUserId, memberUserId), eq(memberRateTable.movieBasicsId, movieBasicsId))
    });
  }

  // 创建会员评分
  async add(memberRate: NewMemberRate) {
    await db.insert(memberRateTable).values(memberRate);
  }
}
