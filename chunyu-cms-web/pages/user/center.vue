<template>
  <div v-if="userInfoData.data" class="p-20px pt-74px center-index">
    <div class="grid grid-cols-[132px_1fr] mb-20px">
      <el-avatar :size="112" :src="userInfoData.data.avatar" />
      <div class="pt-10px">
        <h1>{{ userInfoData.data.nickname }}</h1>
        <p class="text-12px color-#FFFFFF59 mt-6px">{{ userInfoData.data.introduction }}</p>
      </div>
    </div>
    <el-tabs v-model="activeTab">
      <el-tab-pane label="作品" name="works">
        <el-empty description="暂无作品" :image-size="60"></el-empty>
      </el-tab-pane>
      <el-tab-pane label="喜欢" name="like">
        <el-empty description="暂无数据" :image-size="60"></el-empty>
      </el-tab-pane>
      <el-tab-pane label="收藏" name="collection">
        <el-empty description="暂无数据" :image-size="60"></el-empty>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script setup>
  import { createToken } from '~/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~/shared/cookiesName';

  definePageMeta({
    layout: 'user-center',
    middleware: 'auth'
  });

  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie(WEB_USER_INFO);

  const activeTab = ref('works');

  const { data: userInfoData } = await useFetch('/api/web/member/user', {
    headers: {
      Token: createToken()
    }
  });
  if (userInfoData.value?.code === 401) {
    token.value = null;
    userInfo.value = null;
    router.push('/');
  }
</script>

<style lang="scss">
  .center-index {
  }
</style>
