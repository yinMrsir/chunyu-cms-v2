import { DeptServices } from '~~/server/services/admin/system/dept/dept.services';

const deptServices = new DeptServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:dept:remove');
  const deptId = getRouterParam(event, 'deptId');
  if (!deptId) {
    throw createError({ statusCode: 400, message: '部门ID不能为空' });
  }
  const childs = await deptServices.findChildsByParentId(deptId);
  if (childs && childs.length) {
    throw createError({ statusCode: 400, message: '该部门下还存在其他部门，无法删除' });
  }
  const { userName } = event.context.user;
  await deptServices.delete(deptId, userName);
  return createApiResponse(null);
});
