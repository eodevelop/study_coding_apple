<template>
  <div v-for="(oneRoom,index) in oneRooms" :key="index">
    <img :src="oneRoom.image" class="room-img" alt="원룸 사진">
    <h3>{{ oneRoom.title }}</h3>
    <!--    <h4 @click="isModalOpen = true; oneRoomIndex=index">{{ oneRoom.title }}</h4>-->
    <p>{{ oneRoom.price }} 원</p>
  </div>
</template>

<script>
export default {
  name: "OneRoomCard",
  props: {
    oneRooms: Array,
  }
}
</script>

<style>
div {
  text-align: center;
}

.room-img {
  width: 100%;
  margin-top: 20px;
}
</style>