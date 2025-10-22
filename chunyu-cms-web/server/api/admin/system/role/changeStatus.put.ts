import { RoleServices } from '~~/server/services/admin/system/role/role.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await new RoleServices().changeStatus(body.roleId, body.status, event.context.user.userName);
  return createApiResponse(null);
});
