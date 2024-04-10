<template>
    <div>
      <h2>Posty</h2>
      <div v-if="posts.length">
        <div class="post-container" v-for="post in posts" :key="post.id">
          <h3>{{ post.title }}</h3>
          <p>{{ post.content }}</p>
        </div>
      </div>
      <p v-else>Brak postów do wyświetlenia.</p>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        posts: []
      };
    },
    mounted() {
      this.fetchPosts();
    },
    methods: {
      fetchPosts() {
        fetch('http://localhost/skrypty/fetchdata.php')
          .then(response => response.json())
          .then(data => {
            this.posts = data;
          })
          .catch(error => {
            console.error("Wystąpił błąd podczas pobierania postów: ", error);
          });
      }
    }
  }
  </script>

<style scoped>
* {
  font-family: Arial, Helvetica, sans-serif;
}

body {
  background-color: #e1e1e1 !important;
}

h2 {
  font-size: 50px;
  text-align: center;
}

.post-container {
  max-width: 600px;
  margin: 20px auto;
  padding: 20px;
  background-color: #f0f4f8;
  border-radius: 10px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
}

h3 {
  font-weight: bold;
}
</style>
  