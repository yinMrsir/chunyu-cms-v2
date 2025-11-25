<template>
  <div class="user-center-layout">
    <NuxtLoadingIndicator />
    <div class="fixed top-0 left-0 h-100vh z-999 w-64px bg-#000 flex flex-col justify-between">
      <div>
        <nuxt-link to="/" class="flex justify-center items-center gap-x-5px h-74px bg-#111214">
          <img src="../assets/images/logo.png" alt="" class="h-28px border-rd-5px" />
        </nuxt-link>
        <ul class="menu">
          <li>
            <nuxt-link to="/user/center">
              <i class="i-fxemoji-contact"></i>
              <span class="text-12px">个人中心</span>
            </nuxt-link>
          </li>
          <li>
            <nuxt-link to="/user/wallet">
              <i class="i-fxemoji-moneybag"></i>
              <span class="text-12px">钱包</span>
            </nuxt-link>
          </li>
          <li>
            <nuxt-link to="/user/shorts">
              <i class="i-fxemoji-filmprojector"></i>
              <span class="text-12px">短视频</span>
            </nuxt-link>
          </li>
        </ul>
      </div>
      <div class="text-12px">
        <nuxt-link
          to="/user/information"
          class="hover:bg-#2d2f39 flex flex-col items-center gap-5px mb-15px m-x-5px p-y-8px cursor-pointer"
        >
          <ElIconEdit class="w-18px" />
          <span>编辑</span>
        </nuxt-link>
        <div
          class="hover:bg-#2d2f39 flex flex-col items-center gap-5px mb-15px m-x-5px p-y-8px cursor-pointer"
          @click="handleLogout"
        >
          <ElIconSwitchButton class="w-18px" />
          <span>退出</span>
        </div>
      </div>
    </div>
    <div class="ml-64px">
      <div
        class="pl-80px flex w-full bg-[rgba(17,17,20,0.8)] items-center justify-between gap-10px h-54px fixed left-0 pr-15px z-10 transition-all duration-300"
      >
        <div class="flex items-center gap-10px">
          <div class="search-input">
            <input
              v-model="keyword"
              type="text"
              placeholder="请输入关键字"
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
          <el-dropdown @command="handleCommand">
            <el-avatar :size="32" :src="userInfo.avatar" />
            <template #dropdown>
              <el-dropdown-menu>
                <el-dropdown-item command="userCenter">个人中心</el-dropdown-item>
                <el-dropdown-item divided command="logout">退出登录</el-dropdown-item>
              </el-dropdown-menu>
            </template>
          </el-dropdown>
        </div>
      </div>
      <el-config-provider :locale="zhCn">
        <slot />
      </el-config-provider>
    </div>
  </div>
</template>

<script setup lang="ts">
  import { ElConfigProvider } from 'element-plus';
  import zhCn from 'element-plus/es/locale/lang/zh-cn';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';

  const keyword = ref('');
  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie<CookieUserInfo>(WEB_USER_INFO);

  function handleLogout() {
    token.value = null;
    userInfo.value = undefined;
    router.push('/');
  }

  const handleCommand = (command: string | number | object) => {
    switch (command) {
      case 'userCenter':
        router.push('/user/center');
        break;
      case 'logout':
        handleLogout();
        break;
      default:
        break;
    }
  };
</script>

<style lang="scss">
  .user-center-layout {
    .menu {
      @apply flex flex-col gap-y-15px mt-15px;
      li {
        @apply hover:bg-[#2d2f39] m-x-5px rounded-5px p-y-8px transition-all;
        a {
          @apply flex flex-col justify-center items-center gap-5px;
          i {
            @apply w-22px h-22px;
          }
        }
      }
    }
  }
</style>
