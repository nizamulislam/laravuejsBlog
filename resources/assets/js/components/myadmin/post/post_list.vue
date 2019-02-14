<template>
  <div>
     <ul class="navigator">
    <li @click="prevSlide" class="lightgrey"> &laquo; </li>
    <li @click="changeSlide(1)" class="green">1</li>
    <li @click="changeSlide(2)" class="blue">2</li>
    <li @click="changeSlide(3)" class="grey">3</li>
    <li @click="changeSlide(4)" class="red">4</li>
    <li @click="nextSlide" class="lightgrey"> &raquo; </li>
  </ul>
  <div class="slider-container">
    <ul class="slider" :style="styleObject">
      <li class="green slide">Slide 1</li>
      <li class="blue slide">Slide 2</li>
      <li class="grey slide">Slide 3</li>
      <li class="red slide">Slide 4</li>
    </ul>
  </div>



    <h2>Post List</h2>
    <a class="btn btn-warning" style="float:right"><router-link to="/newpost">AddNew</router-link></a>
    <table class="table table-bordered table-hover">
      <thead>
      <tr>
        <th>#</th>
        <th>User</th>
        <th>Category</th>
        <th>Title</th>
        <th>Description</th>
        <th>Photo</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>

      <tr v-for="(post,index) in getallMyPost" :key="post.id">
        <td>{{index+1}}</td>
        <td v-if="post.user">{{post.user.name}}</td>
        <td v-if="post.category">{{post.category.cat_name}}</td>
        <td>{{post.title}}</td>

        <td>{{post.description|sortlength(10,"...")}}</td>
        <td><img :src="ourImage(post.photo)" alt="" width="20" height="20"></td>
        <td>

         <router-link :to="`/pe/${post.id}`">Edit</router-link>
          
            <a href="" @click.prevent="deletePost(post.id)">Delete</a>


        </td>
      </tr>
    </tbody>
    </table>

 

  </div>
  
</template>

<script>
import vueSlider from 'vue-slider-component/src/vue-slider.vue';
export default{
  name:"List",
 data: {
    activeSlide: 1
  },
  mounted(){
  this.$store.dispatch("allMypost");
  },
  computed:{
     getallMyPost(){
        return this.$store.getters.getMyPost;

     },

         styleObject: function() {
      const width = 0 - ((this.activeSlide-1) * 700)
      return {
        transform: 'translateX('+width+'px)'
      }
    }
  },
  methods:{
     deletePost(id){
       //console.log(id);
       axios.get('/post/'+id)
       .then((response)=>{
          this.$store.dispatch("allMypost");
          toast({
                  type: 'success',
                  title: 'Post Deleted successfully'
                })
       })
     },

     ourImage(img){
      return "/uploadimage/"+img;
     },

        changeSlide: function(num) {
      this.activeSlide = num
    },
    nextSlide: function() { 
      if(this.activeSlide < 4) this.activeSlide++
    },
    prevSlide: function() {
      if(this.activeSlide > 1) this.activeSlide--
    }
  }
}
</script>