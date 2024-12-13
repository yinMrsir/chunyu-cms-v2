import { RoleServices } from '~/server/services/admin/system/role/role.services';

/* 通过Id 查询角色 */
export default defineEventHandler(async event => {
  const roleId = getRouterParam(event, 'roleId');
  if (!roleId) {
    throw createError({ statusCode: 400, message: '未传入角色ID' });
  }
  const { userName } = event.context.user;
  const data = await new RoleServices().delete(roleId.split(','), userName);
  return createApiResponse(data);
});
