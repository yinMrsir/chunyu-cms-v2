import { ServerService } from '~~/server/services/admin/monitor/server/server.services';

const serverServices = new ServerService();

export default defineEventHandler(async () => {
  const cpu = serverServices.getCpu();
  const mem = serverServices.getMem();
  const sys = serverServices.getSys();
  const sysFiles = serverServices.getSysFiles();
  const promiseArr = await Promise.all([cpu, mem, sys, sysFiles]);
  const data = {
    cpu: promiseArr[0],
    mem: promiseArr[1],
    sys: promiseArr[2],
    sysFiles: promiseArr[3]
  };
  return createApiResponse(data);
});
