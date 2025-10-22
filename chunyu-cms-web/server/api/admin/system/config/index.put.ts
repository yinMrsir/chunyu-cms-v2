import { SysConfigServices } from '~~/server/services/admin/system/sysConfig/sys.config.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.updateTime = new Date();
  delete body.createTime;
  await new SysConfigServices().update(body);
  return createApiResponse(null);
});
