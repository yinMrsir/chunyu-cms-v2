import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

const menuServices = new MenuServices();

export default defineEventHandler(async event => {
  // 验证权限
  await event.context.validatePermission('system:menu:edit');
  const body = await readBody(event);
  if (!body.menuId) {
    throw createError({
      statusCode: 400,
      message: 'menuId不能为空'
    });
  }
  body.updateBy = event.context.user.userName;
  body.updateTime = new Date();
  delete body.createTime;
  await menuServices.update(body);
  return createApiResponse(null);
});
