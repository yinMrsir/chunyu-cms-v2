<template>
  <div class="p-20px pt-74px center-wallet">
    <el-card>
      <template #header>
        <div class="flex justify-between items-center">
          <span>金币概况</span>
          <el-button type="primary" @click="handleTopUp">充值</el-button>
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
    </el-tabs>
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

  const payDialogVisible = ref(false);
  const qrcodeUrl = ref('');
  const movieList = ref([]);
  const goldList = ref([]);
  const moviePageNum = ref(1);
  const goldPageNum = ref(1);
  const outTradeNo = ref('');

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

  function sleep(time) {
    return new Promise(resolve => setTimeout(resolve, time * 1000));
  }
</script>
