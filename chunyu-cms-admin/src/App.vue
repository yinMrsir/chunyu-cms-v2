<template>
  <router-view />
</template>

<script setup>
import useSettingsStore from "@/store/modules/settings";
import { handleThemeStyle } from "@/utils/theme";

onMounted(() => {
  nextTick(() => {
    // 初始化主题样式
    handleThemeStyle(useSettingsStore().theme);
  });

  // 反调试保护（通过环境变量控制是否启用）
  const antiDebugEnabled = import.meta.env.VITE_ANTI_DEBUG_ENABLED === "true";
  if (antiDebugEnabled && process.env.NODE_ENV !== "development") {
    antiDebug();
  }
});

function antiDebug() {
  let debug = false;
  let debugInterval;

  // 检测开发者工具
  function checkDevTools() {
    try {
      const start = new Date();
      debugger;
      if (new Date() - start > 100) {
        debug = true;
        showDebugWarning();
      }
    } catch (error) {
      // 忽略调试器相关错误
    }
  }

  // 显示调试警告
  function showDebugWarning() {
    // document.body.innerHTML = `
    //   <div style="
    //     position: fixed;
    //     top: 0;
    //     left: 0;
    //     width: 100%;
    //     height: 100%;
    //     background: #000;
    //     color: #fff;
    //     display: flex;
    //     justify-content: center;
    //     align-items: center;
    //     font-size: 24px;
    //     font-family: Arial, sans-serif;
    //     z-index: 999999;
    //   ">
    //     <div style="text-align: center;">
    //       <h1 style="color: #ff4444; margin-bottom: 20px;">⚠️ DEBUG MODE DETECTED</h1>
    //       <p>Developer tools are not allowed in this application.</p>
    //       <p style="margin-top: 10px; font-size: 16px; color: #ccc;">Please close developer tools to continue.</p>
    //     </div>
    //   </div>
    // `;
  }

  // 定期检测
  debugInterval = setInterval(() => {
    checkDevTools();
  }, 1000);

  // 检测控制台输出
  const consoleLog = console.log;
  const consoleWarn = console.warn;
  const consoleError = console.error;
  const consoleInfo = console.info;

  console.log = function () {
    debug = true;
    showDebugWarning();
    return consoleLog.apply(console, arguments);
  };

  console.warn = function () {
    debug = true;
    showDebugWarning();
    return consoleWarn.apply(console, arguments);
  };

  console.error = function () {
    debug = true;
    showDebugWarning();
    return consoleError.apply(console, arguments);
  };

  console.info = function () {
    debug = true;
    showDebugWarning();
    return consoleInfo.apply(console, arguments);
  };

  // 检测窗口大小变化（开发者工具打开会导致窗口大小变化）
  let windowHeight = window.innerHeight;
  let windowWidth = window.innerWidth;

  window.addEventListener("resize", () => {
    if (
      window.innerHeight !== windowHeight ||
      window.innerWidth !== windowWidth
    ) {
      // 正常的窗口大小变化，更新记录
      windowHeight = window.innerHeight;
      windowWidth = window.innerWidth;
    }
  });

  // 检测开发者工具快捷键
  document.addEventListener("keydown", (e) => {
    // F12
    if (e.keyCode === 123) {
      e.preventDefault();
      showDebugWarning();
    }
    // Ctrl+Shift+I
    if (e.ctrlKey && e.shiftKey && e.keyCode === 73) {
      e.preventDefault();
      showDebugWarning();
    }
    // Ctrl+Shift+J
    if (e.ctrlKey && e.shiftKey && e.keyCode === 74) {
      e.preventDefault();
      showDebugWarning();
    }
    // Ctrl+Shift+C
    if (e.ctrlKey && e.shiftKey && e.keyCode === 67) {
      e.preventDefault();
      showDebugWarning();
    }
    // Ctrl+U
    if (e.ctrlKey && e.keyCode === 85) {
      e.preventDefault();
      showDebugWarning();
    }
  });

  // 检测右键菜单
  document.addEventListener("contextmenu", (e) => {
    e.preventDefault();
    showDebugWarning();
  });

  // 检测页面源码查看
  document.addEventListener("keydown", (e) => {
    if ((e.ctrlKey || e.metaKey) && e.keyCode === 85) {
      e.preventDefault();
      showDebugWarning();
    }
  });
}
</script>
