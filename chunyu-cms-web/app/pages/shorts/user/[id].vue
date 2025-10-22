<template>
  <div class="p-20px pt-24px md:pt-82px short-user-index">
    <div class="grid grid-cols-[132px_1fr] mb-20px">
      <div class="short-user-index__avatar">
        <el-avatar :size="112" :src="userInfoData?.avatar" />
      </div>
      <div class="pt-10px">
        <h1>{{ userInfoData?.nickname }}</h1>
        <p class="text-12px color-#FFFFFF59 mt-6px">{{ userInfoData?.introduction }}</p>
      </div>
    </div>
    <el-tabs v-model="activeTab">
      <el-tab-pane label="作品" name="works">
        <div class="works-box">
          <nuxt-link
            v-for="(item, index) in shorts"
            :key="index"
            :to="`/shorts/${obfuscateId(item.id)}`"
            class="works-box__item"
          >
            <NuxtImg size="200px" format="webp" loading="lazy" :src="item.poster" />
          </nuxt-link>
        </div>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script setup>
  import { obfuscateId } from '~~/app/utils/obfuscator';

  const route = useRoute();

  const activeTab = ref('works');
  const shorts = ref([]);

  const { data: userInfoData } = await useFetch(`/api/web/short/user/${route.params.id}`);
  if (!userInfoData.value) {
    throw createError({
      statusCode: 404
    });
  }

  const { data: list } = await useFetch(`/api/web/short/list?memberUserId=${route.params.id}&limit=12`);
  shorts.value = list.value;
</script>

<style lang="scss">
  .short-user-index {
    &__avatar {
      position: relative;
      cursor: pointer;
    }
    .works-box {
      @apply grid gap-15px grid-cols-3 md:grid-cols-4 lg:grid-cols-6 md:gap-x-20px;
      &__item {
        position: relative;
        background: #1c1d1f;
        border-radius: 10px;
        overflow: hidden;
        aspect-ratio: 3 / 4;
        img {
          width: 100%;
          height: 100%;
          object-fit: cover;
          overflow: hidden;
        }
      }
    }
  }
</style>
