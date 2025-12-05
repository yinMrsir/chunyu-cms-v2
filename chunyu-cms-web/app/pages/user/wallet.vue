<template>
  <div class="p-20px pt-74px center-wallet">
    <el-card>
      <template #header>
        <div class="flex justify-between items-center">
          <span>金币概况</span>
          <div class="flex gap-8px">
            <el-button type="success" @click="handleCouponExchange">兑换券</el-button>
            <el-button type="primary" @click="handleTopUp">充值</el-button>
          </div>
        </div>
      </template>
      <div class="flex items-center gap-8px">
        <i class="i-flat-color-icons-sales-performance w-20px h-20px inline-block"></i>我的金币：{{ wallet?.gold || 0 }}
      </div>
    </el-card>
    <el-tabs v-model="activeName" class="mt-15px">
      <el-tab-pane label="购买影片" name="purchaseHistory">
        <el-table stripe :data="movieList" style="width: 100%">
          <el-table-column type="index" label="序号" min-width="80px"></el-table-column>
          <el-table-column prop="movie.title" label="影片名称" min-width="180px"> </el-table-column>
          <el-table-column prop="createTime" label="购买时间" min-width="220px">
            <template #default="scope">
              {{ dayjs(scope.row.createTime).format('YYYY-MM-DD HH:mm:ss') }}
            </template>
          </el-table-column>
        </el-table>
      </el-tab-pane>
      <el-tab-pane label="金币明细" name="goldCoinDetails">
        <el-table stripe :data="goldList" style="width: 100%">
          <el-table-column type="index" label="序号" min-width="80px"></el-table-column>
          <el-table-column prop="remark" label="说明" min-width="180px"> </el-table-column>
          <el-table-column prop="gold" label="金币数量" min-width="180px"> </el-table-column>
          <el-table-column prop="createTime" label="记录时间" min-width="220px">
            <template #default="scope">
              {{ dayjs(scope.row.createTime).format('YYYY-MM-DD HH:mm:ss') }}
            </template>
          </el-table-column>
        </el-table>
      </el-tab-pane>
      <el-tab-pane label="邀请好友" name="inviteFriends">
        <div class="flex flex-col gap-20px">
          <!-- 邀请统计 -->
          <div class="grid grid-cols-1 md:grid-cols-3 gap-20px">
            <el-card class="text-center">
              <div class="text-2xl font-bold text-blue-600">{{ inviteStats.totalInvites || 0 }}</div>
              <div class="text-gray-500 mt-5px">总邀请人数</div>
            </el-card>
            <el-card class="text-center">
              <div class="text-2xl font-bold text-green-600">{{ inviteStats.rewardedInvites || 0 }}</div>
              <div class="text-gray-500 mt-5px">已获奖励人数</div>
            </el-card>
            <el-card class="text-center">
              <div class="text-2xl font-bold text-orange-600">{{ inviteStats.totalReward || 0 }}</div>
              <div class="text-gray-500 mt-5px">获得奖励金币</div>
            </el-card>
          </div>

          <!-- 邀请码 -->
          <el-card>
            <template #header>
              <span>我的邀请码</span>
            </template>
            <div class="flex items-center gap-15px">
              <div class="flex items-center gap-10px">
                <el-input v-model="inviteCode" readonly size="large" style="width: 200px" placeholder="加载中..." />
                <el-button type="primary" @click="copyInviteCode">
                  <i class="i-clarity-copy-line mr-5px"></i>复制邀请码
                </el-button>
              </div>
              <div class="text-gray-500 text-sm">分享邀请码给好友，好友注册使用后双方都可获得金币奖励</div>
            </div>
          </el-card>

          <!-- 邀请记录 -->
          <el-card>
            <template #header>
              <div class="flex justify-between items-center">
                <span>邀请记录</span>
                <el-button @click="refreshInviteRecords">刷新</el-button>
              </div>
            </template>
            <el-table stripe :data="inviteRecords" style="width: 100%">
              <el-table-column type="index" label="序号" min-width="80px"></el-table-column>
              <el-table-column prop="invitee.nickname" label="被邀请者" min-width="120px">
                <template #default="scope">
                  {{ scope.row.invitee?.nickname || '未知用户' }}
                </template>
              </el-table-column>
              <el-table-column prop="registerTime" label="注册时间" min-width="180px">
                <template #default="scope">
                  {{ dayjs(scope.row.registerTime).format('YYYY-MM-DD HH:mm:ss') }}
                </template>
              </el-table-column>
              <el-table-column prop="status" label="状态" min-width="100px">
                <template #default="scope">
                  <el-tag v-if="scope.row.status === '0'" type="warning">待奖励</el-tag>
                  <el-tag v-else-if="scope.row.status === '1'" type="success">已奖励</el-tag>
                  <el-tag v-else type="danger">已取消</el-tag>
                </template>
              </el-table-column>
              <el-table-column prop="inviterReward" label="我的奖励" min-width="100px">
                <template #default="scope">
                  <span v-if="scope.row.status === '1'" class="text-green-600">
                    +{{ scope.row.inviterReward }} 金币
                  </span>
                  <span v-else>{{ scope.row.inviterReward }} 金币</span>
                </template>
              </el-table-column>
            </el-table>
            <div v-if="inviteRecords.length === 0" class="text-center py-20px text-gray-500">暂无邀请记录</div>
          </el-card>
        </div>
      </el-tab-pane>
    </el-tabs>
    <el-dialog v-model="couponDialogVisible" title="兑换券兑换" width="400px">
      <div class="flex flex-col gap-20px">
        <el-input v-model="couponCode" placeholder="请输入兑换券码" size="large" clearable />
        <div class="text-gray-500 text-sm">兑换券码为8位字母数字组合，不区分大小写</div>
        <div class="flex justify-end gap-10px">
          <el-button @click="couponDialogVisible = false">取消</el-button>
          <el-button type="primary" :loading="exchangeLoading" @click="handleExchangeSubmit"> 立即兑换 </el-button>
        </div>
      </div>
    </el-dialog>
    <el-dialog v-model="payDialogVisible" title="支付" width="300px">
      <div class="flex flex-col gap-30px justify-center items-center">
        <qrcode-vue v-if="payDialogVisible" :value="qrcodeUrl" :size="160" level="H" />
        <p>请使用微信扫码支付</p>
        <el-button type="primary" @click="handlePayEnd">我已支付</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup>
  import dayjs from 'dayjs';
  import QrcodeVue from 'qrcode.vue';
  import { createToken } from '~~/app/utils/request';

  definePageMeta({
    layout: 'user-center'
  });

  const activeName = ref('purchaseHistory');
  const { data: wallet, refresh: refreshWallet } = await useFetch('/api/web/member/wallet', {
    headers: {
      Token: createToken()
    }
  });

  const couponDialogVisible = ref(false);
  const couponCode = ref('');
  const exchangeLoading = ref(false);
  const payDialogVisible = ref(false);
  const qrcodeUrl = ref('');
  const movieList = ref([]);
  const goldList = ref([]);
  const moviePageNum = ref(1);
  const goldPageNum = ref(1);
  const outTradeNo = ref('');

  // 邀请相关数据
  const inviteCode = ref('');
  const inviteStats = ref({});
  const inviteRecords = ref([]);
  const invitePage = ref(1);
  const invitePageSize = ref(10);

  getMemberMovieList();
  async function getMemberMovieList() {
    const data = await request({
      url: `/api/web/member/movie/list?pageNum=${moviePageNum.value}`
    });
    movieList.value = movieList.value.concat(data.rows);
  }

  getMemberGoldLogList();
  async function getMemberGoldLogList() {
    const data = await request({
      url: `/api/web/member/wallet/logs?pageNum=${goldPageNum.value}`
    });
    goldList.value = goldList.value.concat(data.rows);
  }

  function handleTopUp() {
    ElMessageBox.prompt('请输入要充值的金额', '提示', {
      confirmButtonText: '确认',
      cancelButtonText: '取消'
    }).then(async ({ value }) => {
      // 提交订单
      const data = await request({
        url: '/api/web/member/order/create',
        method: 'POST',
        body: {
          gold: value
        }
      });
      // 弹出二维码显示
      qrcodeUrl.value = data.codeUrl;
      payDialogVisible.value = true;
      outTradeNo.value = data.outTradeNo;
      await getOrderStatus(data.outTradeNo);
    });
  }

  // 轮询获取订单状态
  async function getOrderStatus(outTradeNo) {
    const data = await request({
      url: `/api/web/member/order/query?outTradeNo=${outTradeNo}`
    });
    if (data.status === 'SUCCESS') {
      await refreshWallet();
      payDialogVisible.value = false;
      ElMessage.success('充值成功');
    } else if (data.status === 'CLOSED') {
      ElMessage.error(`订单已关闭`);
    } else {
      await sleep(1);
      await getOrderStatus(outTradeNo);
    }
  }

  // 支付成功
  async function handlePayEnd() {
    const data = await request({
      url: '/api/web/member/order/asyncOrder',
      method: 'post',
      data: {
        outTradeNo: outTradeNo.value
      }
    });
    if (data.trade_state === 'SUCCESS') {
      await refreshWallet();
      payDialogVisible.value = false;
    }
  }

  // 兑换券相关函数
  function handleCouponExchange() {
    couponCode.value = '';
    couponDialogVisible.value = true;
  }

  async function handleExchangeSubmit() {
    if (!couponCode.value.trim()) {
      ElMessage.error('请输入兑换券码');
      return;
    }

    exchangeLoading.value = true;
    try {
      const data = await request({
        url: '/api/web/coupon/exchange',
        method: 'POST',
        body: {
          couponCode: couponCode.value.trim().toUpperCase()
        }
      });

      if (data) {
        ElMessage.success(`兑换成功！获得 ${data.goldAmount} 金币`);
        couponDialogVisible.value = false;
        // 刷新钱包信息
        await refreshWallet();
        // 刷新金币明细
        goldList.value = [];
        goldPageNum.value = 1;
        await getMemberGoldLogList();
      }
    } finally {
      exchangeLoading.value = false;
    }
  }

  function sleep(time) {
    return new Promise(resolve => setTimeout(resolve, time * 1000));
  }

  // 邀请相关函数
  async function getInviteCode() {
    try {
      const data = await request({
        url: '/api/web/member/invite/code'
      });
      if (data.inviteCode) {
        inviteCode.value = data.inviteCode;
      }
    } catch (error) {
      console.error('获取邀请码失败:', error);
      ElMessage.error('获取邀请码失败');
    }
  }

  async function getInviteStats() {
    try {
      const data = await request({
        url: '/api/web/member/invite/stats'
      });
      inviteStats.value = data.inviteStats;
    } catch (error) {
      console.error('获取邀请统计失败:', error);
    }
  }

  async function getInviteRecords() {
    try {
      const data = await request({
        url: `/api/web/member/invite/records?page=${invitePage.value}&pageSize=${invitePageSize.value}`
      });
      inviteRecords.value = data.records;
    } catch (error) {
      console.error('获取邀请记录失败:', error);
    }
  }

  async function refreshInviteRecords() {
    invitePage.value = 1;
    await getInviteRecords();
    await getInviteStats();
  }

  function copyInviteCode() {
    if (!inviteCode.value) {
      ElMessage.warning('邀请码加载中，请稍后重试');
      return;
    }

    // 使用现代浏览器的 Clipboard API
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard
        .writeText(inviteCode.value)
        .then(() => {
          ElMessage.success('邀请码已复制到剪贴板');
        })
        .catch(() => {
          // 降级处理
          fallbackCopyInviteCode();
        });
    } else {
      fallbackCopyInviteCode();
    }
  }

  function fallbackCopyInviteCode() {
    const textArea = document.createElement('textarea');
    textArea.value = inviteCode.value;
    textArea.style.position = 'fixed';
    textArea.style.opacity = '0';
    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();

    try {
      const successful = document.execCommand('copy');
      if (successful) {
        ElMessage.success('邀请码已复制到剪贴板');
      } else {
        ElMessage.error('复制失败，请手动复制');
      }
    } catch (err) {
      ElMessage.error('复制失败，请手动复制');
    }

    document.body.removeChild(textArea);
  }

  // 监听 activeName 变化，当切换到邀请标签页时加载数据
  watch(activeName, newValue => {
    if (newValue === 'inviteFriends') {
      getInviteCode();
      getInviteStats();
      getInviteRecords();
    }
  });

  // 页面初始化时如果当前就在邀请标签页，也要加载数据
  if (activeName.value === 'inviteFriends') {
    getInviteCode();
    getInviteStats();
    getInviteRecords();
  }
</script>
