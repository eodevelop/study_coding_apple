<template>
  <div class="black-bg" v-if="isModalOpen">
    <div class="white-bg">
      <img :src="oneRooms[oneRoomIndex].image" class="room-img" alt="원룸 사진">
      <h4>{{ oneRooms[oneRoomIndex].title }}</h4>
      <p>{{ oneRooms[oneRoomIndex].content }}</p>
      <input v-model.number="month">
      <p> {{ month }} 개월 선택함 : {{ oneRooms[oneRoomIndex].price * month }} 원</p>
      <button @click="closeModal">닫기</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "OneRoomModal",
  data() {
    return {
      month: 1,
    }
  },
  watch: {
    month(newValue) {
      if (newValue > 12) {
        alert('13개월 이상 선택할 수 없습니다.');
        this.month = 1;
      }
      if (isNaN(newValue)) {
        alert('숫자만 입력 가능합니다.');
        this.month = 1;
      }
    }
  },
  props: {
    isModalOpen: Boolean,
    oneRooms: Array,
    oneRoomIndex: Number,
  },
  methods: {
    closeModal() {
      this.$emit('closeModal');
    }
  }
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