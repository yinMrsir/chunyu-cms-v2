import { ColumnsServices } from '~/server/services/basic/columns/columns.services';

const columnsServices = new ColumnsServices();

export default defineEventHandler(async () => {
  const queryData = await columnsServices.allList(
    { type: '1', status: '0' },
    {
      genre: true,
      movies: {
        with: {
          casts: {
            with: {
              actor: true
            }
          }
        }
      }
    }
  );
  return queryData;
});
