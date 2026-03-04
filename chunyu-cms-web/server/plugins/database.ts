import { checkDbConnection } from '~~/server/utils/db';

// Database connection middleware
export default defineNitroPlugin(async nitroApp => {
  // Initialize database connection check
  let isConnected = await checkDbConnection();

  // Periodic connection health check
  const healthCheckInterval = setInterval(async () => {
    const wasConnected = isConnected;
    isConnected = await checkDbConnection();

    // Log connection status changes
    if (wasConnected && !isConnected) {
      console.error('Database connection lost');
    } else if (!wasConnected && isConnected) {
      console.log('Database connection restored');
    }
  }, 30000); // Check every 30 seconds

  // Cleanup on app close
  nitroApp.hooks.hook('close', () => {
    if (healthCheckInterval) {
      clearInterval(healthCheckInterval);
    }
  });

  // Add request-level error handling for database errors
  nitroApp.hooks.hook('request', event => {
    // Add database connection status to event context
    event.context.dbConnected = isConnected;
  });

  nitroApp.hooks.hook('error', (error: any) => {
    // Handle database connection errors
    if (error.cause?.message?.includes('connection') || error.cause?.message?.includes('closed state')) {
      console.error('Database connection error detected, marking as disconnected');
      isConnected = false;

      // Try to reconnect
      setTimeout(async () => {
        isConnected = await checkDbConnection();
        if (isConnected) {
          console.log('Database reconnection successful');
        }
      }, 5000); // Retry after 5 seconds
    }
  });
});
