import { RoleServices } from '~~/server/services/admin/system/role/role.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:role:remove');
  const roleId = getRouterParam(event, 'roleId');
  if (!roleId) {
    throw createError({ statusCode: 400, message: '未传入角色ID' });
  }
  const { userName } = event.context.user;
  const data = await new RoleServices().delete(roleId.split(','), userName);
  return createApiResponse(data);
});
