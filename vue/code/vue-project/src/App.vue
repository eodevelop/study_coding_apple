<template>
  <div class="black-bg" v-if="isModalOpen">
    <div class="white-bg">
      <h4>상세페이지임</h4>
      <p>상세페이지 내용임</p>
      <button @click="isModalOpen=false">닫기</button>
    </div>
  </div>

  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <div v-for="oneRoom in oneRooms" :key="oneRoom">
    <img :src="oneRoom.image" class="room-img" alt="원룸 사진">
    <h4 @click="isModalOpen = true">{{ oneRoom.title }}</h4>
    <p>{{ oneRoom.price }} 원</p>
  </div>
</template>

<script>
import oneRooms from "./assets/oneroom.js";

export default {
  name: "App",
  data() {
    return {
      menu: ['Home', 'Products', 'About'],
      products: ['역삼동 원룸', '천호동 원룸', '마포구 원룸'],
      reportCounts: [0, 0, 0],
      isModalOpen: false,
      oneRooms: oneRooms,
    };
  },
  methods: {},
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
