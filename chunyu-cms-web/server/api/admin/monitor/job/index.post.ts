import { jobServices } from '~~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await jobServices.addJob(body);
  return createApiResponse(null);
});
