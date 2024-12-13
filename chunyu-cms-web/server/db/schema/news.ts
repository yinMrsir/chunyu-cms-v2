import { int, mysqlTable, varchar, text, datetime } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';

// 新闻基本信息表
export const newsInfo = mysqlTable('news_info', {
  id: int('id').autoincrement().primaryKey(),
  // 新闻标题，设置长度限制并要求非空
  title: varchar('title', { length: 255 }).notNull(),
  // 新闻作者，非必填
  author: varchar('author', { length: 100 }).default(''),
  // 新闻发布时间，使用 datetime 类型来记录具体时间
  publishTime: datetime('publish_time').notNull(),
  // 新闻来源，比如网站名称等，设置长度限制，非必填
  source: varchar('source', { length: 100 }).default(''),
  // 所属日期
  date: varchar('date', { length: 100 }).notNull(),
  // 新闻摘要，简短概括新闻内容，方便列表展示等场景使用，非必填
  summary: text('summary').default('')
});

export const newsInfoRelations = relations(newsInfo, ({ one }) => ({
  newsContent: one(newsContent, { fields: [newsInfo.id], references: [newsContent.newsId] })
}));

// 新闻内容表
export const newsContent = mysqlTable('news_content', {
  newsId: int('news_id').notNull(),
  content: text('content').notNull()
});
