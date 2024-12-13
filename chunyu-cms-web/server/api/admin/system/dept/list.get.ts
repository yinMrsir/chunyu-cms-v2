import { DeptServices } from '~/server/services/admin/system/dept/dept.services';

const deptServices = new DeptServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await deptServices.list(query);
  return createApiResponse(data);
});
