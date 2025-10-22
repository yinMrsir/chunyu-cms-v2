import { SysConfigServices } from '~~/server/services/admin/system/sysConfig/sys.config.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.createTime = body.updateTime = new Date();
  await new SysConfigServices().add(body);
  return createApiResponse(null);
});
