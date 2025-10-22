import { RoleServices } from '~~/server/services/admin/system/role/role.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:role:edit');
  const body = await readBody(event);
  body.updateBy = event.context.user.userName;
  body.updateTime = new Date();
  delete body.createTime;
  await new RoleServices().update(body);
});
