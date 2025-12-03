const { checkAndInstallPnpm, checkAndInstallPM2, buildAdmin, buildWeb, startPM2 } = require("./common");

// 生产环境部署流程
(async () => {
  await checkAndInstallPnpm();
  await checkAndInstallPM2();
  await buildAdmin();
  await buildWeb("pnpm build:pro");
  await startPM2();
})();