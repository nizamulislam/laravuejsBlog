<template>
 <span id="asd2">
 	<section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Single Blog {{singlepost.title}}</h2>
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
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">
              <article>
              <div class="row">
                <div class="span8">
                  <div class="post-image">
                    <div class="post-heading">
                      <h3><a href="#"> {{singlepost.title}}</a></h3>

                    </div>
                     <img :src="`/uploadimage/${singlepost.photo}`" alt="" />
                  </div>
                  <p>
                   {{singlepost.description}}
                  </p>

                  <div class="bottom-article">
                    <ul class="meta-post">
                      <li v-if="singlepost.user"><i class="icon-user"></i><a href="#"> {{singlepost.user.name}}</a></li>
                      <li v-if="singlepost.category"><i class="icon-folder-open"></i><a href="#"> {{singlepost.category.cat_name}}</a></li>

                    </ul>
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
        name: "SingleBlog",
        components:{
            BlogSidebar
        },
        computed:{
            singlepost(){
                return this.$store.getters.singlepost
            }
        },
        methods:{
           
        },

        mounted(){
      this.$store.dispatch('getPostById',this.$route.params.id);
        }
      
       
    }
</script>
