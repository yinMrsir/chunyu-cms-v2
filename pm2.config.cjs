module.exports = {
  apps : [
    {
      name: 'chunyu-cms-web',
      exec_mode: 'cluster',
      instances: 1,
      script: 'chunyu-cms-web/.output/server/index.mjs'
    }
  ]
};
