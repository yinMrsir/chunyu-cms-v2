import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

const menuServices = new MenuServices();

/* 删除菜单 */
export default defineEventHandler(async event => {
  // 验证权限
  await event.context.validatePermission('system:menu:remove');
  const menuId = getRouterParam(event, 'menuId');
  if (!menuId) {
    throw createError({
      statusCode: 400,
      message: 'menuId不能为空'
    });
  }
  // 查询是否存在子菜单
  const childMenu = await menuServices.findChildrenByParentId(+menuId);

  if (childMenu && childMenu.length) {
    throw createError({
      statusCode: 400,
      message: '存在子菜单,不允许删除'
    });
  }
  await menuServices.delete(+menuId);
  return createApiResponse(null);
});
