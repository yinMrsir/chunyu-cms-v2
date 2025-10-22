import { jobServices } from '~~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async () => {
  const data = await jobServices.jobList();
  return createApiResponse(data);
});
