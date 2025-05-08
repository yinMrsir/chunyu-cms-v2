import { ShortServices } from '~/server/services/short/short.services';

const shortServices = new ShortServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await shortServices.pageList({ ...query, status: '1' });
  return data.rows;
});
