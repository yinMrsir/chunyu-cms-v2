import { jobServices } from '~~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const { jobId, status } = await readBody(event);
  await jobServices.changeStatus(jobId, status);
  return createApiResponse(null);
});
