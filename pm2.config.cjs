module.exports = {
  apps : [
    {
      name: 'chunyu-cms-web',
      exec_mode: 'cluster',
      instances: 1,
      script: 'chunyu-cms-web/.output/server/index.mjs',
      error_file: './logs/error.log',
      out_file: './logs/out.log',
      log_date_format: 'YYYY-MM-DD HH:mm Z',
    }
  ]
};
