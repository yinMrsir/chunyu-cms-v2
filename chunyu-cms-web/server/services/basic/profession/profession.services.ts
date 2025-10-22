import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Profession, professionTable, NewProfession } from '~~/server/db/schema/basic/profession';
import { queryParams } from '~~/server/db/query.helper';
import { castTable } from '~~/server/db/schema/movie/cast';

export class ProfessionServices {
  /* 新增 */
  async add(profession: NewProfession) {
    await db.transaction(async tx => {
      const [insertProfession] = await tx.insert(professionTable).values(profession).$returningId();
      // 查找父菜单的mpath
      let mpath = '';
      if (profession.parentId) {
        const parent = await this.findById(profession.parentId);
        if (parent) {
          mpath = parent.mpath
            ? `${parent.mpath}${insertProfession.professionId}.`
            : `${String(insertProfession.professionId)}.`;
        }
      }
      await tx
        .update(professionTable)
        .set({ mpath })
        .where(eq(professionTable.professionId, insertProfession.professionId));
    });
  }

  /* 更新 */
  async update(profession: Profession) {
    // 查找父菜单的mpath
    let mpath = '';
    if (profession.parentId) {
      const parent = await this.findById(profession.parentId);
      if (parent) {
        if (parent.mpath?.split('.').includes(String(profession.professionId))) {
          throw createError({ statusCode: 400, message: '不允许移动到自己的子级' });
        }
        mpath = parent.mpath ? `${parent.mpath}${profession.professionId}.` : `${String(profession.professionId)}.`;
      }
    }
    profession.mpath = mpath;
    await db
      .update(professionTable)
      .set(profession)
      .where(eq(professionTable.professionId, Number(profession.professionId)));
  }

  /* 根据id查询 */
  async findById(id: number) {
    const data = await db
      .select({
        ...professionTable,
        parentId: sql`IFNULL(${professionTable.parentId}, 0)`
      } as any)
      .from(professionTable)
      .where(eq(professionTable.professionId, id));
    return data[0];
  }

  /* 分页查询 */
  async pageList(params?: Partial<Profession & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(professionTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.professionTable.findMany({
      extras: {
        id: sql`${professionTable.professionId}`.as('id')
      },
      where,
      offset,
      limit: Number(limit)
    });
    const totalQuery = db.$count(professionTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  allList(params?: Partial<Profession & { keyword: string }>) {
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(professionTable.name, `%${params.name || params.keyword}%`));
    }
    if (params?.status) {
      whereList.push(eq(professionTable.status, params.status));
    }
    const where = and(...whereList);

    return db.query.professionTable.findMany({
      extras: {
        id: sql`${professionTable.professionId}`.as('id'),
        movieCount: db.$count(castTable, sql`cast.profession_id = ${professionTable.professionId}`).as('movieCount')
      },
      where
    });
  }

  /* 删除 */
  async delete(genreIds: string[]) {
    await db.delete(professionTable).where(
      inArray(
        professionTable.professionId,
        genreIds.map(genreId => Number(genreId))
      )
    );
  }
}
