export interface WebGenreWithMovies {
  id: number;
  name: string;
  columnValue: string;
  status: string | null;
  remark: string | null;
  createBy: string | null;
  createTime: Date | null;
  updateBy: string | null;
  updateTime: Date | null;
  nameEn: string | null;
  genreId: number;
  movieCount: number;
  movies: Array<{
    movieBasicsId: number;
    movieBasics: {
      movieBasicsId: number;
      title: string;
      poster: string;
      isPay: number;
      movieRate?: {
        rate: number;
        rateUserCount: number;
      };
      casts?: Array<{
        actor: {
          actorId: number;
          name: string;
        };
      }>;
    };
  }>;
}