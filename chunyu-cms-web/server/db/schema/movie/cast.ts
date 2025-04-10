import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { professionTable } from '../basic/profession';
import { actorTable } from './actor';
import { movieBasicsTable } from './movieBasics';

export const castTable = mysqlTable('cast', {
  // 主键，自增
  castId: int('cast_id').autoincrement().primaryKey(),
  // 关联的影视id，必填
  movieId: int('movie_id').notNull(),
  // 关联的影人id，必填
  actorId: int('actor_id').notNull(),
  // 影人职务，必填
  professionId: int('profession_id').notNull(),
  // 饰演的角色，可选，默认值为null
  role: varchar('role', { length: 255 }),
  ...columnsHelpers
});

export type Cast = typeof castTable.$inferSelect;
export type NewCast = typeof castTable.$inferInsert;

export const castTableRelations = relations(castTable, ({ one }) => {
  return {
    actor: one(actorTable, {
      fields: [castTable.actorId],
      references: [actorTable.actorId]
    }),
    profession: one(professionTable, {
      fields: [castTable.professionId],
      references: [professionTable.professionId]
    }),
    movieBasics: one(movieBasicsTable, {
      fields: [castTable.movieId],
      references: [movieBasicsTable.movieBasicsId]
    })
  };
});
