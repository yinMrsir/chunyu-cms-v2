import { ColumnsServices } from '~~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineCachedEventHandler(
  async event => {
    const query = getQuery(event);
    return await columnsServices.allList({ ...query, status: '0' });
  },
  { base: 'redis', maxAge: 60 * 60 }
);
