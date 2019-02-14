<template>
 <span id="asd">
  <div class="loader" v-if="loader"></div>
 	<section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Blog left sidebar</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Blog</a><i class="icon-angle-right"></i></li>
              <li class="active">Blog with left sidebar</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

   <!--  <div>
      <h1>Slider Here</h1>
    </div> -->



    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">
            <article v-for="post in Tryblogpost">
              <div class="row">
                <div class="span8">
                  <div class="post-image">
                    <div class="post-heading">
                      <h3><a href="#">{{post.title}}</a></h3>
                    </div>
                  <img :src="`uploadimage/${post.photo}`" alt="" />
                  </div>
                  <p>
                      {{post.description | sortlength(500,"...")}}
                  </p>
                  <div class="bottom-article">
                    <ul class="meta-post">
                      <li><i class="icon-calendar"></i><a href="#"> Mar 23, 2013</a></li>
                      <li v-if="post.user"><i class="icon-user"></i><a href="#">{{post.user.name}}</a></li>
                      <li><i class="icon-folder-open"></i><a href="#">{{post.category.cat_name}}</a></li>
                      <li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
                    </ul>
                    <router-link :to="`/blog/${post.id}`" class="pull-right">Continue reading <i class="icon-angle-right"></i></router-link>
                  </div>
                </div>
              </div>
            </article>
            
       
                <BlogSidebar/>
            
            <div id="pagination">
              <span class="all">Page 1 of 3</span>
              <span class="current">1</span>
              <a href="#" class="inactive">2</a>
              <a href="#" class="inactive">3</a>
            </div>
          </div>
       
        </div>
      </div>
    </section>
 </span>



</template>
<script>

    import BlogSidebar from "./blogsidebar.vue"
    export default {
        name: "blogpost",
        data(){
          return{
          	loader: true,
          }
        },
        components:{
        
            BlogSidebar
           
        },
        mounted(){
            this.$store.dispatch('getMyblogPost');
            this.loader = true;
        },
        computed:{
            Tryblogpost(){
                return this.$store.getters.getblogPost
            }
        },
        methods:{
            getAllCategoryPost(){
                if(this.$route.params.id!=null){
                    this.$store.dispatch('getPostByCatId',this.$route.params.id);
                    this.loader = true;
                }else{
                    this.$store.dispatch('getblogPost');
                }

            }
        },
        watch:{
            $route(to,from){
                this.getAllCategoryPost();
            }
        }
    }
</script>

  <style scoped>
        .loader {
            transform: translate(-50%, -50%);
            border: 10px solid #f3f3f3; /* Light grey */
            border-top: 8px solid #3498db; /* Blue */
            border-radius: 50%;
            width: 45px;
            height: 45px;
            animation: spin 2s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>