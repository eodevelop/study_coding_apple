<template>
  <div class="menu">
    <a v-for="item in menu" :key="item">{{ item }}</a>
  </div>
  <OneRoomModal
      :isModalOpen="isModalOpen"
      :oneRooms="oneRooms"
      :oneRoomIndex="oneRoomIndex"
      @closeModal="isModalOpen=false"
  />
  <DiscountBanner/>
  <OneRoomCard v-for="oneRoom in oneRooms" :key="oneRoom" :oneRoom="oneRoom"
               @openModal="isModalOpen=true; oneRoomIndex=$event"/>
</template>

<script>
import oneRooms from "./assets/oneroom.js";
import DiscountBanner from "@/components/DiscountBanner.vue";
import OneRoomModal from "@/components/OneRoomModal.vue";
import OneRoomCard from "@/components/OneRoomCard.vue";

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
  components: {OneRoomCard, OneRoomModal, DiscountBanner},
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
