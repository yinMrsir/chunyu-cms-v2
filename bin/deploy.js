const { execSync } = require('child_process');
const path = require('path');
const fs = require('fs');

// 检查并安装pnpm
const checkAndInstallPnpm = () => {
  try {
    // 尝试执行pnpm -v命令查看版本，若成功则表示已安装
    execSync('pnpm -v', { stdio: 'ignore' });
    console.log('pnpm已安装');
  } catch (error) {
    console.log('pnpm未安装，开始安装pnpm...');
    // 根据不同操作系统选择合适的安装命令，这里以常见的Linux和macOS为例，使用npm安装pnpm
    const installCommand = process.platform === 'win32'? 'npm install -g pnpm' :'sudo npm install -g pnpm';
    execSync(installCommand, { stdio: 'inherit' });
    console.log('pnpm安装完成');
  }
};

// 检查并安装pm2
const checkAndInstallPM2 = () => {
  try {
    // 尝试执行pm2 -v命令查看版本，若成功则表示已安装
    execSync('pm2 -v', { stdio: 'ignore' });
    console.log('pm2已安装');
  } catch (error) {
    console.log('pm2未安装，开始安装pm2...');
    // 根据不同操作系统选择合适的安装命令，这里以常见的Linux和macOS为例，使用npm安装pm2
    const installCommand = process.platform === 'win32'? 'npm install -g pm2' :'sudo npm install -g pm2';
    execSync(installCommand, { stdio: 'inherit' });
    console.log('pm2安装完成');
  }
};

// 执行主要的构建和文件复制等流程
const mainProcess = () => {
  const webDir = path.join(process.cwd(), 'chunyu-cms-web');
  const adminDir = path.join(process.cwd(), 'chunyu-cms-admin');
  const targetDir = path.join(webDir, 'public/admin');

  // 先确保目标目录存在，如果不存在则创建它
  if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
    console.log('目标目录已创建');
  }

  // 进入chunyu-cms-admin目录执行相关操作
  execSync(`cd ${adminDir} && pnpm install && pnpm build:single`, { stdio: 'inherit' });
  console.log('chunyu-cms-admin构建完成');

  // 将chunyu-cms-admin/dist目录下所有文件复制到目标目录
  execSync(`cp -r ${path.join(adminDir, 'dist')}/* ${targetDir}`, { stdio: 'inherit' });
  console.log('文件复制完成');

  // 进入chunyu-cms-web目录执行相关操作
  execSync(`cd ${webDir} && pnpm install && pnpm build`, { stdio: 'inherit' });
  console.log('chunyu-cms-web构建完成');

  // 执行pm2启动命令
  execSync('pm2 start pm2.config.cjs', { stdio: 'inherit' });
  console.log('pm2启动完成');
};

(async () => {
  // 先检查并安装pnpm
  await checkAndInstallPnpm();
  // 再检查并安装pm2
  await checkAndInstallPM2();
  // 执行主要流程
  await mainProcess();
})();
