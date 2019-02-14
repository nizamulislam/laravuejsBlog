<template>
	<div id="asd2">

		<form>
			<tr>
				<td>Name</td>
				<td><input type="text" name="cat_name" v-model="form.cat_name"></td>
			</tr>

			<tr>
				<td></td>
				<td><button type="button" name="btn"  @click.prevent="addcategory()">Save</button></td>
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

       methods:{
       	addcategory(){
       		this.form.post('/add_cat')
       		.then(response=>{
               console.log(response.data);
       		});
       	}
       }
	}
</script>