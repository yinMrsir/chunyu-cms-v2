import { JobServices } from '~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await new JobServices().addJob(body);
  return createApiResponse(null);
});
