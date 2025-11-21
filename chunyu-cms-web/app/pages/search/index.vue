<template>
  <div class="pt-0 md:pt-65px show-search mb-15px">
    <div class="p-x-10px">
      <el-tabs v-model="orderBy">
        <el-tab-pane label="搜索结果" name="createTime"></el-tab-pane>
      </el-tabs>
      <div class="video-list">
        <ul>
          <li v-for="v in movies" :key="v.movieBasicsId">
            <nuxt-link :to="`/column/${v.columnValue}/detail/${v.movieBasicsId}`">
              <div class="relative">
                <NuxtImg v-if="v?.poster" format="webp" loading="lazy" :alt="v?.title" :src="v?.poster" />
                <span v-if="v.movieRate?.rateUserCount" class="rate"> {{ v.movieRate.rate.toFixed(1) }} </span>
              </div>
              <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                <h3>{{ v.title }}</h3>
                <p>
                  <template v-for="actor in v.casts"> {{ actor?.actor?.name }}&nbsp; </template>
                  <span v-if="!v.casts.length">-</span>
                </p>
              </div>
            </nuxt-link>
          </li>
        </ul>
      </div>
      <div
        v-if="isShowLoading"
        ref="pageBottomRef"
        v-loading="true"
        style="--el-mask-color: transparent"
        class="h-60px"
      ></div>
      <el-empty v-if="!isShowLoading && !movies.length" description="暂无数据" :image-size="60"></el-empty>
    </div>
  </div>
</template>

<script setup lang="ts">
  import gsap from 'gsap';
  import { ScrollTrigger } from 'gsap/ScrollTrigger';
  import type { WebMovieList, WebMovieListItem } from '~~/types/api/webMovieList';

  if (import.meta.client) {
    gsap.registerPlugin(ScrollTrigger);
  }

  definePageMeta({
    key: route => route.fullPath
  });

  const route = useRoute();
  const { query } = route;
  const currentPage = ref<number>((route.query.page && +route.query.page) || 1);
  const orderBy = ref<string>((query.orderBy as string) || 'createTime');
  const pageBottomRef = useTemplateRef('pageBottomRef');
  const isShowLoading = ref(true);
  let trigger: ScrollTrigger;

  const movies = ref<WebMovieListItem[]>([]);
  const [{ data: movieData, refresh: movieRefresh }] = await Promise.all([
    useAsyncData(route.fullPath, () => {
      return $fetch<WebMovieList>('/api/web/movie/list', {
        query: {
          keyword: query.keyword,
          pageNum: currentPage.value,
          limit: 12,
          orderBy: orderBy.value
        }
      });
    })
  ]);
  movies.value = movies.value.concat(movieData.value?.rows ?? []);
  if (movies.value.length >= (movieData.value?.total ?? 0)) {
    isShowLoading.value = false;
  }

  if (import.meta.client) {
    onMounted(() => {
      trigger = ScrollTrigger.create({
        trigger: pageBottomRef.value as HTMLDivElement,
        start: 'top bottom',
        onEnter: async () => {
          // 临时禁用触发器，防止重复触发
          trigger.disable();
          currentPage.value++;
          await movieRefresh();
          movies.value = movies.value.concat(movieData.value?.rows ?? []);
          if (movies.value.length >= (movieData.value?.total ?? 0)) {
            isShowLoading.value = false;
            trigger.kill();
          } else {
            setTimeout(() => {
              trigger.enable();
            });
          }
        },
        markers: process.dev // 开发环境下显示标记
      });
    });
  }
</script>

<style lang="scss">
  .show-search {
    .el-form-item__label {
      @apply text-[#999] text-14px;
    }
    .el-tabs__item {
      @apply text-14px text-[#999];
      &.is-active {
        color: #fff;
      }
    }
    .el-tabs__nav-scroll {
      padding-left: 10px;
    }
    .el-tabs__active-bar {
      background: #00f48e;
      box-shadow: 0 0 14px 1px #00f48e;
      box-sizing: border-box;
      height: 4px;
      border-radius: 2px;
    }
    .show__type-filter {
      li {
        @apply inline-block mr-6px h-28px p-x-12px relative text-[#999] leading-[27px] text-14px;
        &.active {
          background: #00c4521a;
          border: 1px solid #00c45229;
          border-radius: 14px;
          a {
            color: #00d157;
          }
          &::before {
            background-image: linear-gradient(90deg, #0000 0, #00ff194d 50%, #0000);
            content: '';
            height: 1px;
            left: calc(50% - 18px);
            position: absolute;
            top: -1px;
            width: 36px;
          }
          &::after {
            background-image: linear-gradient(90deg, #0000 0, #00ff194d 50%, #0000);
            bottom: -1px;
            content: '';
            height: 1px;
            left: calc(50% - 18px);
            position: absolute;
            width: 36px;
          }
        }
      }
    }
  }
</style>
