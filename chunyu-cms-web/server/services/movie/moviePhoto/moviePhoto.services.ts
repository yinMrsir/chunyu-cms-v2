import { and, eq, inArray, sql } from 'drizzle-orm';
import { MoviePhoto, moviePhotoTable, NewMoviePhoto } from '~~/server/db/schema/movie/moviePhoto';
import { queryParams } from '~~/server/db/query.helper';

export class MoviePhotoServices {
  /* 新增 */
  async add(body: NewMoviePhoto) {
    await db.insert(moviePhotoTable).values(body);
  }

  /* 更新 */
  async update(body: MoviePhoto) {
    await db.update(moviePhotoTable).set(body).where(eq(moviePhotoTable.moviePhotoId, body.moviePhotoId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<MoviePhoto & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.movieId) {
      whereList.push(eq(moviePhotoTable.movieId, params.movieId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.moviePhotoTable.findMany({
      extras: {
        id: sql`${moviePhotoTable.moviePhotoId}`.as('id')
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(moviePhotoTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(ids: string[]) {
    await db.delete(moviePhotoTable).where(
      inArray(
        moviePhotoTable.moviePhotoId,
        ids.map(id => Number(id))
      )
    );
  }
}
