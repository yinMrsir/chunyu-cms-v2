import { and, asc, eq, inArray, sql } from 'drizzle-orm';
import { MovieVideo, movieVideoTable, NewMovieVideo } from '~~/server/db/schema/movie/movieVideo';
import { queryParams } from '~~/server/db/query.helper';

export class MovieVideoServices {
  /* 新增 */
  async add(body: NewMovieVideo) {
    await db.insert(movieVideoTable).values(body);
  }

  /* 更新 */
  async update(body: MovieVideo) {
    await db.update(movieVideoTable).set(body).where(eq(movieVideoTable.movieVideoId, body.movieVideoId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<MovieVideo & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.movieId) {
      whereList.push(eq(movieVideoTable.movieId, params.movieId));
    }
    if (params?.typeId) {
      whereList.push(eq(movieVideoTable.typeId, params.typeId));
    }
    if (params?.status) {
      whereList.push(eq(movieVideoTable.status, params.status));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.movieVideoTable.findMany({
      extras: {
        id: sql`${movieVideoTable.movieVideoId}`.as('id')
      },
      with: {
        video: true
      },
      where,
      offset,
      orderBy: [asc(movieVideoTable.sort), asc(movieVideoTable.movieVideoId)],
      limit: Number(limit)
    });
    const totalQuery = db.$count(movieVideoTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(ids: string[]) {
    await db.delete(movieVideoTable).where(
      inArray(
        movieVideoTable.movieVideoId,
        ids.map(id => Number(id))
      )
    );
  }
}
