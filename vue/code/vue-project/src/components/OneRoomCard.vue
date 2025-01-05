<template>
  <div>
    <img :src="oneRoom.image" class="room-img" alt="원룸 사진">
    <h3>{{ oneRoom.title }}</h3>
    <p>{{ oneRoom.price }} 원</p>
  </div>
</template>

<script>
export default {
  name: "OneRoomCard",
  props: {
    oneRoom: Object,
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