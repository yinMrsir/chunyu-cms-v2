import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Genre, genreTable, NewGenre } from '~~/server/db/schema/basic/genre';
import { queryParams } from '~~/server/db/query.helper';
import { movieBasicToGenreTable } from '~~/server/db/schema/movie/movieBasicToGenre';

export class GenreServices {
  /* 新增 */
  async add(body: NewGenre) {
    await db.insert(genreTable).values(body);
  }

  /* 更新 */
  async update(body: Genre) {
    await db.update(genreTable).set(body).where(eq(genreTable.genreId, body.genreId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Genre & { keyword: string } & queryParams>, withParams = {}) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(genreTable.name, `%${params.name || params.keyword}%`));
    }
    if (params?.columnValue) {
      whereList.push(eq(genreTable.columnValue, params.columnValue));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.genreTable.findMany({
      extras: {
        id: sql`${genreTable.genreId}`.as('id'),
        movieCount: db
          .$count(movieBasicToGenreTable, sql`movie_basic_to_genre.genre_id = ${genreTable.genreId}`)
          .as('movieCount')
      },
      with: withParams,
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(genreTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  async allList(params?: Partial<Genre & { keyword: string }>) {
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(genreTable.name, `%${params.name || params.keyword}%`));
    }
    if (params?.columnValue) {
      whereList.push(eq(genreTable.columnValue, params.columnValue));
    }
    if (params?.status) {
      whereList.push(eq(genreTable.status, params.status));
    }
    const where = and(...whereList);

    return await db.query.genreTable.findMany({
      extras: {
        id: sql`${genreTable.genreId}`.as('id')
      },
      where
    });
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(genreTable).where(
      inArray(
        genreTable.genreId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}
