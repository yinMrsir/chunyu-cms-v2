const { execSync } = require("child_process");
const path = require("path");
const fs = require("fs");

// 公共配置
const config = {
  webDir: path.join(process.cwd(), "chunyu-cms-web"),
  adminDir: path.join(process.cwd(), "chunyu-cms-admin"),
  targetDir: path.join(process.cwd(), "chunyu-cms-web", "public", "admin")
};

// 检查并安装pnpm
const checkAndInstallPnpm = () => {
  try {
    execSync("pnpm -v", { stdio: "ignore" });
    console.log("pnpm已安装");
  } catch (error) {
    console.log("pnpm未安装，开始安装pnpm...");
    const installCommand =
      process.platform === "win32"
        ? "npm install -g pnpm"
        : "sudo npm install -g pnpm";
    execSync(installCommand, { stdio: "inherit" });
    console.log("pnpm安装完成");
  }
};

// 检查并安装pm2
const checkAndInstallPM2 = () => {
  try {
    execSync("pm2 -v", { stdio: "ignore" });
    console.log("pm2已安装");
  } catch (error) {
    console.log("pm2未安装，开始安装pm2...");
    const installCommand =
      process.platform === "win32"
        ? "npm install -g pm2"
        : "sudo npm install -g pm2";
    execSync(installCommand, { stdio: "inherit" });
    console.log("pm2安装完成");
  }
};

// 构建Admin部分
const buildAdmin = () => {
  // 先确保目标目录存在
  if (!fs.existsSync(config.targetDir)) {
    fs.mkdirSync(config.targetDir, { recursive: true });
    console.log("目标目录已创建");
  }

  // 进入chunyu-cms-admin目录执行相关操作
  execSync(`cd ${config.adminDir} && pnpm install && pnpm build:single`, {
    stdio: "inherit",
  });
  console.log("chunyu-cms-admin构建完成");

  // 将chunyu-cms-admin/dist目录下所有文件复制到目标目录
  execSync(`cp -r ${path.join(config.adminDir, "dist")}/* ${config.targetDir}`, {
    stdio: "inherit",
  });
  console.log("文件复制完成");
};

// 构建Web部分
const buildWeb = (command = "pnpm build:pro") => {
  execSync(`cd ${config.webDir} && pnpm install && ${command}`, { stdio: "inherit" });
  console.log("chunyu-cms-web构建完成");
};

// 启动PM2
const startPM2 = () => {
  execSync(`cd ${config.webDir} && pm2 start pm2.config.cjs`, { stdio: "inherit" });
  console.log("pm2启动完成");
};

module.exports = {
  config,
  checkAndInstallPnpm,
  checkAndInstallPM2,
  buildAdmin,
  buildWeb,
  startPM2
};