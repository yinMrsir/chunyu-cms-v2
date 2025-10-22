import { RoleServices } from '~~/server/services/admin/system/role/role.services';

/* 通过Id 查询角色 */
export default defineEventHandler(async event => {
  const roleId = getRouterParam(event, 'roleId');
  const data = await new RoleServices().findById(Number(roleId));
  return createApiResponse(data);
});
