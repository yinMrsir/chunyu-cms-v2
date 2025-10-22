import { and, desc, eq, like, sql } from 'drizzle-orm';
import { NewShort, Short, shortTable } from '~~/server/db/schema/shorts/short';
import { queryParams } from '~~/server/db/query.helper';

export class ShortServices {
  async add(short: NewShort) {
    await db.insert(shortTable).values(short);
  }

  async editStatus(body: { shortId: number; status: string; remark: string }) {
    await db
      .update(shortTable)
      .set({
        status: body.status,
        remark: body.remark
      })
      .where(eq(shortTable.shortId, body.shortId));
  }

  /* 通过shortId查询 */
  async getById(shortId: number) {
    return await db.query.shortTable.findFirst({
      with: {
        memberUser: {
          columns: {
            memberUserId: true,
            nickname: true,
            avatar: true
          }
        }
      },
      where: eq(shortTable.shortId, shortId)
    });
  }

  /* 分页查询 */
  async pageList(params?: Partial<Short & { keyword: string } & queryParams>, memberUserId?: number) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.description || params?.keyword) {
      whereList.push(like(shortTable.description, `%${params.description || params.keyword}%`));
    }
    if (params?.status) {
      whereList.push(eq(shortTable.status, params.status));
    }
    if (memberUserId) {
      whereList.push(eq(shortTable.memberUserId, memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.shortTable.findMany({
      extras: {
        id: sql`${shortTable.shortId}`.as('id')
      },
      with: {
        memberUser: {
          columns: {
            memberUserId: true,
            nickname: true,
            avatar: true
          }
        }
      },
      where,
      offset,
      limit: Number(limit),
      orderBy: [desc(shortTable.shortId)]
    });
    const totalQuery = db.$count(shortTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }
}
