<template>
  <div class="black-bg" v-if="isModalOpen">
    <div class="white-bg">
      <img :src="oneRooms[oneRoomIndex].image" class="room-img" alt="원룸 사진">
      <h4>{{ oneRooms[oneRoomIndex].title }}</h4>
      <p>{{ oneRooms[oneRoomIndex].content }}</p>
      <p>{{ oneRooms[oneRoomIndex].price }} 원</p>
      <!--      <button @click="isModalOpen=false">닫기</button>-->
    </div>
  </div>
</template>

<script>
export default {
  name: "OneRoomModal",
  props: {
    isModalOpen: Boolean,
    oneRooms: Array,
    oneRoomIndex: Number,
  },
}
</script>

<style>
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

.room-img {
  width: 100%;
  margin-top: 20px;
}
</style>