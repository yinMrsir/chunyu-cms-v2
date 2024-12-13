import { and, eq, like } from 'drizzle-orm';
import { newsContent, newsInfo } from '~/server/db/schema/news';

type tNewsInfo = typeof newsInfo.$inferInsert;
type tNewsContent = typeof newsContent.$inferInsert;

type queryParams = Partial<Pick<tNewsInfo, 'title' | 'date'> & { page: number; limit: number }>;
type NewsInfoData = Omit<tNewsInfo, 'id'> & Pick<tNewsContent, 'content'>;

export class NewsServices {
  async create(newsInfoData: NewsInfoData) {
    try {
      await db.transaction(async tx => {
        const [insertedNewsInfo] = await tx.insert(newsInfo).values(newsInfoData).$returningId();

        const newsContentData = {
          newsId: insertedNewsInfo.id,
          content: newsInfoData.content
        };

        await tx.insert(newsContent).values(newsContentData);
      });
    } catch (error) {
      return Promise.reject(error);
    }
  }

  async queryAll(params?: queryParams) {
    const { date, title, page = 1, limit = 10 } = params || {};
    try {
      const conditions = [];
      if (title) {
        const likeTitle = `%${title}%`;
        conditions.push(like(newsInfo.title, likeTitle));
      }
      if (date) {
        conditions.push(eq(newsInfo.date, date));
      }

      const offset = (page - 1) * limit;

      const query = db
        .select({
          id: newsInfo.id,
          title: newsInfo.title,
          date: newsInfo.date,
          content: newsContent.content
        })
        .from(newsInfo)
        .leftJoin(newsContent, eq(newsInfo.id, newsContent.newsId));

      if (conditions.length > 0) {
        query.where(and(...conditions));
      }

      // 添加分页和限制条数的查询条件
      return await query.offset(offset).limit(limit);
    } catch (error) {
      return Promise.reject(error);
    }
  }

  async queryById(id: number) {
    try {
      return await db.query.newsInfo.findFirst({
        where: (newsInfo, { eq }) => eq(newsInfo.id, id),
        with: {
          newsContent: {
            columns: {
              content: true
            }
          }
        }
      });
    } catch (error) {
      return Promise.reject(error);
    }
  }
}
