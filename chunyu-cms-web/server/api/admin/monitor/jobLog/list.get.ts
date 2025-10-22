import { jobServices } from '~~/server/services/admin/monitor/job/job.services';

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await jobServices.jobLogList(query);
  return createApiResponse(data);
});
