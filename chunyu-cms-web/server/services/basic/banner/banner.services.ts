import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Banner, bannerTable, NewBanner } from '~~/server/db/schema/basic/banner';
import { queryParams } from '~~/server/db/query.helper';

export class BannerServices {
  /* 新增 */
  async add(body: NewBanner) {
    await db.insert(bannerTable).values(body);
  }

  /* 更新 */
  async update(body: Banner) {
    await db.update(bannerTable).set(body).where(eq(bannerTable.bannerId, body.bannerId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Banner & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.title || params?.keyword) {
      whereList.push(like(bannerTable.title, `%${params.title || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.bannerTable.findMany({
      extras: {
        id: sql`${bannerTable.bannerId}`.as('id')
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(bannerTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(bannerTable).where(
      inArray(
        bannerTable.bannerId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}
