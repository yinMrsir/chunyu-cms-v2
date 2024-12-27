import { JobServices } from '~/server/services/admin/monitor/job/job.services';

export default defineNitroPlugin(() => {
  // 启动定时任务
  JobServices.getInstance();
});
