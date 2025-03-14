import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Country, countryTable, NewCountry } from '~/server/db/schema/basic/country';
import { queryParams } from '~/server/db/query.helper';

export class CountryServices {
  /* 新增 */
  async add(body: NewCountry) {
    await db.insert(countryTable).values(body);
  }

  /* 更新 */
  async update(body: Country) {
    await db.update(countryTable).set(body).where(eq(countryTable.countryId, body.countryId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Country & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(countryTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.countryTable.findMany({
      extras: {
        id: sql`${countryTable.countryId}`.as('id')
      },
      where,
      offset,
      limit
    });
    const totalQuery = db.$count(countryTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(countryIds: string[]) {
    await db.delete(countryTable).where(
      inArray(
        countryTable.countryId,
        countryIds.map(countryId => Number(countryId))
      )
    );
  }
}
