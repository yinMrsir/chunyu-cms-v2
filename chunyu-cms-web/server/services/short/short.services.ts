import { and, eq, like, sql } from 'drizzle-orm';
import { NewShort, Short, shortTable } from '~/server/db/schema/shorts/short';
import { queryParams } from '~/server/db/query.helper';

export class ShortServices {
  async add(short: NewShort) {
    await db.insert(shortTable).values(short);
  }

  /* 分页查询 */
  async pageList(params?: Partial<Short & { keyword: string } & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.description || params?.keyword) {
      whereList.push(like(shortTable.description, `%${params.description || params.keyword}%`));
    }
    if (memberUserId) {
      whereList.push(eq(shortTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.shortTable.findMany({
      extras: {
        id: sql`${shortTable.shortId}`.as('id')
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(shortTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}
