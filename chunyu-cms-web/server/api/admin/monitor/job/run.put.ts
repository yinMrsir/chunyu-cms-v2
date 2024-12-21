import { JobServices } from '~/server/services/admin/monitor/job/job.services';
import { Job } from '~/server/db/schema/monitor/job';

const jobServices = new JobServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const job = (await jobServices.oneJob(body.jobId)) as Job;
  jobServices.once(job);
  return createApiResponse(null);
});
