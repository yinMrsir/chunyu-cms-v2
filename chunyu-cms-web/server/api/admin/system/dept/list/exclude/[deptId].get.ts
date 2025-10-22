import { DeptServices } from '~~/server/services/admin/system/dept/dept.services';

/* 查询除自己(包括子类)外部门列表 */
export default defineEventHandler(async event => {
  const deptId = getRouterParam(event, 'deptId');
  if (!deptId) {
    throw createError({ statusCode: 400, message: 'Dept 不能为空' });
  }
  const data = await new DeptServices().outList(deptId);
  return createApiResponse(data);
});
