const { checkAndInstallPnpm, buildAdmin, buildWeb } = require("./common");

// 仅执行构建流程，不启动PM2
(async () => {
  await checkAndInstallPnpm();
  await buildAdmin();
  await buildWeb("pnpm build:pro");
  console.log("构建完成, 请将[chunyu-cms-web/.output]上传到服务器");
})();