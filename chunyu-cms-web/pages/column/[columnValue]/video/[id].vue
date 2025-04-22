<template>
  <div class="pt-0 md:pt-65px video-detail">
    <Head>
      <Title>{{ $titleRender(`${detail.title}_${detail.title}在线观看`) }}</Title>
      <Meta name="description" :content="detail.summary" />
    </Head>

    <div class="grid grid-cols-1 lg:grid-cols-[1fr_300px] gap-x-20px relative">
      <div id="mse"></div>
      <div class="p-10px">
        <el-tabs v-model="tabStatus">
          <el-tab-pane label="视频" name="video">
            <div class="right-video-info">
              <div class="flex gap-x-10px text-12px">
                <el-image class="border-rd-10px overflow-hidden w-80px" :src="detail.poster"></el-image>
                <div>
                  <h1 class="text-20px">{{ detail.title }}</h1>
                  <p class="color-#dedede">
                    {{ detail.year }}
                    <template v-if="detail.movieBasicToCountry.length">
                      <span v-for="(country, index) in detail.movieBasicToCountry" :key="index">
                        · {{ country.country.name }}
                      </span>
                    </template>
                    <span v-if="detail.languages"> · {{ detail.languages }}</span>
                  </p>
                  <p v-if="detail?.tags" class="color-#999 flex gap-5px pt-5px">
                    <el-tag v-for="(tag, index) in detail?.tags.split(',')" :key="index" type="info" size="small">
                      {{ tag }}
                    </el-tag>
                  </p>
                </div>
              </div>
              <div v-if="detail.summary">
                <h2 class="m-y-15px">节目简介</h2>
                <div class="text-14px color-#dedede" v-html="detail.summary"></div>
              </div>
              <div v-if="detail.movieVideo.length">
                <h2 class="m-y-15px">相关视频</h2>
                <div class="movie-video-list">
                  <ul>
                    <li v-for="(item, index) in detail.movieVideo" :key="item.movieVideoId">
                      <nuxt-link
                        :to="`/column/${detail.columnValue}/video/${detail.movieBasicsId}?mvid=${item.movieVideoId}`"
                        class="flex gap-x-10px"
                      >
                        <div class="relative w-130px">
                          <el-image
                            class="w-130px border-rd-10px overflow-hidden"
                            :src="item.cover || item.video.poster"
                          ></el-image>
                          <div
                            v-if="vIndex === index"
                            class="absolute w-full h-full bg-[rgba(0,0,0,0.4)] z-1 color-white left-0 top-0 flex items-center pl-40px"
                          >
                            正在播放
                          </div>
                        </div>
                        <div class="flex flex-col justify-between">
                          <h3>{{ item.title }}</h3>
                          <p class="text-12px color-#999">{{ dayjs(item.createTime).format('YYYY-MM-DD') }}</p>
                        </div>
                      </nuxt-link>
                    </li>
                  </ul>
                </div>
              </div>
              <div>
                <h2 class="m-y-15px">相关推荐</h2>
                <div>
                  <ul class="grid grid-cols-3 md:grid-cols-4 lg:grid-cols-2 gap-15px md:gap-20px text-12px">
                    <li
                      v-for="v in movies.rows"
                      :key="v.movieBasicsId"
                      class="bg-#252632 border-rd-10px overflow-hidden"
                    >
                      <nuxt-link :to="`/column/${v.columnValue}/video/${v.movieBasicsId}`">
                        <img :src="v.poster" />
                        <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                          <h3>{{ v.title }}</h3>
                          <p class="text-[rgba(255,255,255,0.35)]">
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
          <el-tab-pane label="讨论" name="comment">
            <el-form ref="formRef" :mode="form">
              <el-form-item>
                <el-input
                  v-model="form.comment"
                  class="comment-input"
                  type="textarea"
                  placeholder="恶语结善缘，恶言伤人心"
                ></el-input>
                <div class="flex items-center justify-end mb-10px absolute right-8px bottom-[-8px] text-12px">
                  <el-switch
                    v-model="form.isDm"
                    active-value="1"
                    inactive-value="0"
                    style="--el-switch-on-color: #13ce66; --el-switch-off-color: #ff4949; margin-right: 5px"
                    size="small"
                  >
                  </el-switch>
                  发送到弹幕
                </div>
              </el-form-item>
              <el-form-item>
                <div class="flex justify-end w-full">
                  <el-button
                    :disabled="!form.comment.length"
                    type="success"
                    class="comment-button"
                    @click="handleSubmit"
                  >
                    提交
                  </el-button>
                </div>
              </el-form-item>
            </el-form>
            <div class="flex flex-col gap-y-30px">
              <div v-for="(item, index) in 2" :key="index" class="grid grid-cols-[60px_1fr]">
                <img src="/images/toux.png" class="w-50px h-50px border-rd-6px" alt="" />
                <div class="text-14px flex flex-col justify-between color-gray">
                  <span>好看，精彩！！！</span>
                  <p class="text-12px">2022-08-08</p>
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
  import PresetPlayer from 'xgplayer';
  import '~/plugins/xgplayer/payTip/index.css';
  import dayjs from 'dayjs';
  import PayTip from '~/plugins/xgplayer/payTip';
  import { useSidebarOpen, useTextVisible } from '~/composables/states';

  definePageMeta({
    key: route => route.fullPath
  });

  const sidebarOpen = useSidebarOpen();
  const textVisible = useTextVisible();
  const route = useRoute();

  const form = ref({ isDm: '1', comment: '' });
  const tabStatus = ref('video');
  const vIndex = ref(0);
  // 视频支付提示插件
  let payTipInstance: PayTip | null = null;
  // 视频组件
  let player: PresetPlayer | null = null;

  const [{ data: detail }, { data: movies }] = await Promise.all([
    useFetch(`/api/web/movie/${route.params.id}`),
    useFetch('/api/web/movie/list', {
      query: { columnValue: route.params.columnValue, limit: 12, notId: route.params.id }
    }),
    useFetch(`/api/web/movie/pv`, {
      method: 'POST',
      body: {
        movieBasicsId: route.params.id
      }
    })
  ]);
  if (route.query.mvid) {
    vIndex.value =
      detail.value?.movieVideo.findIndex(
        (item: { movieVideoId: number }) => item.movieVideoId === Number(route.query.mvid)
      ) || 0;
  }

  onMounted(async () => {
    sidebarOpen.value = false;
    textVisible.value = false;
    const [Player, Mp4Plugin, Danmu, PayTip] = await Promise.all([
      import('xgplayer'),
      import('xgplayer-mp4'),
      import('xgplayer/es/plugins/danmu'),
      import('~/plugins/xgplayer/payTip')
    ]);
    // eslint-disable-next-line new-cap
    player = new Player.default({
      id: 'mse',
      controls: {
        autoHide: false
      },
      autoplay: true,
      volume: 0.3,
      url: detail.value?.movieVideo?.[vIndex.value]?.video?.url,
      playsinline: true,
      height: '100%',
      width: '100%',
      plugins: [Mp4Plugin.default, Danmu.default, PayTip.default],
      danmu: {
        comments: [
          {
            duration: 15000,
            id: '1',
            start: 3000,
            txt: '好看，精彩！！！'
          },
          {
            duration: 15000,
            id: '2',
            start: 2000,
            txt: '终于可以看了。'
          }
        ],
        area: {
          start: 0,
          end: 1
        }
      }
    });
    payTipInstance = player.getPlugin('payTip');
  });

  function handleSubmit() {
    console.log(form.value);
  }
</script>

<style lang="scss">
  #mse {
    @apply w-full !h-300px bg-#000;

    @media (min-width: 768px) {
      height: calc(100vh - 65px) !important;
    }
  }
  .right-video-info {
    height: auto;
    @media (min-width: 768px) {
      height: calc(100vh - 140px) !important;
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
  .right-video-info::-webkit-scrollbar {
    width: 6px;
    height: 6px;
    background-color: transparent;
  }

  /* 定义滚动条轨道的样式 */
  .right-video-info::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
    background-color: transparent;
  }

  /* 定义滚动条滑块的样式 */
  .right-video-info::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    background-color: rgba(255, 255, 255, 0.2);
  }
</style>
