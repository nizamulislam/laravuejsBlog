<template>
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-around">
                <!-- left column -->
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Edit Category</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form role="form">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="categoryId">Edit Category</label>
                                    <input type="text" class="form-control" id="categoryId" placeholder="Add New Category" v-model="form.cat_name" name="cat_name" :class="{ 'is-invalid': form.errors.has('cat_name') }">
                                    <has-error :form="form" field="cat_name"></has-error>
                                </div>

                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="button" class="btn btn-primary" @click.prevent="updateCategory()">Update</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->

                </div>

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
</template>

<script>
    export default {
        name: "Edit",
        mounted(){
            axios.get(`/ce/${this.$route.params.categoryId}`)
             .then((response)=>{
                    this.form.fill(response.data.category)
                })
        },
        data(){
            return {
                form: new Form({
                    cat_name:''
                })
            }
        },
        methods:{
            updateCategory(){
                this.form.post(`/cu/${this.$route.params.categoryId}`)
                  .then((response)=>{
                  	//console.log(response.data);
                  	this.$router.push('/cl');
                  	  toast({
                        type: 'success',
                        title: 'Category Updated successfully'
                     })
                  })

                   .catch(()=>{

                    })
                   
            }
        }
    }
</script>

<style scoped>

</style>