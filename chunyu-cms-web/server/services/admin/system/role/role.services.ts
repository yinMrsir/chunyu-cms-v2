import { and, between, eq, inArray, like } from 'drizzle-orm';
import dayjs from 'dayjs';
import { queryParams } from '~~/server/db/query.helper';
import { NewRole, Role, roleTable } from '~~/server/db/schema/system/role';
import { roleToMenuTable } from '~~/server/db/schema/system/roleToMenu';

export class RoleServices {
  /* 新增角色 */
  async add(role: NewRole & { menuIds: number[] }) {
    try {
      await db.transaction(async tx => {
        const [insertRole] = await tx.insert(roleTable).values(role).$returningId();
        await tx.insert(roleToMenuTable).values(role.menuIds.map(menuId => ({ roleId: insertRole.roleId, menuId })));
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 编辑角色 */
  async update(role: Role & { menuIds: number[] }) {
    try {
      await db.transaction(async tx => {
        await tx.update(roleTable).set(role).where(eq(roleTable.roleId, role.roleId));
        await tx.delete(roleToMenuTable).where(eq(roleToMenuTable.roleId, role.roleId));
        await tx.insert(roleToMenuTable).values(role.menuIds.map(menuId => ({ roleId: role.roleId, menuId })));
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 分页查询角色 */
  async list(params: Partial<Role & queryParams>) {
    const { pageNum = 1, limit = 10 } = params || {};
    const offset = (pageNum - 1) * limit;

    const whereList = [eq(roleTable.delFlag, '0')];
    if (params.roleName) {
      whereList.push(like(roleTable.roleName, `%${params.roleName}%`));
    }
    if (params.roleKey) {
      whereList.push(like(roleTable.roleKey, `%${params.roleKey}%`));
    }
    if (params.status) {
      whereList.push(eq(roleTable.status, params.status));
    }
    if (params['params[beginTime]'] && params['params[endTime]']) {
      whereList.push(
        between(
          roleTable.createTime,
          new Date(params['params[beginTime]']),
          new Date(dayjs(params['params[endTime]']).add(1, 'day').format())
        )
      );
    }
    const where = and(...whereList);

    const [rows, total] = await Promise.all([
      db.query.roleTable.findMany({
        where,
        limit,
        offset
      }),
      db.$count(roleTable, where)
    ]);

    return { rows, total };
  }

  /* 查询所有角色 */
  findAll() {
    return db.query.roleTable.findMany({ where: eq(roleTable.delFlag, '0') });
  }

  /* 通过id数组删除 */
  async delete(roleIdArr: string[], userName: string) {
    await db
      .update(roleTable)
      .set({ delFlag: '2', updateBy: userName })
      .where(
        inArray(
          roleTable.roleId,
          roleIdArr.map(item => Number(item))
        )
      );
  }

  /* 通过id查询 */
  findById(roleId: number): Promise<Role | undefined> {
    return db.query.roleTable.findFirst({
      where: (roleTable, { eq }) => eq(roleTable.roleId, roleId)
    });
  }

  /* 更改角色状态 */
  async changeStatus(roleId: number, status: string, updateBy: string) {
    await db.update(roleTable).set({ status, updateBy }).where(eq(roleTable.roleId, roleId));
  }
}
