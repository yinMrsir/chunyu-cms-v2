import { DeptServices } from '~~/server/services/admin/system/dept/dept.services';

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:dept:add');
  const body = await readBody(event);
  body.createBy = body.updateBy = event.context.user.userName;
  await new DeptServices().add(body);
  return createApiResponse(null);
});
