module.exports = {
  apps: [
    {
      name: 'chunyu-cms-web',
      port: '3000',
      exec_mode: 'fork',
      // instances: 'max',
      script: '.output/server/index.mjs',
      error_file: './logs/error.log',
      out_file: './logs/out.log',
      log_date_format: 'YYYY-MM-DD HH:mm Z'
    }
  ]
};
