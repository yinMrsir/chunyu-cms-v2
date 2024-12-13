import { RoleServices } from '~/server/services/admin/system/role/role.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.createBy = body.updateBy = event.context.user.userName;
  await new RoleServices().add(body);
});
