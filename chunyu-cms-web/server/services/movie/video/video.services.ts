import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Video, videoTable, NewVideo } from '~~/server/db/schema/movie/video';
import { queryParams } from '~~/server/db/query.helper';
import { movieVideoTable } from '~~/server/db/schema/movie/movieVideo';
import { commentTable } from '~~/server/db/schema/movie/comment';

export class VideoServices {
  /* 新增 */
  async add(body: NewVideo) {
    await db.insert(videoTable).values(body);
  }

  /* 更新 */
  async update(body: Video) {
    await db.update(videoTable).set(body).where(eq(videoTable.videoId, body.videoId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Video & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.title || params?.keyword) {
      whereList.push(like(videoTable.title, `%${params.title || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.videoTable.findMany({
      extras: {
        id: sql`${videoTable.videoId}`.as('id'),
        movieCount: db.$count(movieVideoTable, sql`movie_video.video_id = ${videoTable.videoId}`).as('movieCount'),
        commentCount: db.$count(commentTable, sql`comment.video_id = ${videoTable.videoId}`).as('commentCount')
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(videoTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(videoTable).where(
      inArray(
        videoTable.videoId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }

  /* 通过videoId查询 */
  async getByVideoId(videoId: number) {
    return await db.query.videoTable.findFirst({
      where: eq(videoTable.videoId, Number(videoId))
    });
  }
}
