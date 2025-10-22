import { JobServices } from '~~/server/services/admin/monitor/job/job.services';

export default defineNitroPlugin(async () => {
  // 启动定时任务
  await JobServices.getInstance().init();
});
