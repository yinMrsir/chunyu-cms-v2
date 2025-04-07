import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { levelTable } from '../basic/level';
import { movieBasicsTable } from './movieBasics';

export const movieLevelTable = mysqlTable('movie_level', {
  movieLevelId: int('movie_level_id').autoincrement().primaryKey(),
  // 关联的影视id
  movieId: int().notNull(),
  // 关联的引导等级id
  levelId: int().notNull()
});

export type MovieLevel = typeof movieLevelTable.$inferSelect;
export type NewMovieLevel = typeof movieLevelTable.$inferInsert;

export const movieLevelTableRelations = relations(movieLevelTable, ({ one }) => {
  return {
    movie: one(movieBasicsTable, {
      fields: [movieLevelTable.movieId],
      references: [movieBasicsTable.movieBasicsId]
    }),
    level: one(levelTable, {
      fields: [movieLevelTable.levelId],
      references: [levelTable.levelId]
    })
  };
});
