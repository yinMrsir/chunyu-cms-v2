import { and, eq, inArray, sql, not } from 'drizzle-orm';
import { FileConfig, fileConfigTable, NewFileConfig } from '~~/server/db/schema/system/fileConfig';
import { queryParams } from '~~/server/db/query.helper';

export class FileConfigServices {
  /* 新增 */
  async add(body: NewFileConfig) {
    const exist = await this.getByValue(body.value);
    if (exist) {
      throw createError({ statusCode: 400, statusMessage: '值已存在' });
    }
    await db.insert(fileConfigTable).values(body);
  }

  /* 更新 */
  async update(body: FileConfig) {
    const exist = await this.getByValue(body.value, body.fileConfigId);
    if (exist) {
      throw createError({ statusCode: 400, statusMessage: '值已存在' });
    }
    await db.update(fileConfigTable).set(body).where(eq(fileConfigTable.fileConfigId, body.fileConfigId));
  }

  /* 分页查询 */
  async pageList(params?: Partial<FileConfig & { keyword: string } & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const rowsQuery = db.query.fileConfigTable.findMany({
      extras: {
        id: sql`${fileConfigTable.fileConfigId}`.as('id')
      },
      offset,
      limit
    });
    const totalQuery = db.$count(fileConfigTable);
    const [rows, total] = await Promise.all([rowsQuery, totalQuery]);
    return {
      rows,
      total
    };
  }

  /* 删除 */
  async delete(ids: string[]) {
    await db.delete(fileConfigTable).where(
      inArray(
        fileConfigTable.fileConfigId,
        ids.map(id => Number(id))
      )
    );
  }

  /* 根据value值进行查询 */
  async getByValue(value: string, fileConfigId?: number): Promise<FileConfig | undefined> {
    const whereList = [eq(fileConfigTable.value, value)];
    if (fileConfigId) {
      whereList.push(not(eq(fileConfigTable.fileConfigId, fileConfigId)));
    }
    const where = and(...whereList);
    return await db.query.fileConfigTable.findFirst({
      where
    });
  }
}
