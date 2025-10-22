import { jobServices } from '~~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async () => {
  await jobServices.cleanJobLog();
  return createApiResponse(null);
});
