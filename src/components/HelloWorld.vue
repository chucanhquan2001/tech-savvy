<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <img alt="Vue logo" src="../assets/maintenance.jpg">
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  margin: 40px 0 0;
  text-align: center;
  margin-bottom: 50px;
}
img {
  max-width: 100%;
}
</style>
