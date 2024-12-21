import { JobServices } from '~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const { jobId, status } = await readBody(event);
  await new JobServices().changeStatus(jobId, status);
  return createApiResponse(null);
});
