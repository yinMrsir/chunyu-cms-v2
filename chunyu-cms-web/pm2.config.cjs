module.exports = {
  apps: [
    {
      name: 'aicpb.com',
      port: '3000',
      exec_mode: 'cluster',
      instances: 1,
      script: '.output/server/index.mjs',
      error_file: './logs/error.log',
      out_file: './logs/out.log',
      log_date_format: 'YYYY-MM-DD HH:mm Z',
    }
  ]
};
