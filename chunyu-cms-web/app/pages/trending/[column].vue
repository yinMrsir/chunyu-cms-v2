<template>
  <div class="mt-0 md:pt-65px">
    <div class="column-box">
      <div class="pt-64px trending-box m-x-auto flex gap-x-25px">
        <nuxt-link
          v-for="item in navigation"
          :key="item.id"
          :to="`/trending/${item.value}`"
          :class="item.value === route.params.column ? 'active' : ''"
        >
          {{ item.name }}
        </nuxt-link>
      </div>
    </div>
    <div class="trending-box rank-box">
      <span
        v-for="(item, index) in trendingOptions"
        :key="index"
        :class="item.value === trendingActive ? 'active' : ''"
        @click="trendingActive = item.value"
      >
        {{ item.text }}
      </span>
    </div>
    <div class="trending-list trending-box m-x-auto mt-20px text-14px">
      <div class="trending-item">
        <nuxt-link
          v-for="(item, index) in list"
          :key="item.id"
          :to="`/column/${item.movie.columnValue}/detail/${item.movie.movieBasicsId}`"
          class="grid grid-cols-[120px_1fr] mb-25px relative"
        >
          <div class="relative">
            <img
              v-if="item.movie?.poster"
              class="w-100px border-rd-10px aspect-[3/4] object-cover"
              :src="item.movie.poster"
              alt=""
            />
            <span
              style="font-family: Impact, sans-serif"
              class="absolute left-5px top-5px font-bold text-18px text-shadow-[0_0_5px_#000]"
              :class="
                index === 0 ? 'color-#f42c5e' : index === 1 ? 'color-#ff8000' : index === 2 ? 'color-#ffbf00' : ''
              "
            >
              {{ index + 1 }}
            </span>
          </div>
          <div class="trending-info">
            <div>
              <div class="text-16px mb-6px">
                {{ item.movie.title }}
              </div>
              <div class="trending-desc__type">
                {{ item.movie.year }}
                <template v-if="item.movie.tags"> / {{ item.movie.tags.split(',').join(' ') }} </template>
                <template v-if="item.movie.casts.length">
                  / {{ item.movie.casts.map(item => item.actor?.name).join(' ') }}
                </template>
              </div>
            </div>
            <div class="trending-desc">
              <p class="trending-desc__info">
                {{ item.movie.summary }}
              </p>
            </div>
          </div>
          <div class="absolute right-0px top-50% transform-translate-y-[-50%] flex flex-col items-center">
            <span class="text-16px md:text-22px mr-5px flex items-center gap-4px font-bold">
              <i class="i-fxemoji-fire h-16px md:h-20px inline-block"></i>
              {{ (item as any)?.[`${trendingActive}Pv`] || 0 }}
            </span>
            <span class="text-12px md:text-14px color-#ffffff66">
              本{{ trendingActive === 'year' ? '年' : trendingActive === 'month' ? '月' : '周' }}
              {{ (item as any)?.[`${trendingActive}Increment`] }}
            </span>
          </div>
        </nuxt-link>
        <div
          v-if="isShowLoading"
          ref="pageBottomRef"
          v-loading="true"
          style="--el-mask-color: transparent"
          class="h-60px"
        ></div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
  import gsap from 'gsap';
  import { ScrollTrigger } from 'gsap/ScrollTrigger';
  import { useAsyncData } from '#app';
  import type { WebMovieTrendingList, WebMovieTrendingListItem } from '~~/types/api/webMovieTrendingList';

  if (import.meta.client) {
    gsap.registerPlugin(ScrollTrigger);
  }

  const route = useRoute();

  const trendingOptions = ref([
    { text: '周榜', value: 'weekly' },
    { text: '月榜', value: 'month' },
    { text: '年榜', value: 'year' }
  ]);
  const trendingActive = ref<string>('weekly');
  const pageNum = ref(1);
  const list = ref<WebMovieTrendingListItem[]>([]);
  const pageBottomRef = useTemplateRef('pageBottomRef');
  const isShowLoading = ref(true);
  let trigger: globalThis.ScrollTrigger | null = null;

  const { data: navigation } = await useFetch('/api/web/basic/columns/list?type=1');
  const {
    data: weeklys,
    status: weeklyStatus,
    refresh: refreshWeeklys
  } = await useAsyncData(route.fullPath, () => {
    return $fetch<WebMovieTrendingList>('/api/web/movie/trending/list', {
      params: {
        columnValue: route.params.column,
        pageNum: pageNum.value,
        type: trendingActive.value
      }
    });
  });
  const pending = computed(() => weeklyStatus.value === 'pending');
  list.value = list.value.concat(weeklys.value?.rows ?? []);
  if (list.value.length >= (weeklys.value?.total ?? 0)) {
    isShowLoading.value = false;
  }

  watch(
    () => trendingActive.value,
    async () => {
      isShowLoading.value = true;
      list.value = [];
      pageNum.value = 1;
      await refreshWeeklys();
      list.value = list.value.concat(weeklys.value?.rows ?? []);
      if (list.value.length >= (weeklys.value?.total ?? 0)) {
        isShowLoading.value = false;
      } else {
        createTrigger();
      }
    }
  );

  if (import.meta.client) {
    onMounted(() => {
      createTrigger();
    });
  }

  function createTrigger() {
    trigger = ScrollTrigger.create({
      trigger: pageBottomRef.value,
      start: 'top bottom',
      onEnter: async () => {
        if (!isShowLoading.value && pending) {
          return;
        }
        // 临时禁用触发器，防止重复触发
        trigger?.disable();
        pageNum.value++;
        await refreshWeeklys();
        list.value = list.value.concat(weeklys.value?.rows ?? []);
        if (list.value.length >= (weeklys.value?.total ?? 0)) {
          isShowLoading.value = false;
          trigger?.kill();
          trigger = null;
        } else {
          setTimeout(() => {
            trigger?.enable();
          });
        }
      }
    });
  }
</script>

<style lang="scss">
  .column-box {
    background: url('/images/bg.jpg') no-repeat center center / cover;
    @apply h-105px;
    a {
      &.active {
        @apply text-[#00e038];
      }
    }
  }
  .trending-box {
    @apply w-[90%] md:w-[80%] m-x-auto;
  }
  .rank-box {
    @apply m-x-auto flex gap-x-15px mt-15px;
    span {
      @apply relative p-5px cursor-pointer;
      &.active {
        @apply text-[#00e038];
        &::before {
          content: '';
          @apply w-10px h-3px bg-[#00e038] absolute left-[50%]  translate-x-[-50%] bottom-0;
        }
      }
    }
  }
  .trending-info {
    @apply flex flex-col justify-between p-y-8px flex-shrink-0;
    .trending-desc {
      &__type {
        @apply truncate inline-block w-[calc(100vw-220px)] md:w-[calc(100vw-580px)] xl:w-50vw;
      }
      &__info {
        @apply text-[#ffffff66] w-[calc(100vw-240px)] md:w-[calc(100vw-580px)] xl:w-50vw;
        text-overflow: ellipsis;
        display: -webkit-box;
        overflow: hidden;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 3;
      }
    }
  }
</style>
