<template>
  <div class="pt-0 md:pt-65px show-page">
    <Head>
      <Title>{{ $titleRender(`${title}${columnInfo?.name}`) }}</Title>
      <Meta name="description" :content="`最新最全的${title}${columnInfo?.name}尽在淳渔影视。`" />
    </Head>

    <div class="p-x-10px">
      <el-form>
        <el-form-item label="按类型">
          <ul class="show__type-filter">
            <li :class="route.query.gid === '' || route.query.gid === undefined ? 'active' : ''">
              <nuxt-link :to="{ path: route.path, query: { ...route.query, gid: '', orderBy } }">全部</nuxt-link>
            </li>
            <li v-for="item in genres" :key="item.id" :class="Number(route.query.gid) === item.id ? 'active' : ''">
              <nuxt-link :to="{ path: route.path, query: { ...route.query, gid: item.id, orderBy } }">
                {{ item.name }}
              </nuxt-link>
            </li>
          </ul>
        </el-form-item>
        <el-form-item label="按地区">
          <ul class="show__type-filter">
            <li :class="route.query.cid === '' || route.query.cid === undefined ? 'active' : ''">
              <nuxt-link :to="{ path: route.path, query: { ...route.query, cid: '', orderBy } }">全部</nuxt-link>
            </li>
            <li
              v-for="item in countries"
              :key="item.id"
              :class="route.query.cid && +route.query.cid === +item.id ? 'active' : ''"
            >
              <nuxt-link :to="{ path: route.path, query: { ...route.query, cid: item.id, orderBy } }">
                {{ item.name }}
              </nuxt-link>
            </li>
          </ul>
        </el-form-item>
      </el-form>
      <el-form-item label="按年份">
        <ul class="show__type-filter">
          <li :class="route.query.y === '' || route.query.y === undefined ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, y: '', orderBy } }">全部</nuxt-link>
          </li>
          <li v-for="item in years" :key="item" :class="route.query.y && +route.query.y === item ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, y: item, orderBy } }">{{ item }}</nuxt-link>
          </li>
          <li :class="route.query.y === '-1' ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, y: '-1', orderBy } }">更早</nuxt-link>
          </li>
        </ul>
      </el-form-item>
      <el-form-item label="按语言">
        <ul class="show__type-filter">
          <li :class="route.query.l === '' || route.query.l === undefined ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, l: '', orderBy } }">全部</nuxt-link>
          </li>
          <li v-for="item in languages" :key="item.id" :class="route.query.l === item.name ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, l: item.name, orderBy } }">
              {{ item.name }}
            </nuxt-link>
          </li>
        </ul>
      </el-form-item>
      <el-tabs v-model="orderBy" @tab-change="handleTabChange">
        <el-tab-pane label="按时间" name="createTime" :disabled="pending"></el-tab-pane>
        <el-tab-pane label="按人气" name="pv" :disabled="pending"></el-tab-pane>
        <el-tab-pane label="按评分" name="rate" :disabled="pending"></el-tab-pane>
      </el-tabs>
      <div class="video-list">
        <ul>
          <li v-for="v in movies" :key="v.movieBasicsId">
            <nuxt-link :to="`/column/${v.columnValue}/detail/${v.movieBasicsId}`">
              <div class="relative">
                <NuxtImg v-if="v?.poster" format="webp" loading="lazy" :alt="v?.title" :src="v?.poster" />
                <span v-if="v.movieRate?.rateUserCount" class="rate"> {{ v.movieRate.rate.toFixed(1) }} </span>
                <span v-if="v.isPay === 1" class="absolute right-0 top-0 z-10 text-12px md:text-14px p-x-8px bg-orange">
                  付费
                </span>
              </div>
              <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                <h3>{{ v.title }}</h3>
                <p>
                  <template v-for="actor in v.casts"> {{ actor.actor?.name }}&nbsp; </template>
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
  const { query, params } = route;
  const currentPage = ref<number>((query.page && +query.page) || 1);
  const orderBy = ref<string>((query.orderBy as string) || 'createTime');
  const years = ref<number[]>([]);
  const y = new Date().getFullYear();
  for (let i = 0; i <= 20; i++) {
    years.value.push(y - i);
  }
  const pageBottomRef = useTemplateRef('pageBottomRef');
  const isShowLoading = ref(true);
  let trigger: ScrollTrigger | null = null;

  const movies = ref<WebMovieListItem[]>([]);
  const [
    { data: genres },
    { data: countries },
    { data: languages },
    { data: movieData, status: movieStatus, refresh: movieRefresh },
    { data: columnInfo }
  ] = await Promise.all([
    useFetch(`/api/web/basic/genre/all`, {
      query: {
        columnValue: params.columnValue
      },
      transform: data => {
        return data.map((item: any) => ({
          name: item.name,
          id: item.id
        }));
      }
    }),
    useFetch(`/api/web/basic/country/all`, {
      transform: data => {
        return data.map((item: any) => ({
          name: item.name,
          id: item.id
        }));
      }
    }),
    useFetch(`/api/web/basic/language/all`, {
      transform: data => {
        return data.map((item: any) => ({
          name: item.name,
          id: item.id
        }));
      }
    }),
    useAsyncData(
      `${params.columnValue}:${query.gid}:${query.cid}:${query.l}:${query.y}:${currentPage.value}:${orderBy.value}`,
      () => {
        return $fetch<WebMovieList>('/api/web/movie/list', {
          query: {
            columnValue: params.columnValue,
            genreId: query.gid,
            countryId: query.cid,
            language: query.l,
            year: query.y,
            pageNum: currentPage.value,
            limit: 12,
            orderBy: orderBy.value
          }
        });
      }
    ),
    useFetch(`/api/web/column/${route.params.columnValue}`, {
      pick: ['name']
    })
  ]);
  const pending = computed(() => movieStatus.value === 'pending');
  movieData.value?.rows && (movies.value = movies.value.concat(movieData.value.rows));
  if (movies.value.length >= (movieData.value?.total ?? 0)) {
    isShowLoading.value = false;
  }

  const title = computed(() => {
    let html = '';
    if (query.y) {
      html += query.y;
      html += '年';
    }
    if (query.gid) {
      html += '最新最全的';
      html += countries.value?.find(item => item.id === Number(query.cid))?.name || '';
      html += genres.value?.find(item => item.id === Number(query.gid))?.name || '';
      html += '在线观看';
    }
    return html;
  });

  if (import.meta.client) {
    onMounted(() => {
      // 处理切换类型时默认从一个滑动
      const elTabActiveBar = document.querySelector('.el-tabs__active-bar');
      elTabActiveBar?.classList.add('no_transition');
      setTimeout(() => {
        elTabActiveBar?.classList.remove('no_transition');
      });
      createTrigger();
    });
  }

  function createTrigger() {
    trigger = ScrollTrigger.create({
      trigger: pageBottomRef.value as HTMLDivElement,
      start: 'top bottom',
      onEnter: async () => {
        if (!isShowLoading.value && pending) {
          return;
        }
        // 临时禁用触发器，防止重复触发
        trigger?.disable();
        currentPage.value++;
        await movieRefresh();
        movieData.value?.rows && (movies.value = movies.value.concat(movieData.value.rows));
        if (movies.value.length >= (movieData.value?.total ?? 0)) {
          isShowLoading.value = false;
          trigger?.kill();
          trigger = null;
        } else {
          setTimeout(() => {
            trigger?.enable();
          });
        }
      },
      markers: process.dev // 开发环境下显示标记
    });
  }

  async function handleTabChange() {
    isShowLoading.value = true;
    movies.value = [];
    currentPage.value = 1;
    await movieRefresh();
    movieData.value?.rows && (movies.value = movies.value.concat(movieData.value.rows));
    if (movies.value.length >= (movieData.value?.total ?? 0)) {
      isShowLoading.value = false;
    } else if (!trigger) {
      createTrigger();
    }
  }
</script>

<style lang="scss">
  .show-page {
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

<style lang="scss">
  .no_transition {
    transition: none !important;
  }
</style>
