<template>
  <div class="welcome">
    <h1>欢迎使用淳渔后台管理系统!</h1>
    <img src="/welcome.png" alt="" />、
    <p>
      <el-tag type="success" class="mr10">Nuxt 3</el-tag>
      <el-tag type="success" class="mr10">Vue 3</el-tag>
      <el-tag type="success" class="mr10">drizzle</el-tag>
      <el-tag type="success" class="mr10">mysql</el-tag>
      <el-tag type="success" class="mr10">redis</el-tag>
      <el-tag type="danger">&yen;免费开源</el-tag>
    </p>
    <p>
      <el-button
        icon="Connection"
        plain
        @click="
          goTarget(
            'https://www.douyin.com/user/MS4wLjABAAAAUKMCVZGbQl7etrdd36GBIG6OGxClOwoHci_-PIlxNvE',
          )
        "
      >
        抖音
      </el-button>
      <el-button
        icon="ChatRound"
        plain
        @click="goTarget('https://space.bilibili.com/397874328')"
      >
        bilibili
      </el-button>
      <el-button
        type="primary"
        icon="Cloudy"
        plain
        @click="goTarget('https://gitee.com/chunyu-cms/chunyu-cms-v2')"
      >
        码云
      </el-button>
      <el-button
        icon="Star"
        plain
        @click="goTarget('https://github.com/yinMrsir/chunyu-cms-v2')"
      >
        GitHub
      </el-button>
    </p>
  </div>
</template>

<script setup>
function goTarget(url) {
  window.open(url, "__blank");
}
</script>

<style lang="scss" scoped>
.welcome {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  height: calc(100vh - 84px);
  h1 {
    margin-bottom: 20px;
    font-size: 28px;
    color: #91addc;
  }
}
</style>
