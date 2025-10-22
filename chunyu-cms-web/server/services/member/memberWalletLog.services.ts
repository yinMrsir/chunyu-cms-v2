import { and, desc, eq, sql } from 'drizzle-orm';
import { MemberWalletLog, memberWalletLogTable, NewMemberWalletLog } from '~~/server/db/schema/member/walletLog';
import { queryParams } from '~~/server/db/query.helper';

export class MemberWalletLogServices {
  async add(memberWalletLog: NewMemberWalletLog) {
    await db.insert(memberWalletLogTable).values(memberWalletLog);
  }

  async list(params?: Partial<MemberWalletLog & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (memberUserId) {
      whereList.push(eq(memberWalletLogTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.memberWalletLogTable.findMany({
      extras: {
        id: sql`${memberWalletLogTable.memberWalletLogId}`.as('id')
      },
      where,
      offset,
      limit: Number(limit),
      orderBy: [desc(memberWalletLogTable.memberWalletLogId)]
    });
    const totalQuery = db.$count(memberWalletLogTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}
