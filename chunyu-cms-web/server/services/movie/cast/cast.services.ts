import { and, eq, inArray, sql } from 'drizzle-orm';
import { Cast, castTable, NewCast } from '~~/server/db/schema/movie/cast';
import { queryParams } from '~~/server/db/query.helper';

export class CastServices {
  /* 新增 */
  async add(body: NewCast) {
    await db.insert(castTable).values(body);
  }

  /* 更新 */
  async update(body: Cast) {
    await db.update(castTable).set(body).where(eq(castTable.castId, body.castId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Cast & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.movieId) {
      whereList.push(eq(castTable.movieId, params.movieId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.castTable.findMany({
      extras: {
        id: sql`${castTable.castId}`.as('id')
      },
      with: {
        actor: {
          with: {
            country: true
          }
        },
        profession: true
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(castTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(ids: string[]) {
    await db.delete(castTable).where(
      inArray(
        castTable.castId,
        ids.map(id => Number(id))
      )
    );
  }
}
