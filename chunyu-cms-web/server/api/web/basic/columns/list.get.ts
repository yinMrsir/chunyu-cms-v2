import { ColumnsServices } from '~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineCachedEventHandler(
  async () => {
    return await columnsServices.allList({ status: '0' });
  },
  { base: 'redis', maxAge: 60 * 60 }
);
