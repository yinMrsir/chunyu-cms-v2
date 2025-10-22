import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

/* 菜单列表 */
export default defineEventHandler(async event => {
  // 验证权限
  await event.context.validatePermission('system:menu:query');
  const params = getQuery(event);
  const data = await new MenuServices().list(params);
  return createApiResponse(data);
});
