import { ShortServices } from '~~/server/services/short/short.services';

const shortServices = new ShortServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await shortServices.pageList(
    { ...query, status: '1' },
    query?.memberUserId ? Number(query.memberUserId) : undefined
  );
  return data.rows;
});
