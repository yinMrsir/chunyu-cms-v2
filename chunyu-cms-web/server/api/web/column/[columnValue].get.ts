import { GenreServices } from '~/server/services/basic/genre/genre.services';

const genreServices = new GenreServices();

export default defineEventHandler(async event => {
  const columnValue = getRouterParam(event, 'columnValue');
  const data = await genreServices.pageList(
    {
      columnValue
    },
    {
      movies: {
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
});
