import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

const menuServices = new MenuServices();

export default defineEventHandler(async event => {
  const roleId = getRouterParam(event, 'roleId');
  const menus = await menuServices.treeselect();
  const checkedKeys = await menuServices.getCheckedKeys(Number(roleId));
  return createApiResponse({
    menus,
    checkedKeys
  });
});
