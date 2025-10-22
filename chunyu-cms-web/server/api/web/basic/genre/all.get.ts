import { GenreServices } from '~~/server/services/basic/genre/genre.services';

const genreServices = new GenreServices();

export default defineCachedEventHandler(
  async event => {
    const query = getQuery(event);
    return await genreServices.allList({ ...query, status: '0' });
  },
  { base: 'redis', maxAge: 60 * 60 }
);
