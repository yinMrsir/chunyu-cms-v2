import { and, desc, eq, sql, inArray } from 'drizzle-orm';
import { commentTable, NewComment, Comment } from '~~/server/db/schema/movie/comment';
import { queryParams } from '~~/server/db/query.helper';
import type { WebMovieCommentList } from '~~/types/api/webMovieCommentList';

export class CommentServices {
  /* 新增  */
  async add(comment: NewComment) {
    const [{ commentId }] = await db.insert(commentTable).values(comment).$returningId();
    return commentId;
  }

  /* 分页查询 */
  async pageList(params?: Partial<Comment & { keyword: string } & queryParams>): Promise<WebMovieCommentList> {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.isDm) {
      whereList.push(eq(commentTable.isDm, params.isDm));
    }
    if (params?.videoId) {
      whereList.push(eq(commentTable.videoId, params.videoId));
    }
    if (params?.memberUserId) {
      whereList.push(eq(commentTable.memberUserId, params.memberUserId));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.commentTable.findMany({
      extras: {
        id: sql`${commentTable.commentId}`.as('id')
      },
      with: {
        memberUser: {
          columns: {
            nickname: true,
            avatar: true
          }
        },
        video: {
          columns: {
            title: true
          }
        },
        movie: {
          columns: {
            movieBasicsId: true,
            title: true
          },
          with: {
            column: true
          }
        }
      },
      where,
      offset,
      limit: Number(limit),
      orderBy: [desc(commentTable.commentId)]
    });
    const totalQuery = db.$count(commentTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 查询所有弹幕 */
  async getAllDm(videoId: number) {
    const rows = await db.query.commentTable.findMany({
      where: and(eq(commentTable.videoId, videoId), eq(commentTable.isDm, '1'))
    });
    return rows.map((item: Comment) => {
      return {
        id: item.commentId,
        duration: 15000,
        start: item.start,
        txt: item.content
      };
    });
  }

  /* 删除 */
  async delete(commentIds: string[]) {
    await db.delete(commentTable).where(
      inArray(
        commentTable.commentId,
        commentIds.map(item => Number(item))
      )
    );
  }
}
