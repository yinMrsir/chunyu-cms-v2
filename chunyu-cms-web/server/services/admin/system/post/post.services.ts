import { and, between, eq, inArray, like } from 'drizzle-orm';
import dayjs from 'dayjs';
import { queryParams } from '~~/server/db/query.helper';
import { NewPost, Post, postTable } from '~~/server/db/schema/system/post';

export class PostServices {
  /* 新增岗位 */
  async add(post: NewPost) {
    try {
      await db.insert(postTable).values(post);
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 编辑岗位 */
  async update(post: Post) {
    try {
      await db.update(postTable).set(post).where(eq(postTable.postId, post.postId));
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 分页查询岗位 */
  async list(params: Partial<Post & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [];
    if (params.postName) {
      whereList.push(like(postTable.postName, `%${params.postName}%`));
    }
    if (params.postCode) {
      whereList.push(like(postTable.postCode, `%${params.postCode}%`));
    }
    if (params.status) {
      whereList.push(eq(postTable.status, params.status));
    }
    if (params['params[beginTime]'] && params['params[endTime]']) {
      whereList.push(
        between(
          postTable.createTime,
          new Date(params['params[beginTime]']),
          new Date(dayjs(params['params[endTime]']).add(1, 'day').format())
        )
      );
    }
    const where = and(...whereList);

    const [rows, total] = await Promise.all([
      db.query.postTable.findMany({
        where,
        limit,
        offset
      }),
      db.$count(postTable, where)
    ]);

    return { rows, total };
  }

  /* 查询所有岗位 */
  findAll() {
    return db.query.postTable.findMany();
  }

  /* 通过id数组删除 */
  async delete(postIdArr: string[]) {
    await db.delete(postTable).where(
      inArray(
        postTable.postId,
        postIdArr.map(item => Number(item))
      )
    );
  }

  /* 通过id查询 */
  async findById(postId: number): Promise<Post | undefined> {
    return await db.query.postTable.findFirst({
      where: eq(postTable.postId, postId)
    });
  }
}
