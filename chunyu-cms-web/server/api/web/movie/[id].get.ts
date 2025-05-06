import { MovieBasicsServices } from '~/server/services/movie/movieBasics/movieBasics.services';
import { MovieVideo } from '~/server/db/schema/movie/movieVideo';

const movieBasicsServices = new MovieBasicsServices();

export default defineEventHandler(async event => {
  const id = getRouterParam(event, 'id');
  const data = await movieBasicsServices.findById(Number(id), {
    pv: true,
    movieRate: {
      columns: {
        rate: true
      }
    },
    movieBasicToCountry: {
      with: {
        country: true
      }
    },
    genres: {
      with: {
        genre: {
          columns: {
            name: true,
            genreId: true
          }
        }
      }
    },
    movieVideo: {
      where: (movieVideo: MovieVideo, { eq }: any) => eq(movieVideo.status, '0'),
      orderBy: (movieVideo: MovieVideo, { asc }: any) => [asc(movieVideo.sort)],
      with: {
        video: true
      }
    },
    casts: {
      columns: {
        castId: true,
        role: true
      },
      with: {
        actor: {
          columns: {
            name: true,
            avatar: true,
            actorId: true
          }
        },
        profession: {
          columns: {
            name: true,
            professionId: true
          }
        }
      }
    }
  });
  return data || {};
});
