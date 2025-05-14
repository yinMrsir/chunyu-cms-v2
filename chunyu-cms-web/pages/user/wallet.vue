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
  </div>
</template>

<script setup>
  import dayjs from 'dayjs';
  import { createToken } from '~/utils/request';

  definePageMeta({
    layout: 'user-center'
  });

  const activeName = ref('purchaseHistory');
  const { data: wallet, refresh: refreshWallet } = await useFetch('/api/web/member/wallet', {
    headers: {
      Token: createToken()
    }
  });

  const movieList = ref([]);
  const goldList = ref([]);
  const moviePageNum = ref(1);
  const goldPageNum = ref(1);

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
      await request({
        url: '/api/web/member/wallet/recharge',
        method: 'POST',
        body: {
          gold: value
        }
      });
      await refreshWallet();
      ElMessage({
        type: 'success',
        message: `充值成功`
      });
    });
  }
</script>
