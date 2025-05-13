import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { memberUserTable } from '../member/user';

export const shortTable = mysqlTable('short', {
  shortId: int('short_id').autoincrement().primaryKey(),
  // 用户ID
  memberUserId: int('member_user_id').notNull(),
  // 视频封面地址
  poster: varchar('poster', { length: 255 }).notNull(),
  // 视频播放地址
  videoUrl: varchar('video_url', { length: 255 }).notNull(),
  // 视频类型
  mimeType: varchar('mime_type', { length: 255 }),
  // 视频时长
  duration: int('duration'),
  // 视频宽度
  width: int('width'),
  // 视频高度
  height: int('height'),
  // 视频大小
  size: int('size'),
  // 视频描述
  description: varchar('description', { length: 255 }).notNull(),
  // 点赞数
  likes: int('likes').default(0),
  // 评论数
  comments: int('comments').default(0),
  // 播放数
  playCount: int('play_count').default(0),
  // 分享数
  shareCount: int('share_count').default(0),
  // 收藏数
  collection: int('collection').default(0),
  // 是否公开(1:公开,0:私密)
  isPublic: char('is_public', { length: 1 }).notNull().default('1'),
  // 视频状态(0:审核中,1:通过,2:不通过 3:已封禁)
  status: char('status', { length: 1 }).notNull().default('0'),
  ...columnsHelpers
});

export const shortRelation = relations(shortTable, ({ one }) => ({
  memberUser: one(memberUserTable, {
    fields: [shortTable.memberUserId],
    references: [memberUserTable.memberUserId]
  })
}));

export type Short = typeof shortTable.$inferSelect;
export type NewShort = typeof shortTable.$inferInsert;
