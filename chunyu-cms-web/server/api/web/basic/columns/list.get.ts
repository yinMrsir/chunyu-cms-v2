import { ColumnsServices } from '~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineEventHandler(async () => {
  return await columnsServices.allList({ status: '0' });
});
