import { request } from '~~/app/utils/request';
import { WEB_TOKEN } from '#shared/cookiesName';
import { useLoginVisible } from '~~/app/composables/states';

export function useShortActions() {
  const token = useCookie(WEB_TOKEN);
  const loginVisible = useLoginVisible();

  /**
   * 获取短视频的用户交互状态
   * @param shortId 短视频ID
   * @returns 包含点赞和收藏状态的对象
   */
  const getShortUserStatus = async (shortId: number) => {
    const status = {
      isLike: false,
      isCollection: false
    };

    if (!token.value) {
      return status;
    }

    try {
      // 获取点赞状态
      status.isLike = await request({
        url: `/api/web/member/short/info?shortId=${shortId}`
      });

      // 获取收藏状态
      status.isCollection = await request({
        url: `/api/web/member/short/collection/status?shortId=${shortId}`
      });
    } catch (error) {
      console.error('获取短视频用户状态失败:', error);
    }

    return status;
  };

  /**
   * 处理点赞/取消点赞
   * @param event 事件对象
   * @param short 短视频对象
   * @param currentStatus 当前状态对象
   */
  const handleLike = async (event: Event, short: any, currentStatus: { isLike: boolean }) => {
    if (!token.value) {
      loginVisible.value = true;
      return;
    }

    const target = event.target as HTMLElement;

    try {
      if (currentStatus.isLike) {
        await request({
          url: '/api/web/member/short/like/cancel',
          method: 'POST',
          body: {
            shortId: short.shortId
          }
        });
        currentStatus.isLike = false;
        short.likes -= 1;
      } else {
        await request({
          url: '/api/web/member/short/like',
          method: 'POST',
          body: {
            shortId: short.shortId
          }
        });
        currentStatus.isLike = true;

        // 添加动画效果
        await nextTick();
        target.classList.add('animate__bounceIn');
        short.likes += 1;
        setTimeout(() => {
          target.classList.remove('animate__bounceIn');
        }, 1000);
      }
    } catch (error) {
      console.error('点赞操作失败:', error);
      // 恢复状态
      currentStatus.isLike = !currentStatus.isLike;
      if (currentStatus.isLike) {
        short.likes += 1;
      } else {
        short.likes -= 1;
      }
    }
  };

  /**
   * 处理收藏/取消收藏
   * @param event 事件对象
   * @param short 短视频对象
   * @param currentStatus 当前状态对象
   */
  const handleCollection = async (event: Event, short: any, currentStatus: { isCollection: boolean }) => {
    if (!token.value) {
      loginVisible.value = true;
      return;
    }

    const target = event.target as HTMLElement;

    try {
      if (currentStatus.isCollection) {
        await request({
          url: '/api/web/member/short/collection/cancel',
          method: 'POST',
          body: {
            shortId: short.shortId
          }
        });
        currentStatus.isCollection = false;
        short.collection -= 1;
      } else {
        await request({
          url: '/api/web/member/short/collection',
          method: 'POST',
          body: {
            shortId: short.shortId
          }
        });
        currentStatus.isCollection = true;

        // 添加动画效果
        await nextTick();
        target.classList.add('animate__bounceIn');
        short.collection += 1;
        setTimeout(() => {
          target.classList.remove('animate__bounceIn');
        }, 1000);
      }
    } catch (error) {
      console.error('收藏操作失败:', error);
      // 恢复状态
      currentStatus.isCollection = !currentStatus.isCollection;
      if (currentStatus.isCollection) {
        short.collection += 1;
      } else {
        short.collection -= 1;
      }
    }
  };

  return {
    getShortUserStatus,
    handleLike,
    handleCollection
  };
}
