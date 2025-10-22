import { and, eq, inArray, sql } from 'drizzle-orm';
import { PubDate, pubDateTable, NewPubDate } from '~~/server/db/schema/movie/pubDate';
import { queryParams } from '~~/server/db/query.helper';

export class PubDateServices {
  /* 新增 */
  async add(body: NewPubDate) {
    await db.insert(pubDateTable).values(body);
  }

  /* 更新 */
  async update(body: PubDate) {
    await db.update(pubDateTable).set(body).where(eq(pubDateTable.pubDateId, body.pubDateId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<PubDate & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.movieId) {
      whereList.push(eq(pubDateTable.movieId, params.movieId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.pubDateTable.findMany({
      extras: {
        id: sql`${pubDateTable.pubDateId}`.as('id')
      },
      with: {
        country: true
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(pubDateTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(ids: string[]) {
    await db.delete(pubDateTable).where(
      inArray(
        pubDateTable.pubDateId,
        ids.map(id => Number(id))
      )
    );
  }
}
