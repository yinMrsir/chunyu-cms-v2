import { and, eq, like, not, sql } from 'drizzle-orm';
import { SharedServices } from '../../share/shared.services';
import { Dept, deptTable, NewDept } from '~~/server/db/schema/system/dept';

export class DeptServices {
  sharedService: SharedServices;
  constructor() {
    this.sharedService = new SharedServices();
  }

  /* 新增部门 */
  async add(dept: NewDept & { parentId?: number }) {
    if (dept.parentId) {
      dept.parentDeptId = dept.parentId;
    }
    try {
      await db.transaction(async tx => {
        const [insertDept] = await tx.insert(deptTable).values(dept).$returningId();
        // 查找父菜单的mpath
        let mpath = '';
        if (dept.parentDeptId) {
          const parent = await this.findById(dept.parentDeptId);
          if (parent) {
            mpath = parent.mpath ? `${parent.mpath}${insertDept.deptId}.` : `${String(insertDept.deptId)}.`;
          }
        }
        await tx.update(deptTable).set({ mpath }).where(eq(deptTable.deptId, insertDept.deptId));
      });
    } catch (error) {
      throw createError({ statusCode: 400, message: String(error) });
    }
  }

  /* 更新菜单 */
  async update(dept: Partial<Dept & { parentId?: number }>) {
    if (dept.parentId) {
      dept.parentDeptId = dept.parentId;
    }
    // 查找父菜单的mpath
    let mpath = '';
    if (dept.parentDeptId) {
      const parent = await this.findById(dept.parentDeptId);
      if (parent) {
        if (parent.mpath?.split('.').includes(String(dept.deptId))) {
          throw createError({ statusCode: 400, message: '不允许移动到自己的子级' });
        }
        mpath = parent.mpath ? `${parent.mpath}${dept.deptId}.` : `${String(dept.deptId)}.`;
      }
    }
    dept.mpath = mpath;
    await db
      .update(deptTable)
      .set(dept)
      .where(eq(deptTable.deptId, Number(dept.deptId)));
  }

  /* 查询部门列表 */
  list(params: Partial<Dept>) {
    const whereList = [];
    whereList.push(eq(deptTable.delFlag, '0'));
    if (params.deptName) {
      whereList.push(like(deptTable.deptName, `%${params.deptName}%`));
    }
    if (params.status) {
      whereList.push(eq(deptTable.status, params.status));
    }
    const where = and(...whereList);

    return db
      .select({
        ...deptTable,
        parentId: sql`IFNULL(${deptTable.parentDeptId}, 0)`
      } as any)
      .from(deptTable)
      .where(where)
      .orderBy(deptTable.orderNum);
  }

  /* 查询 部门 树结构 */
  async treeselect() {
    const deptArr = await db
      .select({
        id: deptTable.deptId,
        label: deptTable.deptName,
        parentId: deptTable.parentDeptId
      })
      .from(deptTable)
      .where(eq(deptTable.delFlag, '0'));
    return this.sharedService.handleTree(deptArr);
  }

  /* 通过id查询 */
  findById(deptId: number) {
    return db.query.deptTable.findFirst({ where: eq(deptTable.deptId, deptId) });
  }

  /* 通过id查询，过滤已删除，转换parentId */
  async findRawById(deptId: number | string) {
    const whereList = [];
    whereList.push(eq(deptTable.deptId, Number(deptId)));
    whereList.push(eq(deptTable.delFlag, '0'));
    const where = and(...whereList);

    const depts = await db
      .select({
        ...deptTable,
        parentId: sql`IFNULL(${deptTable.parentDeptId}, 0)`
      } as any)
      .from(deptTable)
      .where(where);

    return depts[0];
  }

  /* 查询除自己(包括子类) 外的所有 */
  async outList(deptId: number | string) {
    const whereList = [];
    whereList.push(eq(deptTable.delFlag, '0'));
    whereList.push(not(like(sql`concat('.', ${deptTable.mpath})`, `%.${deptId}.%`)));
    const where = and(...whereList);

    const results = await db
      .select({
        ...deptTable,
        parentId: sql`IFNULL(${deptTable.parentDeptId}, 0)`
      } as any)
      .from(deptTable)
      .where(where);

    results.forEach(result => {
      result.parentId = parseInt(result.parentId);
    });

    return results;
  }

  /* 删除部门 */
  async delete(deptId: string, userName: string) {
    await db
      .update(deptTable)
      .set({ delFlag: '2', updateBy: userName })
      .where(eq(deptTable.deptId, Number(deptId)));
  }

  /* 通过 parentId 查询其所有孩子 */
  findChildsByParentId(parentId: string) {
    return db.query.deptTable.findMany({
      where: and(eq(deptTable.delFlag, '0'), eq(deptTable.parentDeptId, Number(parentId)))
    });
  }
}
