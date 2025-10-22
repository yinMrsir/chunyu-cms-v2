import { LogServices } from '~~/server/services/admin/monitor/log/log.services';

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await new LogServices().list(query as any);
  return createApiResponse(data);
});
