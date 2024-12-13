import { MenuServices } from '~/server/services/admin/system/menu/menu.service';

/* 菜单列表 */
export default defineEventHandler(async event => {
  const params = getQuery(event);
  const data = await new MenuServices().list(params);
  return createApiResponse(data);
});
