<template>
  <div v-if="userInfoData?.data" class="p-20px pt-74px center-index">
    <div class="grid grid-cols-[132px_1fr] mb-20px">
      <div class="center-index__avatar" @click="router.push('/user/information')">
        <el-avatar :size="112" :src="userInfoData.data.avatar" />
      </div>
      <div class="pt-10px">
        <h1>{{ userInfoData.data.nickname }}</h1>
        <p class="text-12px color-#FFFFFF59 mt-6px">{{ userInfoData.data.introduction }}</p>
      </div>
    </div>
    <el-tabs v-model="activeTab">
      <el-tab-pane label="我的收藏" name="collection"> 收藏 </el-tab-pane>
      <el-tab-pane label="我的评论" name="comment"> 评论 </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script setup lang="ts">
  import { createToken } from '~~/app/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';

  definePageMeta({
    layout: 'user-center',
    middleware: 'auth'
  });

  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie<CookieUserInfo>(WEB_USER_INFO);
  const activeTab = ref('collection');

  const { data: userInfoData } = await useFetch('/api/web/member/user', {
    headers: {
      Token: createToken()
    }
  });
  if (userInfoData.value?.code === 401) {
    token.value = null;
    userInfo.value = undefined;
    router.push('/');
  }
</script>

<style lang="scss">
  .center-index {
    &__avatar {
      position: relative;
      cursor: pointer;
      &:hover::before {
        content: '修改头像';
        position: absolute;
        width: 112px;
        height: 112px;
        background: rgba(0, 0, 0, 0.5);
        font-size: 16px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
      }
    }
  }
</style>
