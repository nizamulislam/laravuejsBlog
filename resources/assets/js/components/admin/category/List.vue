<template>
	<div>
		<h2>Category List</h2>
		<a class="btn btn-warning" style="float:right"><router-link to="/ca">AddNew</router-link></a>
		<table class="table table-bordered table-hover">
			<thead>
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Date</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>

			<tr v-for="(category,index) in getallCategory" :key="category.id">
				<td>{{index+1}}</td>

				<td>{{category.cat_name}}</td>
				<td>{{category.created_at |timeformat}}</td>
				<td>

				 <router-link :to="`/ce/${category.id}`">Edit</router-link>
					
						<a href="" @click.prevent="deleteCategory(category.id)">Delete</a>


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
	this.$store.dispatch("allcategory");
  },
  computed:{
     getallCategory(){
     	 	return this.$store.getters.getCategory;

     }
  },
  methods:{
     deleteCategory(id){
       //console.log(id);
       axios.get('/category/'+id)
       .then((response)=>{
       		this.$store.dispatch("allcategory");
       	  toast({
                  type: 'success',
                  title: 'Category Deleted successfully'
                })
       })
     }
  }
}
</script>