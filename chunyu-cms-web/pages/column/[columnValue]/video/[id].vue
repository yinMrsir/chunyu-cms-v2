<template>
  <div class="pt-0 md:pt-65px">
    <div class="grid grid-cols-1 lg:grid-cols-[1fr_300px] gap-x-20px relative">
      <div id="mse"></div>
      <div class="p-10px">
        <el-tabs v-model="tabStatus">
          <el-tab-pane label="视频" name="video">
            <div class="right-video-info">
              <div class="flex gap-x-10px text-12px">
                <el-image style="width: 80px" :src="detail.poster"></el-image>
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
                <h2 class="m-y-15px">正片选集</h2>
                <div class="movie-video-list">
                  <ul>
                    <li v-for="item in detail.movieVideo" :key="item.movieVideoId">
                      <nuxt-link :to="`/column/tv/video/${item.movieVideoId}`" class="flex gap-x-10px">
                        <el-image class="w-130px" :src="item.cover || item.video.poster"></el-image>
                        <div class="flex flex-col justify-between">
                          <h3>{{ item.title }}</h3>
                          <p class="text-12px color-#999">{{ dayjs(item.createTime).format('YYYY-MM-DD') }}</p>
                        </div>
                      </nuxt-link>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <el-tab-pane label="讨论" name="comment">讨论</el-tab-pane>
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

  const sidebarOpen = useSidebarOpen();
  const textVisible = useTextVisible();
  const route = useRoute();

  const tabStatus = ref('video');
  // 视频支付提示插件
  let payTipInstance: PayTip | null = null;
  // 视频组件
  let player: PresetPlayer | null = null;

  const { data: detail } = await useFetch(`/api/web/movie/${route.params.id}`);

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
      url: detail.value?.movieVideo?.[0]?.video?.url,
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
            txt: '好看，精彩！！！',
            // 弹幕自定义样式
            style: {
              color: '#ff9500',
              fontSize: '20px',
              border: 'solid 1px #ff9500',
              borderRadius: '50px',
              padding: '5px 11px',
              backgroundColor: 'rgba(255, 255, 255, 0.1)'
            }
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
</script>

<style lang="scss" scoped>
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
</style>
