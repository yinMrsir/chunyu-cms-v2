import { eq, like, and, sql, inArray, not, isNotNull, ne } from 'drizzle-orm';
import { SharedServices } from '../../share/shared.services';
import { RoleServices } from '../role/role.services';
import { queryParams } from '~~/server/db/query.helper';
import { menuTable, Menu, NewMenu } from '~~/server/db/schema/system/menu';
import { roleToMenuTable } from '~~/server/db/schema/system/roleToMenu';
import { roleTable } from '~~/server/db/schema/system/role';

export class MenuServices {
  roleServices: RoleServices;
  private sharedServices: SharedServices;
  constructor() {
    this.roleServices = new RoleServices();
    this.sharedServices = new SharedServices();
  }

  /* 新增菜单 */
  async add(menu: NewMenu & { parentId: number }) {
    if (menu.parentId) {
      menu.parentMenuId = menu.parentId;
    }
    await db.transaction(async tx => {
      const [insertMenu] = await tx.insert(menuTable).values(menu).$returningId();
      // 查找父菜单的mpath
      let mpath = '';
      if (menu.parentMenuId) {
        const parent = await this.findById(menu.parentMenuId);
        if (parent) {
          mpath = parent.mpath ? `${parent.mpath}${insertMenu.menuId}.` : `${String(insertMenu.menuId)}.`;
        }
      }
      await tx.update(menuTable).set({ mpath }).where(eq(menuTable.menuId, insertMenu.menuId));
    });
  }

  /* 更新菜单 */
  async update(menu: Partial<Menu & { parentId: number }>) {
    // 设置父菜单ID
    menu.parentMenuId = menu.parentId;
    // 查找父菜单的mpath
    let mpath = '';
    if (menu.parentMenuId) {
      const parent = await this.findById(menu.parentMenuId);
      if (parent) {
        if (parent.mpath.split('.').includes(String(menu.menuId))) {
          throw createError({ statusCode: 400, message: '不允许移动到自己的子级' });
        }
        mpath = parent.mpath ? `${parent.mpath}${menu.menuId}.` : `${String(menu.menuId)}.`;
      }
    }
    menu.mpath = mpath;
    await db
      .update(menuTable)
      .set(menu)
      .where(eq(menuTable.menuId, Number(menu.menuId)));
  }

  /* 查询菜单列表 */
  list(params: Partial<Menu & queryParams>) {
    const whereList = [];
    if (params.menuName) {
      whereList.push(like(menuTable.menuName, `%${params.menuName}%`));
    }
    if (params.status) {
      whereList.push(eq(menuTable.status, params.status));
    }
    return db
      .select({
        ...menuTable,
        parentId: sql`IFNULL(${menuTable.parentMenuId}, 0)`
      } as any)
      .from(menuTable)
      .where(and(...whereList))
      .orderBy(menuTable.orderNum);
  }

  /* 通过id查询 */
  async findById(menuId: number) {
    const data = await db
      .select({
        ...menuTable,
        parentId: sql`IFNULL(${menuTable.parentMenuId}, 0)`
      } as any)
      .from(menuTable)
      .where(eq(menuTable.menuId, menuId));
    return data[0];
  }

  /* 通过 parentId 查询其所有孩子 */
  findChildrenByParentId(parentId: number) {
    return db.query.menuTable.findMany({
      where: eq(menuTable.parentMenuId, parentId)
    });
  }

  /* 删除菜单 */
  async delete(menuId: number) {
    await db.delete(menuTable).where(eq(menuTable.menuId, menuId));
  }

  /* 查询菜单树结构 */
  async treeselect() {
    const menuArr = await db
      .select({
        id: menuTable.menuId,
        label: menuTable.menuName,
        parentId: menuTable.parentMenuId
      })
      .from(menuTable)
      .orderBy(menuTable.orderNum);
    return new SharedServices().handleTree(menuArr);
  }

  /* 获取角色的菜单权限列表 */
  async getCheckedKeys(roleId: number) {
    let menuArr = (await db.query.roleToMenuTable.findMany({
      columns: {
        menuId: true
      },
      with: {
        menu: true
      },
      where: (roleToMenuTable, { eq }) => eq(roleToMenuTable.roleId, roleId)
    })) as Array<{ menuId: number; menu: Menu }>;
    const role = await this.roleServices.findById(roleId); // 查看是否 父子联动
    const menuCheckStrictly = role ? role.menuCheckStrictly : false;
    if (menuCheckStrictly) {
      menuArr = menuArr.filter(
        menu =>
          !menuArr.find(
            menuSub => menu.menuId !== menuSub.menuId && ('.' + menuSub.menu.mpath).includes('.' + menu.menuId + '.')
          )
      );
    }
    return menuArr.map(menu => menu.menuId);
  }

  // 获取菜单树
  async getMenuList(isAdmin: boolean, roleIdArr: number[]) {
    const whereList = [];
    whereList.push(inArray(menuTable.menuType, ['M', 'C']));
    whereList.push(
      not(
        sql`exists (
              select menu2.menu_id
              from ${menuTable} as menu2
              where menu2.status = 1
              and concat('.', ${menuTable.mpath}) like concat('%.', menu2.menu_id, '.%')
            )`
      )
    );

    let query = db
      .select({
        ...menuTable,
        parentId: sql<number>`ifnull(${menuTable.parentMenuId}, 0)` // 使用sql模板字符串处理函数调用类似的情况
      } as any)
      .from(menuTable) as any;
    /* 如果不是超级管理员，关联角色查询 */
    if (!isAdmin && roleIdArr) {
      query = query
        .leftJoin(roleToMenuTable, eq(roleToMenuTable.menuId, menuTable.menuId))
        .leftJoin(roleTable, and(eq(roleTable.roleId, roleToMenuTable.roleId), eq(roleTable.delFlag, '0')));
      whereList.push(eq(roleTable.status, '0'));
      whereList.push(inArray(roleTable.roleId, roleIdArr));
    }
    query.where(and(...whereList));

    const menuList = await query.groupBy(menuTable.menuId).orderBy(menuTable.orderNum);
    const menuTreeList: any[] = [];
    this.sharedServices.handleTree(menuList, 'menuId').forEach(item => {
      if (item.parentId === 0) {
        if (item.menuType === 'C') {
          const obj = {
            component: 'Layout',
            hidden: false,
            path: '/',
            visible: '0',
            children: [JSON.parse(JSON.stringify(item))]
          };
          menuTreeList.push(obj);
        } else {
          item.path = '/' + item.path;
          menuTreeList.push(item);
        }
      }
    });
    return this.createRouterTree(menuTreeList);
  }

  /* 生成菜单树 */
  createRouterTree(menuArr: Menu[]): any[] {
    const routerList: any[] = [];
    menuArr.forEach((item: any) => {
      const router: any = {};
      if (this.firstToUpper(item.path)) {
        router.name = this.firstToUpper(item.path);
      }
      router.hidden = item.visible !== '0';
      if (item.menuType === 'M' && item.isFrame === 1) {
        router.redirect = 'noRedirect';
      }
      if (item.menuType === 'M') {
        if (item.path.includes('/')) {
          router.component = 'Layout';
        } else {
          router.component = 'ParentView';
        }
      } else {
        router.component = item.component;
      }
      if (item.menuType === 'M') {
        router.alwaysShow = true;
      }
      router.path = item.path;
      router.meta = {
        title: item.menuName,
        icon: item.icon,
        noCache: +item.isCache !== 0,
        link: item.isFrame === 0 ? item.component : null
      };
      if (item.children && item.children.length) {
        router.children = this.createRouterTree(item.children);
      }
      routerList.push(router);
    });
    return routerList;
  }

  // 首字母大写
  firstToUpper(pathStr: string) {
    const str = pathStr.replace('/', '').trim();
    if (str) {
      return str.toLowerCase().replace(str[0], str[0].toUpperCase());
    }
    return '';
  }

  /* 根据角色数组查询所有权限标识 */
  async getAllPermissionsByRoles(roleIdArr: number[]): Promise<string[]> {
    const menuList = await db
      .select({ perms: menuTable.perms })
      .from(menuTable)
      .innerJoin(roleToMenuTable, eq(roleToMenuTable.menuId, menuTable.menuId))
      .innerJoin(
        roleTable,
        and(eq(roleTable.delFlag, '0'), eq(roleTable.status, '0'), eq(roleTable.roleId, roleToMenuTable.roleId))
      )
      .where(and(isNotNull(menuTable.perms), ne(menuTable.perms, ''), inArray(roleTable.roleId, roleIdArr)));

    return menuList.map(item => item.perms) as string[];
  }
}
