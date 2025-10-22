import { SysConfigServices } from '~~/server/services/admin/system/sysConfig/sys.config.services';

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await new SysConfigServices().list(query);
  return createApiResponse(data);
});
