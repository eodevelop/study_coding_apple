<template>
  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <OneRoomModal
      :isModalOpen="isModalOpen"
      :oneRooms="oneRooms"
      :oneRoomIndex="oneRoomIndex"
  />
  <DiscountBanner/>
  <div v-for="(oneRoom,index) in oneRooms" :key="index">
    <img :src="oneRoom.image" class="room-img" alt="원룸 사진">
    <h4 @click="isModalOpen = true; oneRoomIndex=index">{{ oneRoom.title }}</h4>
    <p>{{ oneRoom.price }} 원</p>
  </div>
</template>

<script>
import oneRooms from "./assets/oneroom.js";
import DiscountBanner from "@/components/DiscountBanner.vue";
import OneRoomModal from "@/components/OneRoomModal.vue";

export default {
  name: "App",
  data() {
    return {
      menu: ['Home', 'Products', 'About'],
      products: ['역삼동 원룸', '천호동 원룸', '마포구 원룸'],
      reportCounts: [0, 0, 0],
      isModalOpen: false,
      oneRooms: oneRooms,
      oneRoomIndex: 0,
    };
  },
  methods: {},
  components: {OneRoomModal, DiscountBanner},
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

.room-img {
  width: 100%;
  margin-top: 20px;
}
</style>
