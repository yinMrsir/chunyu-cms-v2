import { DeptServices } from '~~/server/services/admin/system/dept/dept.services';

const deptServices = new DeptServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:dept:query');
  const query = getQuery(event);
  const data = await deptServices.list(query);
  return createApiResponse(data);
});
