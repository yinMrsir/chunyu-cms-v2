import { ShortServices } from '~~/server/services/short/short.services';

const shortServices = new ShortServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  return await shortServices.pageList(query, event.context.memberUser.memberUserId);
});
