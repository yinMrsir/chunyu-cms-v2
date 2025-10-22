import { OnlineServices } from '~~/server/services/admin/monitor/online/online.services';

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await new OnlineServices().online(query);
  return createApiResponse(data);
});
