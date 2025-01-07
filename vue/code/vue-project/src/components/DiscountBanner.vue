<template>
  <div class="discount">
    <h3> 지금 결제하면 {{ discount }}% 할인</h3>
  </div>
</template>

<script>
export default {
  name: "DiscountBanner",
  data() {
    return {
      discount: 5,
      intervalId: null
    }
  },
  mounted() {
    this.intervalId = setInterval(() => {
      if (this.discount <= 1) {
        clearInterval(this.intervalId);
      }
      this.discount--;
    }, 1000);
  }
}
</script>

<style>
.discount {
  background: #eee;
  padding: 10px;
  margin: 10px;
  border-radius: 5px;
}
</style>