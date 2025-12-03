const { checkAndInstallPnpm, checkAndInstallPM2, buildAdmin, buildWeb, startPM2 } = require("./common");

// 执行完整部署流程
(async () => {
  await checkAndInstallPnpm();
  await checkAndInstallPM2();
  await buildAdmin();
  await buildWeb("pnpm build");
  await startPM2();
})();