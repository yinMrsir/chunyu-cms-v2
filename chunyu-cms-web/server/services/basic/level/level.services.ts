import { eq, inArray, sql } from 'drizzle-orm';
import { MovieLevel, movieLevelTable, NewMovieLevel } from '~/server/db/schema/basic/movieLevel';
import { queryParams } from '~/server/db/query.helper';

export class LevelServices {
  /* 新增 */
  async add(body: NewMovieLevel) {
    await db.insert(movieLevelTable).values(body);
  }

  /* 更新 */
  async update(body: MovieLevel) {
    await db.update(movieLevelTable).set(body).where(eq(movieLevelTable.movieLevelId, body.movieLevelId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<MovieLevel & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const rowsQuery = db.query.movieLevelTable.findMany({
      extras: {
        id: sql`${movieLevelTable.movieLevelId}`.as('id')
      },
      with: {
        country: true
      },
      offset,
      limit
    });
    const totalQuery = db.$count(movieLevelTable);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(movieLevelTable).where(
      inArray(
        movieLevelTable.movieLevelId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}
