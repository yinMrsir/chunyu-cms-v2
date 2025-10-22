import { DeptServices } from '~~/server/services/admin/system/dept/dept.services';

export default defineEventHandler(async () => {
  const data = await new DeptServices().treeselect();
  return createApiResponse(data);
});
