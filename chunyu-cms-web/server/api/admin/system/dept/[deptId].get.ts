import { DeptServices } from '~~/server/services/admin/system/dept/dept.services';

/* 通过id查询部门 */
export default defineEventHandler(async event => {
  const deptId = getRouterParam(event, 'deptId');
  if (!deptId) {
    throw createError({ statusCode: 400, message: 'Dept 不能为空' });
  }
  const data = await new DeptServices().findRawById(deptId);
  return createApiResponse(data);
});
