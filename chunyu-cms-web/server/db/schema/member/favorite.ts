import { int, mysqlTable, uniqueIndex } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicsTable } from '../movie/movieBasics';
import { memberUserTable } from './user';

export const memberFavoriteTable = mysqlTable(
  'member_favorite',
  {
    memberFavoriteId: int('member_favorite_id').autoincrement().primaryKey(),
    // 会员ID
    memberUserId: int('member_user_id').notNull(),
    // 电影ID
    movieBasicsId: int('movie_basics_id').notNull(),
    ...columnsHelpers
  },
  table => ({
    // 确保用户对同一电影只能收藏一次
    userMovieIdx: uniqueIndex('idx_user_movie').on(table.memberUserId, table.movieBasicsId)
  })
);

export const memberFavoriteRelations = relations(memberFavoriteTable, ({ one }) => ({
  user: one(memberUserTable, {
    fields: [memberFavoriteTable.memberUserId],
    references: [memberUserTable.memberUserId]
  }),
  movie: one(movieBasicsTable, {
    fields: [memberFavoriteTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  })
}));

export type MemberFavorite = typeof memberFavoriteTable.$inferSelect;
export type NewMemberFavorite = typeof memberFavoriteTable.$inferInsert;
