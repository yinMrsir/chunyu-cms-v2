<template>
  <div class="pt-0 md:pt-45px video-detail-page">
    <Head>
      <Title>{{ $titleRender(`${videoDetail.title}在线免费观看`) }}</Title>
      <Meta name="description" :content="videoDetail.summary || videoDetail.title" />
    </Head>

    <div class="mx-auto px-4">
      <!-- 视频播放区域 -->
      <div class="grid grid-cols-1 lg:grid-cols-[1fr_300px] gap-6">
        <!-- 左侧视频播放器 -->
        <div class="video-player-section">
          <!-- 视频信息 -->
          <div class="mt-6 bg-#141414 rounded-lg p-6">
            <div class="flex items-start justify-between mb-4">
              <div class="flex-1">
                <h1 class="text-2xl font-bold text-white mb-2">{{ videoDetail.title }}</h1>
                <div class="flex items-center gap-4 text-sm text-gray-400">
                  <span class="flex items-center gap-1">
                    <i class="i-el-view"></i>
                    {{ formatNumber(videoDetail.pv?.pv || 0) }} 次观看
                  </span>
                  <span v-if="videoDetail.duration" class="flex items-center gap-1">
                    <i class="i-el-time"></i>
                    {{ formatDuration(videoDetail.duration) }}
                  </span>
                  <span>{{ formatDate(videoDetail.createTime) }}</span>
                </div>
              </div>

              <!-- 视频操作按钮 -->
              <div class="flex gap-2 ml-4">
                <!-- <button
                  class="flex flex-col items-center p-2 rounded-lg hover:bg-gray-800 transition-colors"
                  :class="{ 'text-red-500': isLiked }"
                  @click="handleLike"
                >
                  <i class="i-el-heart text-xl"></i>
                  <span class="text-xs mt-1">{{ formatNumber(videoDetail.likes || 0) }}</span>
                </button>
                <button
                  class="flex flex-col items-center p-2 rounded-lg hover:bg-gray-800 transition-colors"
                  :class="{ 'text-yellow-500': isFavorited }"
                  @click="handleFavorite"
                >
                  <i class="i-el-star text-xl"></i>
                  <span class="text-xs mt-1">{{ formatNumber(videoDetail.favorites || 0) }}</span>
                </button> -->
                <button
                  class="flex flex-col items-center p-2 rounded-lg hover:bg-gray-800 transition-colors"
                  @click="handleShare"
                >
                  <i class="i-el-share-alt text-xl"></i>
                  <span class="text-xs mt-1">分享</span>
                </button>
              </div>
            </div>

            <!-- 视频描述 -->
            <div v-if="videoDetail.summary" class="mt-4">
              <p class="text-gray-300 leading-relaxed">{{ videoDetail.summary }}</p>
            </div>

            <!-- 标签 -->
            <div v-if="videoDetail.tags && videoDetail.tags.length" class="mt-4">
              <div class="flex flex-wrap gap-2">
                <span
                  v-for="tag in videoDetail.tags.split(',')"
                  :key="tag"
                  class="px-3 py-1 bg-#ffffff14 text-gray-300 rounded-full text-sm hover:bg-gray-800 cursor-pointer transition-colors"
                >
                  #{{ tag }}
                </span>
              </div>
            </div>
          </div>

          <div class="bg-#141414 rounded-lg p-4 mb-6 mt-6">
            <el-tabs v-model="typeId">
              <el-tab-pane
                v-for="type in videoTypes"
                :key="type.dictValue"
                :label="type.dictLabel"
                :name="type.dictValue"
              ></el-tab-pane>
            </el-tabs>
            <div class="mt-4 grid grid-cols-2 md:grid-cols-4 gap-4">
              <nuxt-link
                v-for="item in movieVideoList"
                :key="item.videoId"
                :to="
                  item.typeId === '5'
                    ? item.link
                    : `/column/${route.params.columnValue}/video/${route.params.id}?mvid=${item.movieVideoId}`
                "
                :target="item.typeId === '5' ? '_blank' : '_self'"
                class="p-3 bg-gray-800 rounded-lg hover:bg-gray-700 transition-colors"
              >
                <div class="flex items-center justify-between">
                  <div class="flex items-center gap-3">
                    <i class="i-el-link text-blue-400"></i>
                    <span class="text-white font-medium">{{ item.title }}</span>
                  </div>
                </div>
              </nuxt-link>
            </div>
            <div v-if="!movieVideoList.length">
              <i class="i el-folder-opened text-2xl mb-2"></i>
              <p>暂无数据</p>
            </div>
          </div>

          <div class="bg-#141414 rounded-lg p-4 mb-6 mt-6">
            <el-tabs v-model="resourcesSource">
              <el-tab-pane
                v-for="type in resourcesSourceType"
                :key="type.dictValue"
                :label="type.dictLabel"
                :name="type.dictValue"
              ></el-tab-pane>
            </el-tabs>

            <!-- 资源列表 -->
            <div class="mt-4">
              <div class="pb-5 flex text-12px">
                <ElIconWarnTriangleFilled class="w20px color-red-5" />
                不要轻易信视频中的广告，谨防上当受骗！
              </div>
              <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <nuxt-link
                  v-for="resource in videoResourceList"
                  :key="resource.resourceId"
                  :to="`/column/${route.params.columnValue}/resources/${route.params.id}?rid=${resource.resourceId}&rtype=${resource.resources}`"
                  class="p-3 bg-gray-800 rounded-lg hover:bg-gray-700 transition-colors"
                >
                  <div class="flex items-center justify-between">
                    <div class="flex items-center gap-3">
                      <i class="i-el-link text-blue-400"></i>
                      <span class="text-white font-medium">{{ resource.title }}</span>
                    </div>
                  </div>
                </nuxt-link>
              </div>
              <div v-if="!videoResourceList || videoResourceList.length === 0">
                <i class="i el-folder-opened text-2xl mb-2"></i>
                <p>暂无资源</p>
              </div>
            </div>
          </div>

          <!-- 演员信息 -->
          <div v-if="videoDetail.casts.length" class="bg-#141414 rounded-lg p-4 mb-6 mt-6">
            <h3 class="text-lg font-semibold text-white mb-4">相关演员</h3>
            <div class="grid grid-cols-3 md:grid-cols-4 xl:grid-cols-6 gap-15px md:gap-20px">
              <div v-for="cast in videoDetail.casts" :key="cast.castId" class="text-12px text-center">
                <img class="w-full aspect-3/4 object-cover mb-6px" :src="cast.actor?.avatar" alt="" />
                <p>{{ cast.actor?.name }}</p>
                <p v-if="cast.role" class="text-[rgba(255,255,255,0.35)]">饰 {{ cast.role }}</p>
                <p v-else class="text-[rgba(255,255,255,0.35)]">
                  {{ cast.profession?.name }}
                </p>
              </div>
            </div>
          </div>

          <!-- 相关推荐 -->
          <div v-if="relatedVideos && relatedVideos.rows.length" class="bg-#141414 rounded-lg p-4 mb-6 mt-6">
            <h3 class="text-lg font-semibold text-white mb-4">相关推荐</h3>
            <div class="space-y-3">
              <div>
                <ul class="grid grid-cols-3 md:grid-cols-4 xl:grid-cols-6 gap-15px md:gap-20px text-12px">
                  <li
                    v-for="v in relatedVideos.rows"
                    :key="v.movieBasicsId"
                    class="bg-#141414 border-rd-10px overflow-hidden"
                  >
                    <nuxt-link :to="`/column/${v.columnValue}/detail/${v.movieBasicsId}`">
                      <NuxtImg format="webp" loading="lazy" :alt="v?.title" :src="v?.poster" />
                      <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                        <h3>{{ v.title }}</h3>
                        <p class="text-[rgba(255,255,255,0.35)] whitespace-nowrap text-ellipsis overflow-hidden">
                          <template v-for="actor in v.casts"> {{ actor.actor?.name }}&nbsp; </template>
                          <span v-if="!v.casts.length">-</span>
                        </p>
                      </div>
                    </nuxt-link>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- 右侧相关信息 -->
        <div class="video-sidebar pt-6">
          <!-- 封面图展示 -->
          <div class="bg-black rounded-lg overflow-hidden relative mb-6">
            <div class="relative aspect-video bg-black">
              <img :src="videoDetail.poster" :alt="videoDetail.title" class="w-full h-full object-cover" />
              <!-- 视频信息标签 -->
              <div class="absolute bottom-4 left-4 text-white">
                <div class="flex items-center gap-2 text-sm">
                  <span v-if="videoDetail.duration" class="bg-black bg-opacity-60 px-2 py-1 rounded">
                    {{ formatDuration(videoDetail.duration) }}
                  </span>
                  <span v-if="videoDetail.isPay === 1" class="bg-orange-500 px-2 py-1 rounded text-xs">付费</span>
                </div>
              </div>
            </div>
          </div>
          <!-- 视频信息 -->
          <div class="bg-#141414 rounded-lg p-4 mb-6">
            <h3 class="text-lg font-semibold text-white mb-4">视频信息</h3>
            <div class="space-y-3 text-sm">
              <div class="flex justify-between">
                <span class="text-gray-400">时长</span>
                <span class="text-white">{{ formatDuration(videoDetail.duration) || '-' }}</span>
              </div>
              <div class="flex justify-between">
                <span class="text-gray-400">发布时间</span>
                <span class="text-white">{{ formatDate(videoDetail.createTime) || '-' }}</span>
              </div>
              <div class="flex justify-between">
                <span class="text-gray-400">观看次数</span>
                <span class="text-white">{{ formatNumber(videoDetail.pv?.pv || 0) }}</span>
              </div>
              <div v-if="videoDetail.year" class="flex justify-between">
                <span class="text-gray-400">年份</span>
                <span class="text-white">{{ videoDetail.year }}</span>
              </div>
              <div v-if="videoDetail.languages" class="flex justify-between">
                <span class="text-gray-400">语言</span>
                <span class="text-white">{{ videoDetail.languages }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  // import { useLoginVisible } from '~/composables/states';
  // import { WEB_TOKEN } from '#shared/cookiesName';
  // import { useShortActions } from '~/composables/useShortActions';

  definePageMeta({
    key: route => route.fullPath
  });

  const route = useRoute();
  // const token = useCookie(WEB_TOKEN);
  // const loginVisible = useLoginVisible();
  // const { handleLike: likeVideo, handleFavorite: favoriteVideo } = useShortActions();

  // const isLiked = ref(false);
  // const isFavorited = ref(false);

  // 获取视频详情
  const [{ data: videoDetail }, { data: relatedVideos }, { data: videoTypes }, { data: resourcesSourceType }] =
    await Promise.all([
      useFetch(`/api/web/movie/${route.params.id}`),
      useFetch('/api/web/movie/list', {
        query: { columnValue: route.params.columnValue, limit: 12, notId: route.params.id }
      }),
      useFetch('/api/web/basic/dictData/list', {
        query: { limit: 100, dictType: 'videos_type' },
        transform: data => {
          return data.map(item => ({
            dictLabel: item.dictLabel,
            dictValue: item.dictValue
          }));
        }
      }),
      useFetch('/api/web/basic/dictData/list', {
        query: { limit: 100, dictType: 'video_resources_source' },
        transform: data => {
          return data.map(item => ({
            dictLabel: item.dictLabel,
            dictValue: item.dictValue
          }));
        }
      }),
      useFetch(`/api/web/movie/pv`, {
        method: 'POST',
        body: {
          movieBasicsId: route.params.id
        }
      })
    ]);

  if (!videoDetail.value) {
    throw createError({ statusCode: 404, statusMessage: '视频不存在' });
  }

  const typeId = ref('1');
  const resourcesSource = ref('1');

  // 获取视频
  const { data: movieVideoList, refresh } = await useAsyncData('videoTypeGetVideo' + typeId, () =>
    $fetch('/api/web/movie/videoType/list', {
      query: { movieId: route.params.id, typeId: typeId.value, status: 0, limit: 1000 }
    })
  );
  // 获取资源数据
  const { data: videoResourceList, refresh: refreshResources } = await useAsyncData(
    'videoResources' + resourcesSource,
    () =>
      $fetch('/api/web/video/resource/list', {
        query: { movieId: route.params.id, resources: resourcesSource.value, limit: 1000 }
      })
  );

  watch(
    () => typeId.value,
    () => {
      refresh();
    }
  );

  // 监听资源来源变化
  watch(
    () => resourcesSource.value,
    () => {
      refreshResources();
    }
  );

  // 格式化数字
  function formatNumber(num) {
    if (!num) return '0';
    if (num >= 10000) {
      return (num / 10000).toFixed(1) + '万';
    }
    return num.toString();
  }

  // 格式化时长
  function formatDuration(seconds) {
    if (!seconds) return '00:00';
    const hours = Math.floor(seconds / 3600);
    const minutes = Math.floor((seconds % 3600) / 60);
    const remainingSeconds = seconds % 60;

    if (hours > 0) {
      return `${hours}:${minutes.toString().padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
    }
    return `${minutes}:${remainingSeconds.toString().padStart(2, '0')}`;
  }

  // 格式化日期
  function formatDate(dateString) {
    if (!dateString) return '';
    const date = new Date(dateString);
    return date.toLocaleDateString('zh-CN');
  }

  // 点赞功能
  // async function handleLike() {
  //   if (!token.value) {
  //     loginVisible.value = true;
  //     return;
  //   }

  //   try {
  //     await likeVideo(
  //       { event: {} },
  //       {
  //         videoId: videoDetail.value.videoId,
  //         likes: videoDetail.value.likes || 0
  //       },
  //       { isLike: isLiked.value }
  //     );
  //     isLiked.value = !isLiked.value;
  //     videoDetail.value.likes = isLiked.value
  //       ? (videoDetail.value.likes || 0) + 1
  //       : Math.max(0, (videoDetail.value.likes || 0) - 1);
  //   } catch (error) {
  //     console.error('点赞失败:', error);
  //   }
  // }

  // // 收藏功能
  // async function handleFavorite() {
  //   if (!token.value) {
  //     loginVisible.value = true;
  //     return;
  //   }

  //   try {
  //     await favoriteVideo(
  //       { event: {} },
  //       {
  //         videoId: videoDetail.value.videoId,
  //         favorites: videoDetail.value.favorites || 0
  //       },
  //       { isCollection: isFavorited.value }
  //     );
  //     isFavorited.value = !isFavorited.value;
  //     videoDetail.value.favorites = isFavorited.value
  //       ? (videoDetail.value.favorites || 0) + 1
  //       : Math.max(0, (videoDetail.value.favorites || 0) - 1);
  //   } catch (error) {
  //     console.error('收藏失败:', error);
  //   }
  // }

  // 分享功能
  function handleShare() {
    if (navigator.share) {
      navigator.share({
        title: videoDetail.value.title,
        text: videoDetail.value.description,
        url: window.location.href
      });
    } else {
      // 复制链接到剪贴板
      navigator.clipboard.writeText(window.location.href).then(() => {
        // 显示复制成功提示
        alert('链接已复制到剪贴板');
      });
    }
  }
</script>

<style lang="scss">
  .video-detail-page {
    background-color: #0f0f0f;
    min-height: 100vh;

    .video-player-section {
      .poster-wrapper {
        background: #000;
        border-radius: 12px;
        overflow: hidden;

        img {
          transition: transform 0.3s ease;

          &:hover {
            transform: scale(1.02);
          }
        }
      }
    }

    .video-sidebar {
      .related-video-item {
        transition: all 0.3s ease;

        &:hover {
          transform: translateY(-2px);
        }
      }
    }

    .action-button {
      transition: all 0.3s ease;

      &:hover {
        transform: scale(1.1);
      }

      &.active {
        color: #fe2c55;
      }
    }

    // 自定义滚动条
    ::-webkit-scrollbar {
      width: 6px;
      height: 6px;
    }

    ::-webkit-scrollbar-track {
      background: rgba(255, 255, 255, 0.1);
      border-radius: 3px;
    }

    ::-webkit-scrollbar-thumb {
      background: rgba(255, 255, 255, 0.3);
      border-radius: 3px;

      &:hover {
        background: rgba(255, 255, 255, 0.5);
      }
    }
  }
</style>
