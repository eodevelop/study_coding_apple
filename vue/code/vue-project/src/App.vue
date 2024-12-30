<script setup></script>

<template>
  <img
      alt="Vue logo"
      class="logo"
      src="./assets/logo.svg"
      width="125"
      height="125"
  />
  <div>
    <h3>XX 원룸</h3>
    <p></p>
  </div>
  <div>
    <h3>XX 원룸</h3>
    <p></p>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      products: ['역삼동 원룸', '천호동 원룸', '마포구 원룸']
    };
  },
  components: {},
};
</script>

<style scoped>
.logo {
  display: block;
  margin: 0 auto 2rem;
}
</style>
