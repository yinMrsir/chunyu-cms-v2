import { ColumnsServices } from '~~/server/services/basic/columns/columns.services';
import { MovieBasics } from '~~/server/db/schema/movie/movieBasics';

const columnsServices = new ColumnsServices();

export default defineCachedEventHandler(
  async () => {
    return await columnsServices.allList(
      { type: '1', status: '0' },
      {
        genre: true,
        movies: {
          limit: 12,
          orderBy: (movies: MovieBasics, { desc }: any) => [desc(movies.movieBasicsId)],
          with: {
            casts: {
              with: {
                actor: true
              }
            },
            movieRate: true
          }
        }
      }
    );
  },
  { base: 'redis', maxAge: 60 * 30 }
);
