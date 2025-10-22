<template>
  <div class="video-actions">
    <!-- 用户头像 -->
    <div
      v-if="showUser"
      class="action-icon"
      @click.stop="router.push({ path: `/shorts/user/${short.memberUser.memberUserId}` })"
      @touchstart.stop="router.push({ path: `/shorts/user/${short.memberUser.memberUserId}` })"
    >
      <el-avatar :src="short.memberUser.avatar" class="border-#fff border-width-1px"></el-avatar>
    </div>

    <!-- 点赞按钮 -->
    <div class="action-icon">
      <i
        class="i-el-heart w-28px h-28px"
        :class="[userStatus?.isLike ? '!color-#FE2C55' : '']"
        @mousedown.stop="e => handleLikeClick(e)"
        @touchstart.stop="e => handleLikeClick(e)"
      ></i>
      <span>{{ short.likes }}</span>
    </div>

    <!-- 收藏按钮 -->
    <div class="action-icon">
      <i
        class="i-el-star w-28px h-28px"
        :class="[userStatus?.isCollection ? '!color-#FFD700' : '']"
        @mousedown.stop="e => handleCollectionClick(e)"
        @touchstart.stop="e => handleCollectionClick(e)"
      ></i>
      <span>{{ short.collection }}</span>
    </div>

    <!-- 评论按钮 -->
    <div v-if="showComments" class="action-icon">
      <i class="i-el-comment w-24px h-24px"></i>
      <span>{{ short.comments }}</span>
    </div>

    <!-- 分享按钮 -->
    <div v-if="showShare" class="action-icon">
      <i class="i-el-share-alt w-28px h-28px"></i>
      <span>{{ short.shareCount }}</span>
    </div>
  </div>
</template>

<script setup lang="ts">
  import { useShortActions } from '~~/app/composables/useShortActions';

  interface Props {
    short: {
      shortId: number;
      likes: number;
      collection: number;
      comments: number;
      shareCount: number;
      memberUser?: {
        memberUserId: number;
        avatar: string;
      };
    };
    showUser?: boolean;
    showComments?: boolean;
    showShare?: boolean;
    initialStatus?: {
      isLike: boolean;
      isCollection: boolean;
    };
  }

  const props = withDefaults(defineProps<Props>(), {
    showUser: true,
    showComments: true,
    showShare: true,
    initialStatus: () => ({
      isLike: false,
      isCollection: false
    })
  });

  const router = useRouter();
  const { handleLike, handleCollection } = useShortActions();

  // 用户状态
  const userStatus = ref({
    isLike: props.initialStatus?.isLike || false,
    isCollection: props.initialStatus?.isCollection || false
  });

  // 监听初始状态变化
  watch(
    () => props.initialStatus,
    newStatus => {
      if (newStatus) {
        userStatus.value = { ...newStatus };
      }
    },
    { immediate: true }
  );

  // 处理点赞点击
  const handleLikeClick = (e: Event) => {
    handleLike(e, props.short, userStatus.value);
  };

  // 处理收藏点击
  const handleCollectionClick = (e: Event) => {
    handleCollection(e, props.short, userStatus.value);
  };

  // 暴露方法给父组件
  defineExpose({
    userStatus,
    updateStatus: (newStatus: { isLike: boolean; isCollection: boolean }) => {
      userStatus.value = { ...newStatus };
    }
  });
</script>

<style lang="scss" scoped>
  .video-actions {
    @apply absolute bottom-80px right-15px flex flex-col gap-15px z-10;

    .action-icon {
      @apply flex flex-col items-center gap-5px cursor-pointer transition-all duration-200;

      &:hover {
        transform: scale(1.1);
      }

      i {
        @apply text-white opacity-90 transition-all duration-200;
      }

      span {
        @apply text-white text-12px opacity-80;
      }
    }
  }

  // 动画效果
  .animate__bounceIn {
    animation: bounceIn 1s ease;
  }

  @keyframes bounceIn {
    0% {
      transform: scale(0.3);
      opacity: 0;
    }
    50% {
      transform: scale(1.05);
    }
    70% {
      transform: scale(0.9);
    }
    100% {
      transform: scale(1);
      opacity: 1;
    }
  }
</style>
