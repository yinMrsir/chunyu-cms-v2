import { MenuServices } from '~~/server/services/admin/system/menu/menu.service';

export default defineEventHandler(async evevt => {
  const menuId = getRouterParam(evevt, 'menuId');
  if (!menuId) {
    throw createError({ statusCode: 400, message: 'menuId不能为空' });
  }
  const data = await new MenuServices().findById(+menuId);
  return createApiResponse(data);
});
