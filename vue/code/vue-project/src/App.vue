<template>
  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <div>
    <h4>{{ products[0] }}</h4>
    <p>50만원</p>
    <button @click="increase(0)"> 허위 매물 신고</button>
    <span> 신고 수 : {{ reportCounts[0] }} </span>
  </div>
  <div>
    <h4>{{ products[1] }}</h4>
    <p>50만원</p>
    <button @click="increase(1)"> 허위 매물 신고</button>
    <span> 신고 수 : {{ reportCounts[1] }} </span>
  </div>
  <div>
    <h4>{{ products[2] }}</h4>
    <p>50만원</p>
    <button @click="increase(2)"> 허위 매물 신고</button>
    <span> 신고 수 : {{ reportCounts[2] }} </span>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      menu: ['Home', 'Products', 'About'],
      products: ['역삼동 원룸', '천호동 원룸', '마포구 원룸'],
      reportCounts: [0, 0, 0],
    };
  },
  methods: {
    increase(index) {
      this.reportCounts[index]++;
    },
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
