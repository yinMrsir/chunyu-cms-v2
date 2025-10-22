import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Country, countryTable, NewCountry } from '~~/server/db/schema/basic/country';
import { queryParams } from '~~/server/db/query.helper';
import { Level, levelTable } from '~~/server/db/schema/basic/level';
import { movieBasicToCountryTable } from '~~/server/db/schema/movie/movieBasicToCountry';

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
        id: sql`${countryTable.countryId}`.as('id'),
        movieCount: db
          .$count(movieBasicToCountryTable, sql`movie_basic_to_country.country_id = ${countryTable.countryId}`)
          .as('movieCount')
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(countryTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 全部列表 */
  async allList(params?: Partial<Country & { keyword: string }>) {
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(countryTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    return await db.query.countryTable.findMany({
      extras: {
        id: sql`${countryTable.countryId}`.as('id')
      },
      where
    });
  }

  /* 获取国家级等级 */
  async getCountryLevelAll() {
    const rows = await db
      .select()
      .from(countryTable)
      .leftJoin(levelTable, eq(countryTable.countryId, levelTable.countryId));

    const results: Array<{ id: number; name: string; children: Level[] }> = [];
    rows.forEach(row => {
      const existingCountry = results.find(item => item.id === row.country.countryId);
      if (existingCountry && row.level) {
        existingCountry.children.push(row.level);
      } else {
        results.push({
          id: row.country.countryId,
          name: row.country.name,
          children: row.level ? [row.level] : []
        });
      }
    });
    return results;
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
