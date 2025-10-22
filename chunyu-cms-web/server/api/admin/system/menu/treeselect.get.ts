import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

/* 查询菜单树结构 */
export default defineEventHandler(async () => {
  const data = await new MenuServices().treeselect();
  return createApiResponse(data);
});
