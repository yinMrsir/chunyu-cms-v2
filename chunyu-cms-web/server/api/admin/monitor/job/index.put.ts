import { JobServices } from '~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.updateTime = new Date();
  delete body.createTime;
  await new JobServices().updateJob(body);
  return createApiResponse(null);
});
