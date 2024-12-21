import { JobServices } from '~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async () => {
  const data = await new JobServices().jobList();
  return createApiResponse(data);
});
