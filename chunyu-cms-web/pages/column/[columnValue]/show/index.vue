<template>
  <div class="pt-0 md:pt-65px show-page">
    <Head>
      <Title>{{ $titleRender(`${title}_${columnInfo?.name}`) }}</Title>
      <Meta name="description" :content="`最新最全的${title}${columnInfo?.name}尽在淳渔影视。`" />
    </Head>

    <div class="p-x-10px">
      <el-form>
        <el-form-item label="按类型">
          <ul class="show__type-filter">
            <li :class="route.query.gid === '' || route.query.gid === undefined ? 'active' : ''">
              <nuxt-link :to="{ path: route.path, query: { ...route.query, gid: '' } }">全部</nuxt-link>
            </li>
            <li v-for="item in genres" :key="item.id" :class="Number(route.query.gid) === item.id ? 'active' : ''">
              <nuxt-link :to="{ path: route.path, query: { ...route.query, gid: item.id } }">{{ item.name }}</nuxt-link>
            </li>
          </ul>
        </el-form-item>
        <el-form-item label="按地区">
          <ul class="show__type-filter">
            <li :class="route.query.cid === '' || route.query.cid === undefined ? 'active' : ''">
              <nuxt-link :to="{ path: route.path, query: { ...route.query, cid: '' } }">全部</nuxt-link>
            </li>
            <li
              v-for="item in countries"
              :key="item.id"
              :class="route.query.cid && +route.query.cid === +item.id ? 'active' : ''"
            >
              <nuxt-link :to="{ path: route.path, query: { ...route.query, cid: item.id } }">{{ item.name }}</nuxt-link>
            </li>
          </ul>
        </el-form-item>
      </el-form>
      <el-form-item label="按年份">
        <ul class="show__type-filter">
          <li :class="route.query.y === '' || route.query.y === undefined ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, y: '' } }">全部</nuxt-link>
          </li>
          <li v-for="item in years" :key="item" :class="route.query.y && +route.query.y === item ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, y: item } }">{{ item }}</nuxt-link>
          </li>
        </ul>
      </el-form-item>
      <el-form-item label="按语言">
        <ul class="show__type-filter">
          <li :class="route.query.l === '' || route.query.l === undefined ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, l: '' } }">全部</nuxt-link>
          </li>
          <li v-for="item in languages" :key="item.id" :class="route.query.l === item.name ? 'active' : ''">
            <nuxt-link :to="{ path: route.path, query: { ...route.query, l: item.name } }">{{ item.name }}</nuxt-link>
          </li>
        </ul>
      </el-form-item>
      <el-tabs v-model="orderBy" @tab-change="handleTabChange">
        <el-tab-pane label="按时间" name="createTime" :disabled="pending"></el-tab-pane>
        <el-tab-pane label="按人气" name="pv" :disabled="pending"></el-tab-pane>
        <!--        <el-tab-pane label="按评分" name="rate" :disabled="pending"></el-tab-pane>-->
      </el-tabs>
      <div class="video-list">
        <ul>
          <li v-for="v in movies" :key="v.movieBasicsId">
            <nuxt-link :to="`/column/${v.columnValue}/video/${v.movieBasicsId}`">
              <img :src="v.poster" />
              <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                <h3>{{ v.title }}</h3>
                <p>
                  <template v-for="actor in v.casts"> {{ actor.actor.name }}&nbsp; </template>
                  <span v-if="!v.casts.length">-</span>
                </p>
              </div>
            </nuxt-link>
          </li>
        </ul>
      </div>
      <div v-if="isShowLoading" ref="pageBottomRef" v-loading="true" class="h-60px"></div>
    </div>
  </div>
</template>

<script setup lang="ts">
  import gsap from 'gsap';
  import { ScrollTrigger } from 'gsap/ScrollTrigger';

  if (process.client) {
    gsap.registerPlugin(ScrollTrigger);
  }

  definePageMeta({
    key: route => route.fullPath
  });

  const route = useRoute();
  const { query, params } = route;
  const currentPage = ref<number>((route.query.page && +route.query.page) || 1);
  const orderBy = ref<string>((query.orderBy as string) || 'createTime');
  const years = ref<number[]>([]);
  const y = new Date().getFullYear();
  for (let i = 0; i <= 15; i++) {
    years.value.push(y - i);
  }
  const pageBottomRef = useTemplateRef('pageBottomRef');
  const isShowLoading = ref(true);
  let trigger: ScrollTrigger;

  const movies = ref<any[]>([]);
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
    useAsyncData(() => {
      return $fetch('/api/web/movie/list', {
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
    }),
    useFetch(`/api/web/column/${route.params.columnValue}`, {
      pick: ['name']
    })
  ]);
  const pending = computed(() => movieStatus.value === 'pending');
  movies.value = movies.value.concat(movieData.value?.rows);
  if (movies.value.length >= movieData.value?.total) {
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
      html += genres.value?.find(item => item.id === Number(query.gid))?.name;
      html += '在线观看';
    }
    return html;
  });

  onMounted(() => {
    createTrigger();
  });

  onUnmounted(() => {
    trigger.kill();
  });

  function createTrigger() {
    trigger = ScrollTrigger.create({
      trigger: pageBottomRef.value as HTMLDivElement,
      start: 'top bottom',
      onEnter: async () => {
        if (!isShowLoading.value) {
          return;
        }
        // 临时禁用触发器，防止重复触发
        trigger.disable();
        currentPage.value++;
        await movieRefresh();
        movies.value = movies.value.concat(movieData.value.rows);
        if (movies.value.length >= movieData.value?.total) {
          isShowLoading.value = false;
          trigger.kill();
        } else {
          setTimeout(() => {
            trigger.enable();
          });
        }
      }
    });
  }

  async function handleTabChange() {
    isShowLoading.value = true;
    movies.value = [];
    currentPage.value = 1;
    await movieRefresh();
    movies.value = movies.value.concat(movieData.value.rows);
    if (movies.value.length >= movieData.value?.total) {
      isShowLoading.value = false;
    }
    createTrigger();
  }
</script>

<style lang="scss">
  .show-page {
    .el-form-item__label {
      @apply text-#999 text-14px;
    }
    .el-tabs__item {
      @apply text-14px color-#999;
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
        @apply inline-block mr-6px h-28px p-x-12px relative color-#999 line-height-27px text-14px;
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
