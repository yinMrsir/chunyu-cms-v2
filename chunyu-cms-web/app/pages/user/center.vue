<template>
  <div v-if="userInfoData?.data" class="p-20px pt-74px center-index">
    <div class="grid grid-cols-[132px_1fr] mb-20px">
      <div class="center-index__avatar" @click="router.push('/user/information')">
        <el-avatar :size="112" :src="userInfoData.data.avatar" />
      </div>
      <div class="pt-10px">
        <h1>
          {{ userInfoData.data.nickname }}
          <span class="text-[12px] text-[#FFFFFF59]">ID: {{ userInfoData.data.memberUserId }}</span>
        </h1>
        <p class="text-12px text-[#FFFFFF59] mt-6px">{{ userInfoData.data.introduction }}</p>
      </div>
    </div>
    <el-tabs v-model="activeTab" @tab-change="handleTabChange">
      <el-tab-pane label="我的收藏" name="collection">
        <div v-loading="favoritesLoading" class="min-h-[400px]">
          <div v-if="favoritesData?.rows?.length" class="space-y-4">
            <div
              v-for="item in favoritesData.rows"
              :key="item.id"
              class="bg-#1a1a1a rounded-lg p-4 flex gap-4 hover:bg-#2a2a2a transition-colors cursor-pointer"
              @click="
                navigateToDetail({
                  movieBasicsId: item.movie.movieBasicsId,
                  columnValue: item.movie.columnValue
                })
              "
            >
              <img
                v-if="item.movie.poster"
                :src="item.movie.poster"
                :alt="item.movie.title"
                class="w-24 h-32 object-cover rounded-md flex-shrink-0"
                @error="handleImageError"
              />
              <div class="flex-1 min-w-0">
                <h3 class="text-lg font-semibold mb-2 text-white truncate">{{ item.movie.title }}</h3>
                <p class="text-sm text-gray-400 mb-2 line-clamp-2">{{ item.movie.summary || '暂无简介' }}</p>
                <div class="flex items-center gap-4 text-xs text-gray-500">
                  <span>{{ item.movie.year }}年</span>
                  <span>{{ item.movie.languages }}</span>
                  <span v-if="item.movie.duration">{{ formatDuration(item.movie.duration) }}</span>
                </div>
              </div>
              <div class="flex flex-col items-end justify-between">
                <el-button size="small" type="danger" @click.stop="cancelFavorite(item.movie.movieBasicsId)">
                  取消收藏
                </el-button>
                <span v-if="item.createTime" class="text-xs text-gray-500">
                  {{ formatTime(item.createTime) }}
                </span>
              </div>
            </div>
          </div>
          <el-empty v-else description="暂无收藏内容" />

          <div v-if="favoritesData && favoritesData?.total > 10" class="flex justify-center mt-6">
            <el-pagination
              v-model:current-page="favoritesPage.current"
              v-model:page-size="favoritesPage.size"
              :total="favoritesData.total"
              :page-sizes="[10, 20, 50]"
              layout="total, sizes, prev, pager, next, jumper"
              @size-change="handleFavoritesSizeChange"
              @current-change="handleFavoritesCurrentChange"
            />
          </div>
        </div>
      </el-tab-pane>
      <el-tab-pane label="我的评论" name="comment">
        <div v-loading="commentsLoading" class="min-h-[400px]">
          <div v-if="commentsData?.rows?.length" class="space-y-4">
            <div
              v-for="item in commentsData.rows"
              :key="item.id"
              class="bg-#1a1a1a rounded-lg p-4 hover:bg-#2a2a2a transition-colors"
            >
              <div class="flex items-start gap-3">
                <el-avatar :size="40" :src="item.memberUser.avatar" />
                <div class="flex-1">
                  <div class="flex items-center justify-between mb-2">
                    <h4 class="font-semibold text-white">{{ item.memberUser.nickname }}</h4>
                    <span v-if="item.createTime" class="text-xs text-gray-500">{{ formatTime(item.createTime) }}</span>
                  </div>
                  <p class="text-gray-300 mb-2">{{ item.content }}</p>
                  <div class="flex items-center gap-2">
                    <span
                      class="text-sm text-blue-400 cursor-pointer hover:text-blue-300"
                      @click="
                        navigateToMovie({
                          videoId: item.videoId,
                          movieBasicsId: item.movieBasicsId,
                          columnValue: item?.movie?.column.value
                        })
                      "
                    >
                      查看: {{ item.movie?.title || item.video.title }}
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <el-empty v-else description="暂无评论内容" />

          <div v-if="commentsData && commentsData?.total > 10" class="flex justify-center mt-6">
            <el-pagination
              v-model:current-page="commentsPage.current"
              v-model:page-size="commentsPage.size"
              :total="commentsData.total"
              :page-sizes="[10, 20, 50]"
              layout="total, sizes, prev, pager, next, jumper"
              @size-change="handleCommentsSizeChange"
              @current-change="handleCommentsCurrentChange"
            />
          </div>
        </div>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script setup lang="ts">
  import { ElMessage } from 'element-plus';
  import { createToken } from '~~/app/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';
  import type { WebMemberMovieFavoriteList } from '~~/types/api/webMemberMovieFavoriteList';
  import type { WebMovieCommentList } from '~~/types/api/webMemberCommentList';

  definePageMeta({
    layout: 'user-center',
    middleware: 'auth'
  });

  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const userInfo = useCookie<CookieUserInfo>(WEB_USER_INFO);
  const activeTab = ref('collection');

  // 收藏相关状态
  const favoritesLoading = ref(false);
  const favoritesData = ref<WebMemberMovieFavoriteList>();
  const favoritesPage = ref({
    current: 1,
    size: 10
  });

  // 评论相关状态
  const commentsLoading = ref(false);
  const commentsData = ref<WebMovieCommentList>();
  const commentsPage = ref({
    current: 1,
    size: 10
  });

  // 获取用户信息
  const { data: userInfoData } = await useFetch('/api/web/member/user', {
    headers: {
      Token: createToken()
    }
  });

  if (userInfoData.value?.code === 401) {
    token.value = null;
    userInfo.value = undefined;
    router.push('/');
  }

  // 获取收藏列表
  const fetchFavorites = async () => {
    try {
      favoritesLoading.value = true;
      const data = await request<WebMemberMovieFavoriteList>({
        url: '/api/web/member/movie/favorite/list',
        method: 'GET',
        query: {
          pageNum: favoritesPage.value.current,
          limit: favoritesPage.value.size
        }
      });
      favoritesData.value = data;
    } catch (error) {
      console.error('获取收藏列表失败:', error);
      ElMessage.error('获取收藏列表失败');
    } finally {
      favoritesLoading.value = false;
    }
  };

  // 获取评论列表
  const fetchComments = async () => {
    try {
      commentsLoading.value = true;
      const data = await request<WebMovieCommentList>({
        url: '/api/web/member/comment/list',
        method: 'GET',
        query: {
          pageNum: commentsPage.value.current,
          limit: commentsPage.value.size
        }
      });
      commentsData.value = data;
    } catch (error) {
      ElMessage.error('获取评论列表失败');
    } finally {
      commentsLoading.value = false;
    }
  };

  // Tab切换处理
  const handleTabChange = (tabName: string | number) => {
    const tabNameStr = String(tabName);
    if (tabNameStr === 'collection' && !favoritesData.value) {
      fetchFavorites();
    } else if (tabNameStr === 'comment' && !commentsData.value) {
      fetchComments();
    }
  };

  // 收藏分页处理
  const handleFavoritesSizeChange = (size: number) => {
    favoritesPage.value.size = size;
    favoritesPage.value.current = 1;
    fetchFavorites();
  };

  const handleFavoritesCurrentChange = (current: number) => {
    favoritesPage.value.current = current;
    fetchFavorites();
  };

  // 评论分页处理
  const handleCommentsSizeChange = (size: number) => {
    commentsPage.value.size = size;
    commentsPage.value.current = 1;
    fetchComments();
  };

  const handleCommentsCurrentChange = (current: number) => {
    commentsPage.value.current = current;
    fetchComments();
  };

  // 取消收藏
  const cancelFavorite = async (movieBasicsId: number) => {
    try {
      await request({
        url: '/api/web/member/movie/favorite/cancel',
        method: 'POST',
        body: {
          movieBasicsId
        }
      });
      ElMessage.success('取消收藏成功');
      fetchFavorites(); // 刷新列表
    } catch (error) {
      console.error('取消收藏失败:', error);
      ElMessage.error('取消收藏失败');
    }
  };

  // 导航到电影详情页
  const navigateToDetail = (urlObject: { movieBasicsId: number; columnValue: string | null }) => {
    if (!urlObject.movieBasicsId || !urlObject.columnValue) return;
    router.push(`/column/${urlObject.columnValue}/detail/${urlObject.movieBasicsId}`);
  };

  // 导航到电影播放详情页
  const navigateToMovie = (urlObject: {
    videoId: number;
    movieBasicsId: number | null;
    columnValue: string | null;
  }) => {
    if (!urlObject.movieBasicsId || !urlObject.columnValue) return;
    router.push(`/column/${urlObject.columnValue}/video/${urlObject.movieBasicsId}?mvid=${urlObject.videoId}`);
  };

  // 格式化时间
  const formatTime = (time: string | Date) => {
    if (!time) return '';
    const date = new Date(time);
    return date.toLocaleDateString('zh-CN', {
      year: 'numeric',
      month: '2-digit',
      day: '2-digit'
    });
  };

  // 格式化时长
  const formatDuration = (duration?: number | string) => {
    if (!duration) return '未知';
    const _duration = Number(duration);
    const hours = Math.floor(_duration / 60);
    const minutes = _duration % 60;
    if (hours > 0) {
      return `${hours}小时${minutes}分钟`;
    }
    return `${minutes}分钟`;
  };

  // 处理图片加载错误
  const handleImageError = (event: Event) => {
    const img = event.target as HTMLImageElement;
    img.src = '/images/toux.png'; // 设置默认图片
  };

  // 初始加载第一个tab的数据
  onMounted(() => {
    fetchFavorites();
  });
</script>

<style lang="scss">
  .center-index {
    &__avatar {
      position: relative;
      cursor: pointer;
      &:hover::before {
        content: '修改头像';
        position: absolute;
        width: 112px;
        height: 112px;
        background: rgba(0, 0, 0, 0.5);
        font-size: 16px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
      }
    }
  }
</style>
