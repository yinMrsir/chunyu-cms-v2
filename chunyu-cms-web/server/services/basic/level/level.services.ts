import { eq, inArray, sql } from 'drizzle-orm';
import { Level, levelTable, NewLevel } from '~~/server/db/schema/basic/level';
import { queryParams } from '~~/server/db/query.helper';

export class LevelServices {
  /* 新增 */
  async add(body: NewLevel) {
    await db.insert(levelTable).values(body);
  }

  /* 更新 */
  async update(body: Level) {
    await db.update(levelTable).set(body).where(eq(levelTable.levelId, body.levelId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Level & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const rowsQuery = db.query.levelTable.findMany({
      extras: {
        id: sql`${levelTable.levelId}`.as('id')
      },
      with: {
        country: true
      },
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(levelTable);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(levelTable).where(
      inArray(
        levelTable.levelId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}
