import { JobServices } from '~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const jobId = getRouterParam(event, 'jobId');
  if (!jobId) {
    throw createError({ statusCode: 400, statusMessage: '参数错误' });
  }
  await new JobServices().deleteJob(jobId.split(','));
  return {};
});
