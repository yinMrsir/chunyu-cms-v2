import { and, eq, inArray, sql } from 'drizzle-orm';
import { MovieLevel, movieLevelTable, NewMovieLevel } from '~~/server/db/schema/movie/movieLevel';
import { queryParams } from '~~/server/db/query.helper';
export class MovieLevelServices {
  /* 新增 */
  async add(body: NewMovieLevel) {
    await db.insert(movieLevelTable).values(body);
  }

  /* 更新 */
  async update(body: MovieLevel & { id: number }) {
    await db.update(movieLevelTable).set(body).where(eq(movieLevelTable.movieLevelId, body.id));
  }

  /* 分页查询 */
  async pageList(params?: Partial<MovieLevel & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.movieId) {
      whereList.push(eq(movieLevelTable.movieId, params.movieId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieLevelTable.findMany({
      extras: {
        id: sql`${movieLevelTable.movieLevelId}`.as('id')
      },
      with: {
        level: {
          columns: {
            levelId: true,
            level: true,
            levelZh: true,
            description: true
          },
          with: {
            country: {
              columns: {
                countryId: true,
                name: true
              }
            }
          }
        }
      },
      where,
      offset,
      limit: Number(limit)
    });

    const totalQuery = db.$count(movieLevelTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(ids: string[]) {
    await db.delete(movieLevelTable).where(
      inArray(
        movieLevelTable.movieLevelId,
        ids.map(id => Number(id))
      )
    );
  }
}
