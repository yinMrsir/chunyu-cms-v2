import { and, eq, inArray, like, sql } from 'drizzle-orm';
import { Columns, columnsTable, NewColumns } from '~/server/db/schema/basic/columns';
import { queryParams } from '~/server/db/query.helper';

export class ColumnsServices {
  /* 新增 */
  async add(body: NewColumns) {
    await db.insert(columnsTable).values(body);
  }

  /* 更新 */
  async update(body: Columns) {
    await db.update(columnsTable).set(body).where(eq(columnsTable.columnId, body.columnId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<Columns & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;
    const whereList = [];
    if (params?.name || params?.keyword) {
      whereList.push(like(columnsTable.name, `%${params.name || params.keyword}%`));
    }
    const where = and(...whereList);

    const rowsQuery = db.query.columnsTable.findMany({
      extras: {
        id: sql`${columnsTable.columnId}`.as('id')
      },
      where,
      offset,
      limit
    });
    const totalQuery = db.$count(columnsTable, where);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(columnsIds: string[]) {
    await db.delete(columnsTable).where(
      inArray(
        columnsTable.columnId,
        columnsIds.map(columnsId => Number(columnsId))
      )
    );
  }
}
