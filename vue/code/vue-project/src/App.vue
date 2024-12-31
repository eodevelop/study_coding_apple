<template>
  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <div v-for="(product, index) in products" :key="product">
    <h3>{{ product }}</h3>
    <p>{{ price[index] }} 만원</p>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      menu: ['Home', 'Products', 'About'],
      products: ['역삼동 원룸', '천호동 원룸', '마포구 원룸'],
      price: [50, 100, 110],
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
