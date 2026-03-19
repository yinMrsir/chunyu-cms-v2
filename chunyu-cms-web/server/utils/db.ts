import { drizzle } from 'drizzle-orm/mysql2';
import { createPool } from 'mysql2/promise';
import schema from '~~/server/db/schema';

const config = useRuntimeConfig();
const { host, port, user, password, database } = config.mysql;

// Create connection pool with proper configuration
const pool = createPool({
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
  keepAliveInitialDelay: 0,
  // 连接超时配置
  connectTimeout: 10000, // 连接超时 10秒
  // 额外的错误处理配置
  multipleStatements: false,
  namedPlaceholders: true
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
  } catch (error: any) {
    const errorMsg = error?.message || String(error);

    // ECONNRESET 或 EPIPE 错误表示连接被意外关闭，需要清理连接池
    if (
      errorMsg.includes('ECONNRESET') ||
      errorMsg.includes('EPIPE') ||
      errorMsg.includes('PROTOCOL_CONNECTION_LOST')
    ) {
      console.error('Database connection check failed:', errorMsg);
      // 清理连接池中的失效连接
      try {
        await pool.end();
      } catch (e) {
        // 忽略关闭错误
      }
    }
    return false;
  }
}

// Graceful shutdown
process.on('beforeExit', async () => {
  await pool.end();
});
