import path from "path";
import { defineConfig, loadEnv } from "vite";
import createVitePlugins from "./vite/plugins";

// https://vitejs.dev/config/
export default defineConfig(({ mode, command }) => {
  const env = loadEnv(mode, process.cwd());
  const { VITE_APP_ENV, VITE_APP_BUILD_BASE } = env;
  return {
    // 部署生产环境和开发环境下的URL。
    // 默认情况下，vite 会假设你的应用是被部署在一个域名的根路径上
    base: VITE_APP_ENV === "production" ? VITE_APP_BUILD_BASE : "/",
    plugins: createVitePlugins(env, command === "build"),
    resolve: {
      // https://cn.vitejs.dev/config/#resolve-alias
      alias: {
        // 设置路径
        "~": path.resolve(__dirname, "./"),
        // 设置别名
        "@": path.resolve(__dirname, "./src"),
      },
      // https://cn.vitejs.dev/config/#resolve-extensions
      extensions: [".mjs", ".js", ".ts", ".jsx", ".tsx", ".json", ".vue"],
    },
    // vite 相关配置
    server: {
      port: 4000,
      host: true,
      open: true,
      proxy: {
        // https://cn.vitejs.dev/config/#server-proxy
        "/dev-api": {
          target: "http://127.0.0.1:3000/api/admin",
          changeOrigin: true,
          rewrite: (p) => p.replace(/^\/dev-api/, ""),
        },
        "/oss": {
          target: "https://oss.yinchunyu.com",
          changeOrigin: true,
          rewrite: (p) => p.replace(/^\/oss/, ""),
        },
        "/uploads": {
          target: "http://127.0.0.1:3000/uploads",
          changeOrigin: true,
          rewrite: (p) => p.replace(/^\/uploads/, ""),
        },
      },
    },
    // fix:error:stdin>:7356:1: warning: "@charset" must be the first rule in the file
    css: {
      postcss: {
        plugins: [
          {
            postcssPlugin: "internal:charset-removal",
            AtRule: {
              charset: (atRule) => {
                if (atRule.name === "charset") {
                  atRule.remove();
                }
              },
            },
          },
        ],
      },
    },
  };
});
