<template>
	<div id="asd1">
		Category List

		<router-link to="/add_category">New Category</router-link>

      <table>
      	<tr>
      		<td>#</td>
      		<th>Name</th>
      		<th>Date</th>
      		<th>Action</th>
      	</tr>

      	<tr v-for="category in getAllMycategory">
      		<td>{{category.id}}</td>
      		<td>{{category.cat_name}}</td>
      		<td>sdsf</td>
      		<td>
      			 <router-link :to="`/categoryedit/${category.id}`">Edit</router-link>
      				<a href="" @click.prevent="deleteCategory(category.id)">Delete</a>
      		</td>
      	</tr>
      </table>
	</div>
</template>

<script type="text/javascript">
	export default{
          
          mounted(){
  this.$store.dispatch("allMyCategory")

          },
          computed:{
            getAllMycategory(){
       return this.$store.getters.getMycategory
              //this.$store.dispatch("allMyCategory")

            }
          },

          methods:{
         deleteCategory(id){
       //console.log(id);
       axios.get('/categorydelete/'+id)
       .then((response)=>{
       		this.$store.dispatch("allMyCategory");
       	  toast({
                  type: 'success',
                  title: 'Category Deleted successfully'
                })
       })
     }
          }
	}
</script>