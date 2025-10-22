import { drizzle } from 'drizzle-orm/mysql2';
import mysql from 'mysql2/promise';
import schema from '~~/server/db/schema';

const config = useRuntimeConfig();
const { host, port, user, password, database } = config.mysql;

export const connection = await mysql.createConnection({
  host,
  port,
  user,
  password,
  database
});

export const db = drizzle({ client: connection, schema: { ...schema }, mode: 'planetscale' });
