import { SysConfigServices } from '~~/server/services/admin/system/sysConfig/sys.config.services';

export default defineEventHandler(async event => {
  const sysConfigId = getRouterParam(event, 'sysConfigId');
  const data = await new SysConfigServices().findById(sysConfigId);
  return createApiResponse(data);
});
