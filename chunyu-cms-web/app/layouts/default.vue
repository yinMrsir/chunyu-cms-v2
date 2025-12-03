<template>
  <div>
    <NuxtLoadingIndicator />
    <div
      class="fixed top-0 left-0 h-100vh transition-all duration-300 overflow-hidden z-999 lt-md:hidden"
      :class="sidebarOpen ? 'w-180px' : 'w-64px'"
    >
      <nuxt-link to="/" class="flex justify-center items-center gap-x-5px h-74px bg-#111214">
        <img src="../assets/images/logo.png" alt="" class="h-28px border-rd-5px" />
        <span v-if="textVisible" class="color-#fff text-24px font-bold logo-text">{{ t('web_name') }}</span>
      </nuxt-link>
      <ul class="sidebar-menu-inner">
        <li :class="route.path === '/' ? 'active' : ''">
          <el-tooltip :disabled="textVisible" effect="dark" :content="t('home')" placement="right">
            <nuxt-link to="/">
              <i class="i-flat-color-icons-home w-24px h-24px inline-block"></i>
              <span v-if="textVisible">{{ t('home') }}</span>
            </nuxt-link>
          </el-tooltip>
        </li>
        <li v-for="item in navigation" :key="item.id" :class="route.params.columnValue === item.value ? 'active' : ''">
          <el-tooltip :disabled="textVisible" effect="dark" :content="item.name" placement="right">
            <nuxt-link
              :to="item.type != null && +item.type === 1 ? `/column/${item.value}` : item.value || '/'"
              :target="item.type != null && +item.type === 1 ? '_self' : '_blank'"
            >
              <img :src="item.icon || ''" alt="" class="h-24px" />
              <span v-if="textVisible">{{ item.name }}</span>
            </nuxt-link>
          </el-tooltip>
        </li>
        <li class="border-solid border-t-1px border-#ffffff40 m-x-10px"></li>
        <li :class="route.path.includes('/trending') ? 'active' : ''">
          <el-tooltip :disabled="textVisible" effect="dark" :content="t('ranking_version')" placement="right">
            <nuxt-link to="/trending/movie">
              <i class="i-flat-color-icons-bar-chart w-24px h-24px"></i>
              <span v-if="textVisible">{{ t('ranking_version') }}</span>
            </nuxt-link>
          </el-tooltip>
        </li>
      </ul>
    </div>
    <div class="main-content transition-all duration-300 lt-md:ml-0px" :class="sidebarOpen ? 'ml-180px' : 'ml-64px'">
      <div
        :class="sidebarOpen ? 'pl-196px' : 'pl-80px'"
        class="flex w-full bg-[rgba(17,17,20,0.8)] items-center justify-between gap-10px h-54px fixed left-0 pr-15px z-10 transition-all duration-300 lt-md:hidden"
      >
        <div class="flex items-center gap-10px">
          <el-icon size="26" color="#f2f2f2" class="cursor-pointer" @click="handleSetSideBar">
            <ElIconFold v-if="sidebarOpen" />
            <ElIconExpand v-else />
          </el-icon>
          <div class="search-input">
            <input
              v-model="keyword"
              type="text"
              :placeholder="t('please_enter_the_keywords')"
              style="outline: 0"
              autocomplete="off"
              @keyup.enter="router.push(`/search?keyword=${keyword}`)"
            />
            <nuxt-link :to="`/search?keyword=${keyword}`" class="search-button">
              <el-icon><ElIconSearch /></el-icon>
            </nuxt-link>
          </div>
        </div>
        <div v-if="userInfo" class="cursor-pointer">
          <el-dropdown effec="dark" @command="handleCommand">
            <el-avatar :size="32" :src="userInfo.avatar" />
            <template #dropdown>
              <el-dropdown-menu>
                <el-dropdown-item command="userCenter">{{ t('user_center') }}</el-dropdown-item>
                <el-dropdown-item divided command="logout">{{ t('log_out') }}</el-dropdown-item>
              </el-dropdown-menu>
            </template>
          </el-dropdown>
        </div>
        <div
          v-else
          class="w-88px h-34px bg-#ffffff40 border-rd-8px flex justify-center items-center gap-5px cursor-pointer select-none"
          @click="loginVisible = true"
        >
          <ElIconUserFilled class="w-18px"></ElIconUserFilled>
          {{ t('login') }}
        </div>
      </div>
      <div class="flex justify-between h-58px items-center p-x-20px md:hidden fixed w-full bg-#111214 z-999">
        <nuxt-link to="/" class="flex items-center gap-x-5px">
          <img src="../assets/images/logo.png" alt="" class="h-28px border-rd-5px" />
          <span class="color-#fff text-20px font-bold logo-text">{{ t('web_name') }}</span>
        </nuxt-link>
        <el-icon size="26" color="#f2f2f2" class="cursor-pointer" @click="sidebarMobileOpen = true">
          <ElIconFold v-if="sidebarMobileOpen" />
          <ElIconExpand v-else />
        </el-icon>
      </div>
      <div class="h-58px md:hidden"></div>
      <slot />
      <div
        v-if="isShowFooter"
        class="text-10px color-[rgba(255,255,255,0.6)] m-x-15px mt-20px mb-15px border-solid border-#ffffff40 border-t-1px pt-20px"
      >
        <div class="p-x-5vh m-x-auto text-center">
          注：本网站为淳渔cms演示站点，提供的电视剧和电影资源均系收集于各大视频网站<br />
          若本站收录的节目无意侵犯了贵司版权,请给542968439@qq.com留言,我们会及时逐步删除和规避程序自动搜索采集到的不提供分享的版权影视。<br />
          本站仅供测试和学习交流。请大家支持正版。

          <p class="mt-15px text-center block">Copyright {{ dayjs().format('YYYY') }} 淳渔影视 All Rights Reserved.</p>
        </div>
      </div>
    </div>

    <el-drawer
      v-model="sidebarMobileOpen"
      style="--el-bg-color: #111214"
      direction="ltr"
      size="220px"
      :with-header="false"
    >
      <div class="flex justify-center items-center gap-x-5px h-74px bg-#111214">
        <img src="../assets/images/logo.png" alt="" class="h-34px" />
        <span class="color-#fff text-24px font-bold logo-text">{{ t('web_name') }}</span>
      </div>
      <ul class="sidebar-menu-inner">
        <li :class="route.path === '/' ? 'active' : ''">
          <nuxt-link to="/">
            <i class="i-flat-color-icons-home w-24px h-24px inline-block"></i>
            <span>{{ t('home') }}</span>
          </nuxt-link>
        </li>
        <li v-for="item in navigation" :key="item.id" :class="route.params.columnValue === item.value ? 'active' : ''">
          <nuxt-link
            :to="item.type != null && +item.type === 1 ? `/column/${item.value}` : item.value || '/'"
            :target="item.type != null && +item.type === 1 ? '_self' : '_blank'"
          >
            <img :src="item.icon || ''" alt="" class="h-24px" />
            <span>{{ item.name }}</span>
          </nuxt-link>
        </li>
        <li class="border-solid border-t-1px border-#ffffff40 m-x-10px"></li>
        <li>
          <nuxt-link to="/trending/movie">
            <i class="i-flat-color-icons-bar-chart w-24px h-24px"></i>
            <span>{{ t('ranking_version') }}</span>
          </nuxt-link>
        </li>
      </ul>
      <div class="search-input mt-10px">
        <input
          v-model="keyword"
          type="text"
          :placeholder="t('please_enter_the_keywords')"
          style="outline: 0; width: 100%"
          autocomplete="off"
          @keyup.enter="handleSearch"
        />
        <nuxt-link :to="`/search?keyword=${keyword}`" class="search-button">
          <el-icon><ElIconSearch /></el-icon>
        </nuxt-link>
      </div>

      <nuxt-link
        v-if="userInfo"
        to="/user/center"
        class="cursor-pointer absolute bottom-20px right-20px flex items-center gap-x-8px text-12px"
      >
        <el-avatar :size="32" :src="userInfo.avatar" />
        {{ userInfo.nickname }}
      </nuxt-link>
      <div
        v-else
        class="absolute bottom-20px right-20px w-88px h-34px bg-#ffffff40 border-rd-8px flex justify-center items-center gap-5px cursor-pointer select-none"
        @click="handleShowLogin"
      >
        <ElIconUserFilled class="w-18px"></ElIconUserFilled>
        {{ t('login') }}
      </div>
    </el-drawer>

    <Login />
  </div>
</template>

<script setup lang="ts">
  import dayjs from 'dayjs';
  import { useLoginVisible, useSidebarOpen, useTextVisible } from '~~/app/composables/states';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';

  const { t } = useI18n();
  const route = useRoute();
  const router = useRouter();
  const userInfo = useCookie<CookieUserInfo>(WEB_USER_INFO);
  const token = useCookie(WEB_TOKEN);

  const sidebarOpen = useSidebarOpen();
  const textVisible = useTextVisible();
  const loginVisible = useLoginVisible();
  const sidebarMobileOpen = ref(false);
  const keyword = ref('');

  // 反调试保护（通过环境变量控制是否启用）
  onMounted(() => {
    const $config = useRuntimeConfig();
    if ($config.public.antiDebugEnabled && process.env.NODE_ENV !== 'development') {
      antiDebug();
    }
  });

  function antiDebug() {
    // 检测开发者工具
    function checkDevTools() {
      try {
        const start = new Date().getTime();
        // eslint-disable-next-line no-debugger
        debugger;
        if (new Date().getTime() - start > 100) {
          showDebugWarning();
        }
      } catch (error) {}
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
    setInterval(() => {
      checkDevTools();
    }, 1000);

    // 检测控制台输出
    const consoleLog = console.log;
    const consoleWarn = console.warn;
    const consoleError = console.error;
    const consoleInfo = console.info;

    console.log = function () {
      showDebugWarning();
      return consoleLog.apply(console, Array.from(arguments));
    };

    console.warn = function () {
      showDebugWarning();
      return consoleWarn.apply(console, Array.from(arguments));
    };

    console.error = function () {
      showDebugWarning();
      return consoleError.apply(console, Array.from(arguments));
    };

    console.info = function () {
      showDebugWarning();
      return consoleInfo.apply(console, Array.from(arguments));
    };

    // 检测开发者工具快捷键
    document.addEventListener('keydown', e => {
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
    document.addEventListener('contextmenu', e => {
      e.preventDefault();
      showDebugWarning();
    });

    // 检测页面源码查看
    document.addEventListener('keydown', e => {
      if ((e.ctrlKey || e.metaKey) && e.keyCode === 85) {
        e.preventDefault();
        showDebugWarning();
      }
    });
  }

  watch(
    () => route.path,
    () => {
      sidebarMobileOpen.value = false;
    }
  );

  const fullPathArr = ['/movie/video', '/movie/resources'];
  const isShowFooter = computed(() => {
    // 检查当前路径是否是否包含数组中的任何一个子路径
    const hasMatch = fullPathArr.some(path => route.fullPath.includes(path));
    // 如果包含包含则返回false，否则返回true
    return !hasMatch;
  });

  const { data: navigation } = await useFetch('/api/web/basic/columns/list');

  function handleSetSideBar() {
    sidebarOpen.value = !sidebarOpen.value;
    if (!textVisible.value) {
      setTimeout(() => {
        textVisible.value = true;
      }, 300);
    } else {
      textVisible.value = false;
    }
  }

  function handleShowLogin() {
    sidebarMobileOpen.value = false;
    loginVisible.value = true;
  }

  const handleCommand = (command: string | number | object) => {
    switch (command) {
      case 'userCenter':
        router.push('/user/center');
        break;
      case 'logout':
        userInfo.value = undefined;
        token.value = null;
        window.location.reload();
        break;
      default:
        break;
    }
  };

  function handleSearch() {
    router.push(`/search?keyword=${keyword.value}`);
    sidebarMobileOpen.value = false;
  }
</script>

<style lang="scss">
  .sidebar-menu-inner {
    li {
      a {
        @apply p-x-12px p-y-10px flex items-center gap-x-10px m-x-8px m-y-2px;
        span {
          @apply text-white/80;
        }
        &:hover {
          background: #2d2f39;
          border-radius: 5px;
        }
      }
      &.active {
        a {
          background: #2d2f39;
          border-radius: 5px;
          position: relative;
          &::before {
            position: absolute;
            content: '';
            background: #00f48e;
            box-shadow: 4px 0 14px 1px #00f48e;
            box-sizing: border-box;
            height: 20px;
            width: 4px;
            border-radius: 2px;
            left: 0;
          }
        }
      }
    }
  }
  .logo-text {
    color: #ffffff;
    background: linear-gradient(224deg, #fff, #d6ffea);
    -webkit-background-clip: text; /*将设置的背景颜色限制在文字中*/
    -webkit-text-fill-color: transparent; /*给文字设置成透明*/
  }
</style>
