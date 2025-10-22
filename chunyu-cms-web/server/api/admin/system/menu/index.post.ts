import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

/* 新增菜单 */
export default defineEventHandler(async event => {
  // 验证权限
  await event.context.validatePermission('system:menu:add');
  const body = await readBody(event);
  body.createBy = body.updateBy = event.context.user.userName;
  await new MenuServices().add(body);
  return createApiResponse(null);
});
