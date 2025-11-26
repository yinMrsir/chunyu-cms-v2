<template>
  <div class="pt-0 md:pt-65px video-detail">
    <Head>
      <Title>{{ $titleRender(`${detail?.title}${videoInfo?.title}在线观看`) }}</Title>
      <Meta name="description" :content="detail?.summary || ''" />
    </Head>

    <div class="grid grid-cols-1 lg:grid-cols-[1fr_300px] relative">
      <div id="mse"></div>
      <div class="p-x-20px">
        <el-tabs v-model="tabStatus">
          <el-tab-pane label="视频" name="video">
            <template #label>
              视频
              <span class="color-yellow text-12px mr-10px">
                <i class="i-fxemoji-fire w-24px inline-block"></i>
                {{ detail?.pv.pv || 0 }}
              </span>
            </template>
            <div class="right-video-info">
              <div class="grid grid-cols-[60px_1fr] gap-x-10px text-12px">
                <el-image
                  v-if="detail?.poster"
                  class="border-rd-10px overflow-hidden w-60px"
                  :src="detail.poster"
                ></el-image>
                <div>
                  <h1 class="text-20px">
                    {{ detail?.title }}
                    <el-popover placement="bottom" effect="dark" :width="240">
                      <template #reference>
                        <span class="color-orange text-12px">
                          {{ movieRate ? `${movieRate.toFixed(1)}分` : '暂无评分' }}
                        </span>
                      </template>
                      <div class="flex items-center">
                        <span class="text-14px">我的评分：</span>
                        <el-rate v-model="rate" :disabled="rate > 0" allow-half @change="onRatechange" />
                      </div>
                    </el-popover>
                  </h1>
                  <p class="color-#dedede">
                    {{ detail?.year }}
                    <template v-if="detail?.movieBasicToCountry.length">
                      <span v-for="(country, index) in detail?.movieBasicToCountry" :key="index">
                        · {{ country.country.name }}
                      </span>
                    </template>
                    <span v-if="detail?.languages">
                      <span v-for="(l, index) in splitArr(detail.languages)" :key="index"> · {{ l }} </span>
                    </span>
                  </p>
                  <p v-if="detail?.tags" class="color-#999 flex gap-5px pt-5px">
                    <el-tag v-for="(tag, index) in splitArr(detail?.tags)" :key="index" type="info" size="small">
                      {{ tag }}
                    </el-tag>
                  </p>
                </div>
              </div>
              <div v-if="detail?.summary">
                <h2 class="m-y-15px">节目简介</h2>
                <div class="text-14px color-#dedede" v-html="detail?.summary"></div>
              </div>
              <div v-if="episodes && episodes.length">
                <h2 class="m-y-15px">选集</h2>
                <div class="movie-video-list">
                  <div class="grid grid-cols-4 md:grid-cols-6 lg:grid-cols-2 gap-2">
                    <nuxt-link
                      v-for="episode in episodes"
                      :key="episode.resourceId"
                      :to="`/column/${route.params.columnValue}/resources/${route.params.id}?rid=${episode.resourceId}&rtype=${episode.resources}`"
                      class="episode-button"
                      :class="{ 'episode-active': currentEpisodeId === episode.resourceId }"
                    >
                      {{ episode.title }}
                    </nuxt-link>
                  </div>
                </div>
              </div>
              <div v-if="detail?.casts.length">
                <h2 class="m-y-15px">相关演员</h2>
                <swiper
                  :slides-per-view="4"
                  :breakpoints="{
                    320: {
                      slidesPerView: 4
                    },
                    768: {
                      slidesPerView: 5
                    },
                    1024: {
                      slidesPerView: 3
                    }
                  }"
                  :space-between="10"
                >
                  <swiper-slide v-for="cast in detail?.casts" :key="cast.castId">
                    <div class="text-12px text-center">
                      <img
                        v-if="cast.actor.avatar"
                        class="w-full h-110px object-contain mb-6px"
                        :src="cast.actor.avatar"
                        alt=""
                      />
                      <p>{{ cast.actor.name }}</p>
                      <p v-if="cast.role" class="text-[rgba(255,255,255,0.35)]">饰 {{ cast.role }}</p>
                      <p v-else class="text-[rgba(255,255,255,0.35)]">
                        {{ cast.profession.name }}
                      </p>
                    </div>
                  </swiper-slide>
                </swiper>
              </div>
              <div v-if="movies?.rows.length">
                <h2 class="m-y-15px">相关推荐</h2>
                <div>
                  <ul class="grid grid-cols-3 md:grid-cols-4 lg:grid-cols-2 gap-15px md:gap-20px text-12px">
                    <li
                      v-for="v in movies.rows"
                      :key="v.movieBasicsId"
                      class="bg-#1c1d1f border-rd-10px overflow-hidden"
                    >
                      <nuxt-link :to="`/column/${v.columnValue}/detail/${v.movieBasicsId}`">
                        <NuxtImg v-if="v?.poster" format="webp" loading="lazy" :alt="v?.title" :src="v.poster" />
                        <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                          <h3>{{ v.title }}</h3>
                          <p class="text-[rgba(255,255,255,0.35)] whitespace-nowrap text-ellipsis overflow-hidden">
                            <template v-for="actor in v.casts"> {{ actor.actor.name }}&nbsp; </template>
                            <span v-if="!v.casts.length">-</span>
                          </p>
                        </div>
                      </nuxt-link>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </el-tab-pane>
        </el-tabs>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
  import 'xgplayer/dist/index.min.css';
  import 'xgplayer/es/plugins/danmu/index.css';
  import '~/plugins/xgplayer/payTip/index.css';
  import { Swiper, SwiperSlide } from 'swiper/vue';
  import 'swiper/css';
  import type PresetPlayer from 'xgplayer';
  import { useLoginVisible } from '~~/app/composables/states';
  import { WEB_TOKEN } from '#shared/cookiesName';
  import { createToken } from '~~/app/utils/request';
  import type { WebMovie } from '~~/types/api/webMovie';
  import type { WebMovieResourceEpisodesItem } from '~~/types/api/webMovieResourceEpisodes';
  import type { WebMovieList } from '~~/types/api/webMovieList';
  import type PayTip from '~~/app/plugins/xgplayer/payTip';

  definePageMeta({
    key: route => route.fullPath
  });

  const route = useRoute();
  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const loginVisible = useLoginVisible();

  const tabStatus = ref('video');
  const vIndex = ref(0);
  const rate = ref();
  const movieRate = ref();
  const episodes = ref<WebMovieResourceEpisodesItem[]>();
  const currentEpisodeId = ref<number>();
  let player: PresetPlayer | null = null;
  // 视频支付提示插件
  let payTipInstance: InstanceType<typeof PayTip> | null = null;

  const [{ data: detail }, { data: movies }, { data: isUserBuy }] = await Promise.all([
    useFetch<WebMovie>(`/api/web/movie/${route.params.id}`),
    useFetch<WebMovieList>('/api/web/movie/list', {
      query: { columnValue: route.params.columnValue, limit: 12, notId: route.params.id }
    }),
    useFetch(`/api/web/member/movie/buyStatus?movieBasicsId=${route.params.id}`, {
      headers: {
        Token: createToken()
      }
    })
  ]);

  // 获取集数数据
  const { data: episodeData } = await useFetch<WebMovieResourceEpisodesItem[]>('/api/web/movie/resource/episodes', {
    query: {
      movieId: route.params.id,
      resourceId: route.query.rid,
      resources: route.query.rtype,
      limit: 1000
    }
  });

  if (episodeData.value) {
    episodes.value = episodeData.value;
  }

  // 设置当前选中的集数
  if (route.query.rid) {
    currentEpisodeId.value = Number(route.query.rid);
    // 在列表中的索引
    vIndex.value = episodes.value?.findIndex(item => item.resourceId === Number(route.query.rid)) || 0;
  }

  // 监听路由变化，更新当前集数
  watch(
    () => route.query.referenceid,
    newRid => {
      if (newRid) {
        currentEpisodeId.value = Number(newRid);
      }
    }
  );

  if (detail.value && Object.keys(detail.value).length === 0) {
    throw createError({ statusCode: 404 });
  }

  const videoInfo = computed(() => episodes.value?.[vIndex.value]);

  onMounted(async () => {
    if (videoInfo.value) {
      await createPlayer();
    }
    if (token.value) {
      await getMemberRate();
    }
  });

  // 组件卸载时销毁播放器
  onUnmounted(() => {
    if (player) {
      player.destroy();
      player = null;
    }
  });

  /** 获取用户评分 **/
  async function getMemberRate() {
    const data = await request({
      url: '/api/web/member/rate?movieBasicsId=' + route.params.id
    });
    rate.value = data?.rate ? data.rate / 2 : 0;
  }

  async function onRatechange(value: number) {
    if (!value) return;
    if (!token.value) {
      loginVisible.value = true;
      rate.value = 0;
    } else {
      const data = await request({
        url: '/api/web/member/rate',
        method: 'post',
        body: {
          movieBasicsId: route.params.id,
          rate: value * 2
        }
      });
      movieRate.value = data.rate;
      ElMessage.success('评分成功');
    }
  }

  /** 购买影视 */
  function buyMovie(player: PresetPlayer) {
    ElMessageBox.confirm(`确定要支付${detail.value?.paymentAmount}金币购买此影片吗？`, '提示', {
      confirmButtonText: '确定',
      cancelButtonText: '取消',
      type: 'warning'
    }).then(async () => {
      await request({
        url: '/api/web/member/movie/buy',
        method: 'post',
        body: {
          movieBasicsId: route.params.id
        }
      });
      isUserBuy.value = true;
      player.play();
      payTipInstance?.hide();
      ElMessage({
        type: 'success',
        message: '购买成功'
      });
    });
  }

  /** 播放下一集 */
  function playNextEpisode() {
    const currentIndex = vIndex.value;
    const nextIndex = currentIndex + 1;

    if (episodes.value && nextIndex < episodes.value.length) {
      const nextEpisode = episodes.value?.[nextIndex];

      if (!nextEpisode) {
        ElMessage.error('无法获取下一集信息');
        return;
      }

      router.push(`${route.path}?rid=${nextEpisode.resourceId}&rtype=${nextEpisode.resources}`);
    } else {
      ElMessage.info('已经是最后一集了！');
    }
  }

  /** 创建播放器 */
  async function createPlayer(episodeInfo = videoInfo.value) {
    const [Player, Mp4Plugin, PayTip, HlsPlugin] = await Promise.all([
      import('xgplayer'),
      import('xgplayer-mp4'),
      import('~~/app/plugins/xgplayer/payTip'),
      import('xgplayer-hls.js')
    ]);

    if (episodeInfo == null) {
      ElMessage.error('无法获取视频信息');
      return;
    }

    const videoType = episodeInfo.url.split('.').pop();
    const plugins: any[] = [PayTip.default];
    if (videoType === 'm3u8') {
      plugins.push(HlsPlugin.default);
    } else if (videoType === 'mp4') {
      plugins.push(Mp4Plugin.default);
    } else {
      ElMessage.error('暂不支持该视频格式播放');
      return;
    }

    // eslint-disable-next-line new-cap
    player = new Player.default({
      id: 'mse',
      useHls: true,
      controls: {
        autoHide: false
      },
      autoplay: true,
      volume: 0.3,
      url: episodeInfo.url,
      playsinline: true,
      height: '100%',
      width: '100%',
      plugins,
      payTip: {
        tip: `此为付费视频，支付${detail.value?.paymentAmount}金币继续观看？`,
        lookTime: (detail.value?.freeDuration ?? 0) * 60,
        arriveTime() {
          if (isUserBuy.value) return;
          // 影片设置了需要购买才能观看并且是正片
          if (detail.value && +detail.value.isPay === 1) {
            player?.pause();
            payTipInstance?.show('flex');
          }
        },
        clickButton() {
          if (!token.value) {
            loginVisible.value = true;
          } else {
            player && buyMovie(player);
          }
        }
      }
    });

    // 重新绑定事件监听器
    payTipInstance = player.getPlugin('payTip');
    player.on('ended', () => {
      playNextEpisode();
    });
  }

  const splitArr = (detail: string) => {
    return detail ? detail.split(',') : '';
  };
</script>

<style lang="scss">
  #mse {
    @apply w-full !h-300px bg-black;

    @media (min-width: 1024px) {
      height: calc(100vh - 65px) !important;
    }
  }
  .right-video-info {
    height: auto;
    @media (min-width: 1024px) {
      height: calc(100vh - 140px) !important;
      overflow-x: hidden;
      overflow-y: auto;
    }
  }
  .right-video-comment {
    height: auto;
    @media (min-width: 1024px) {
      height: calc(100vh - 340px) !important;
      overflow-x: hidden;
      overflow-y: auto;
    }
  }
  .movie-video-list ul {
    @apply grid gap-15px text-14px;
    grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
    @media (min-width: 1024px) {
      grid-template-columns: repeat(1, 1fr);
    }
  }

  .episode-button {
    @apply px-3 py-2 text-center text-sm bg-gray-700 hover:bg-gray-600 rounded-md transition-colors text-white border border-gray-600;
    min-height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-decoration: none;

    &:hover {
      @apply bg-gray-500 border-gray-500;
    }

    &.episode-active {
      @apply bg-blue-600 border-blue-500 text-white font-medium;
    }
  }
  .video-detail {
    .el-tabs__item {
      color: #999;
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
    .comment-input .el-textarea__inner {
      color: #fff;
      border: none;
      background-color: rgba(0, 0, 0, 0.2) !important;
      outline: none;
      border-radius: 10px;
      padding: 10px;
      -webkit-backdrop-filter: blur(5px);
      backdrop-filter: blur(5px);
      font-size: 14px;
      box-shadow: 0 5px 35px rgba(0, 0, 0, 0.2);
      border-top: 1px solid rgba(255, 255, 255, 0.1);
      border-bottom: 1px solid rgba(255, 255, 255, 0.1);
      height: 120px;
    }
    .comment-button {
      background: linear-gradient(179deg, #32ccff, #00e038) !important;
      border: none;
      &.is-disabled {
        opacity: 0.6;
      }
    }
  }
  /* 定义滚动条的宽度和背景颜色 */
  .right-video-info::-webkit-scrollbar,
  .right-video-comment::-webkit-scrollbar {
    width: 6px;
    height: 6px;
    background-color: transparent;
  }

  /* 定义滚动条轨道的样式 */
  .right-video-info::-webkit-scrollbar-track,
  .right-video-comment::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
    background-color: transparent;
  }

  /* 定义滚动条滑块的样式 */
  .right-video-info::-webkit-scrollbar-thumb,
  .right-video-comment::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    background-color: rgba(255, 255, 255, 0.2);
  }
</style>
