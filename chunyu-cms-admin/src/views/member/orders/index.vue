<template>
  <div class="app-container">
    <table-pro
      ref="tableProRef"
      :is-show-button-list="false"
      :columns="columns"
      :table-request-fn="orderList"
    ></table-pro>
  </div>
</template>

<script setup>
  import { orderList, orderAsyncPayStatus } from './services';
  const { proxy } = getCurrentInstance();
  const { pay_status } = proxy.useDict('pay_status');

  const columns = ref([
    { title: '订单编号', field: 'outTradeNo', props: { minWidth: '200px' } },
    { title: '交易单号', field: 'transactionId', props: { minWidth: '250px' } },
    { title: '订单总金额', field: 'totalAmount', props: { width: '100px' } },
    {
      title: '支付状态',
      field: 'status',
      type: 'select',
      options: pay_status,
      props: { width: '100px' }
    },
    { title: '支付时间', field: 'paidAt', props: { width: '160px' } },
    { title: '创建时间', field: 'createTime', type: 'dateTime', props: { width: '160px' } },
    { title: '备注', field: 'remark', props: { width: '160px' } },
    {
      title: '操作',
      props: { width: '160px', fixed: 'right' },
      actions: [
        {
          text: '同步订单状态',
          click: async ({ outTradeNo }) => {
            await orderAsyncPayStatus(outTradeNo);
            proxy.$message.success('同步成功');
            await proxy.$refs.tableProRef.getList();
          }
        }
      ]
    }
  ]);
</script>
