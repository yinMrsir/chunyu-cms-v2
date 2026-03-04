import { drizzle } from 'drizzle-orm/mysql2';
import mysql from 'mysql2/promise';
import schema from '~~/server/db/schema';

const config = useRuntimeConfig();
const { host, port, user, password, database } = config.mysql;

// Create connection pool with proper configuration
const pool = mysql.createPool({
  host,
  port,
  user,
  password,
  database,
  timezone: '+08:00', // 设置东八区时间
  waitForConnections: true,
  connectionLimit: 10, // 连接池大小
  queueLimit: 0, // 无限制排队
  enableKeepAlive: true, // 启用TCP keep-alive
  keepAliveInitialDelay: 0
});

// Create drizzle instance with connection pool
export const db = drizzle({
  client: pool,
  schema: { ...schema },
  mode: 'planetscale'
});

// Export pool for direct access if needed
export { pool };

// Health check function
export async function checkDbConnection() {
  try {
    const connection = await pool.getConnection();
    await connection.ping();
    connection.release();
    return true;
  } catch (error) {
    console.error('Database connection check failed:', error);
    return false;
  }
}

// Graceful shutdown
process.on('beforeExit', async () => {
  await pool.end();
});
