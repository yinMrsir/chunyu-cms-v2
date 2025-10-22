import { and, asc, eq, like, sql, inArray } from 'drizzle-orm';
import { VideoResource, videoResourceTable, NewVideoResource } from '~~/server/db/schema/movie/videoResource';

export class VideoResourceServices {
  /* 新增单个 */
  async add(body: NewVideoResource) {
    try {
      const [inserted] = await db.insert(videoResourceTable).values(body).$returningId();
      return inserted.resourceId;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 批量新增 */
  async batchAdd(body: NewVideoResource[]) {
    try {
      const results = await db.insert(videoResourceTable).values(body).$returningId();
      return results.map(item => item.resourceId);
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 分页查询 */
  async pageList(query: any = {}) {
    try {
      const { pageNum = 1, limit = 10, title, resources, movieId } = query || {};
      const offset = (pageNum - 1) * limit;

      const whereConditions = [];

      if (movieId) {
        whereConditions.push(eq(videoResourceTable.movieId, Number(movieId)));
      }

      if (title) {
        whereConditions.push(like(videoResourceTable.title, `%${title}%`));
      }

      if (resources) {
        whereConditions.push(eq(videoResourceTable.resources, resources));
      }

      const where = whereConditions.length > 0 ? and(...whereConditions) : undefined;

      const rowsQuery = db.query.videoResourceTable.findMany({
        extras: {
          id: sql`${videoResourceTable.resourceId}`.as('id')
        },
        where,
        offset,
        limit: Number(limit)
      });
      const totalQuery = db.$count(videoResourceTable, where);
      const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
      return {
        rows,
        total
      };
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 查询所有 */
  async list(query: any = {}) {
    try {
      const { title, resources, movieId } = query;

      const whereConditions = [];

      if (movieId) {
        whereConditions.push(eq(videoResourceTable.movieId, Number(movieId)));
      }

      if (title) {
        whereConditions.push(like(videoResourceTable.title, `%${title}%`));
      }

      if (resources) {
        whereConditions.push(eq(videoResourceTable.resources, resources));
      }

      const where = whereConditions.length > 0 ? and(...whereConditions) : undefined;

      const data = await db.select().from(videoResourceTable).where(where).orderBy(asc(videoResourceTable.resourceId));

      return data;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 根据ID查询 */
  async getById(id: number) {
    try {
      const [data] = await db.select().from(videoResourceTable).where(eq(videoResourceTable.resourceId, id));
      return data;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 更新 */
  async update(body: VideoResource) {
    try {
      await db.update(videoResourceTable).set(body).where(eq(videoResourceTable.resourceId, body.resourceId));
      return true;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }

  /* 删除 */
  async delete(ids: number[]) {
    try {
      await db.delete(videoResourceTable).where(inArray(videoResourceTable.resourceId, ids));
      return true;
    } catch (error: any) {
      throw createError({ statusCode: 400, message: error.message });
    }
  }
}
