import { GenreServices } from '~/server/services/basic/genre/genre.services';
import { MovieBasicToGenre } from '~/server/db/schema/movie/movieBasicToGenre';

const genreServices = new GenreServices();

export default defineCachedEventHandler(
  async event => {
    const columnValue = getRouterParam(event, 'columnValue');
    const data = await genreServices.pageList(
      {
        columnValue
      },
      {
        movies: {
          limit: 12,
          orderBy: (movies: MovieBasicToGenre, { desc }: any) => [desc(movies.movieBasicsId)],
          with: {
            movieBasics: {
              columns: {
                movieBasicsId: true,
                title: true,
                poster: true
              },
              with: {
                casts: {
                  columns: {},
                  with: {
                    actor: {
                      columns: {
                        actorId: true,
                        name: true
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    );
    return data.rows;
  },
  {
    base: 'redis',
    maxAge: 60 * 30
  }
);
