<template>
  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <div>
    <h3>{{ products[0] }}</h3>
    <p>50만원</p>
  </div>
  <div>
    <h3>{{ products[1] }}</h3>
    <p>100만원</p>
  </div>
  <div>
    <h3>{{ products[2] }}</h3>
    <p>110만원</p>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      products: ['역삼동 원룸', '천호동 원룸', '마포구 원룸'],
      menu: ['Home', 'Products', 'About'],
    };
  },
  components: {},
};
</script>

<style scoped>
div {
  text-align: center;
}

.menu {
  background: darkslateblue;
  padding: 15px;
  border-radius: 5px;
}

.menu a {
  color: white;
  padding: 10px;
}
</style>
