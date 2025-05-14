import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicsTable } from '../movie/movieBasics';

export const memberMovieTable = mysqlTable('member_movie', {
  memberMovieId: int('member_movie_id').autoincrement().primaryKey(),
  // 会员ID
  memberUserId: int('member_user_id').notNull(),
  // 影视ID
  movieBasicsId: int('movie_basics_id').notNull(),
  ...columnsHelpers
});

export const memberMovieRelations = relations(memberMovieTable, ({ one }) => ({
  movie: one(movieBasicsTable, {
    fields: [memberMovieTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  })
}));

export type MemberMovie = typeof memberMovieTable.$inferSelect;
export type NewMemberMovie = typeof memberMovieTable.$inferInsert;
