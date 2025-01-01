<template>
  <div class="black-bg">
    <div class="white-bg">
      <h4>상세페이지임</h4>
      <p>상세페이지 내용임</p>
    </div>
  </div>

  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <div>
    <img src="./assets/img/room0.jpg" class="room-img" alt="원룸 사진 0">
    <h4>{{ products[0] }}</h4>
    <p>50만원</p>
    <button @click="increase(0)"> 허위 매물 신고</button>
    <span> 신고 수 : {{ reportCounts[0] }} </span>
  </div>
  <div>
    <img src="./assets/img/room1.jpg" class="room-img" alt="원룸 사진 1">
    <h4>{{ products[1] }}</h4>
    <p>50만원</p>
    <button @click="increase(1)"> 허위 매물 신고</button>
    <span> 신고 수 : {{ reportCounts[1] }} </span>
  </div>
  <div>
    <img src="./assets/img/room2.jpg" class="room-img" alt="원룸 사진 2">
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
      isModalOpen: false,
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
body {
  margin: 0;
}

div {
  box-sizing: border-box;
}

.black-bg {
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  position: fixed;
  padding: 20px;
}

.white-bg {
  width: 100%;
  background: white;
  border-radius: 8px;
  padding: 20px;
}

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

.room-img {
  width: 100%;
  margin-top: 40px;
}
</style>
