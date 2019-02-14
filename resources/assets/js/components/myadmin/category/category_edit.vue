<template>
	<div id="asd22">

		<form>
			<tr>
				<td>Name</td>
				<td><input type="text" name="cat_name" v-model="form.cat_name"></td>
			</tr>

			<tr>
				<td></td>
				<td><button type="button" name="btn"  @click.prevent="updateCategory()">Update</button></td>
			</tr>
		</form>
	</div>
</template>

<script type="text/javascript">
	export default{
       data(){
       	return {
       		form:new Form({
             cat_name:''
       		})
       	}
       },

       mounted(){
 axios.get(`/categoryedit/${this.$route.params.categoryId}`)
             .then((response)=>{
                    this.form.fill(response.data.category)
                })
       },

       methods:{
       	updateCategory(){
       		  this.form.post(`/categoryupdate/${this.$route.params.categoryId}`)
       		.then(response=>{
               console.log(response.data);
                  this.$router.push('/category');
       		});
       	}
       }
	}
</script>