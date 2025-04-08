import { ColumnsServices } from '~/server/services/basic/columns/columns.services';
import { MovieBasicsServices } from '~/server/services/movie/movieBasics/movieBasics.services';

const columnsServices = new ColumnsServices();
const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async () => {
  const queryData = await columnsServices.allList(
    { type: '1', status: '0' },
    {
      genre: true
    }
  );
  const columnsIds = queryData.map(value => value.value);
  const rowsPromises = columnsIds.map(columnValue => {
    return movieBasicsServices.pageList({
      columnValue,
      limit: 12
    });
  });

  const columnsData = await Promise.all(rowsPromises);
  return queryData.map((value, index) => {
    return {
      ...value,
      rows: columnsData[index].rows
    };
  });
});
