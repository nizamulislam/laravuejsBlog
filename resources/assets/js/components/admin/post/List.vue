<template>





	<div>
		<h2>Post List1</h2>
		<a class="btn btn-warning" style="float:right"><router-link to="/pa">AddNew</router-link></a>
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

			<tr v-for="(post,index) in getallPost" :key="post.id">
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
export default{
  name:"List",
  mounted(){
	this.$store.dispatch("allpost");
  },
  computed:{
     getallPost(){
     	 	return this.$store.getters.getPost;

     }
  },
  methods:{
     deletePost(id){
       //console.log(id);
       axios.get('/post/'+id)
       .then((response)=>{
       		this.$store.dispatch("allpost");
       	  toast({
                  type: 'success',
                  title: 'Post Deleted successfully'
                })
       })
     },

     ourImage(img){
     	return "/uploadimage/"+img;
     }
  }
}
</script>