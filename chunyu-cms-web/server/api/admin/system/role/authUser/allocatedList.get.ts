import { RoleServices } from '~~/server/services/admin/system/role/role.services';

export default defineEventHandler(() => {
  const data = new RoleServices().allocatedListByRoleId();
  return createApiResponse(data);
});
