import { DeptServices } from '~/server/services/admin/system/dept/dept.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.updateBy = event.context.user.userName;
  delete body.createTime;
  body.updateTime = new Date();
  await new DeptServices().update(body);
  return createApiResponse(null);
});
