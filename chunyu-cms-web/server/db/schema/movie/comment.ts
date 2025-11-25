import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { memberUserTable } from '../member/user';
import { videoTable } from '../movie/video';
import { movieBasicsTable } from './movieBasics';

export const commentTable = mysqlTable('comment', {
  commentId: int('comment_id').autoincrement().primaryKey(),
  // 影视ID
  movieBasicsId: int('movie_basics_id'),
  // 视频ID
  videoId: int('video_id').notNull(),
  // 会员用户ID
  memberUserId: int('member_user_id').notNull(),
  // 是否弹幕 0: 否  1: 是
  isDm: char('is_dm', { length: 1 }).default('0').notNull(),
  // 评论内容
  content: varchar('content', { length: 512 }).notNull(),
  // 弹幕开始时间
  start: int('start').notNull(),
  ...columnsHelpers
});

export const commentRelations = relations(commentTable, ({ one }) => {
  return {
    memberUser: one(memberUserTable, {
      fields: [commentTable.memberUserId],
      references: [memberUserTable.memberUserId]
    }),
    video: one(videoTable, {
      fields: [commentTable.videoId],
      references: [videoTable.videoId]
    }),
    movie: one(movieBasicsTable, {
      fields: [commentTable.movieBasicsId],
      references: [movieBasicsTable.movieBasicsId]
    })
  };
});

export type Comment = typeof commentTable.$inferSelect;
export type NewComment = typeof commentTable.$inferInsert;
