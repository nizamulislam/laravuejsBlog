<template>
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-around">


                <!-- left column -->
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Edit Post {{this.$route.params.postId}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form role="form" enctype="multipart/form-data">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="categoryId">Title</label>
                                    <input type="text" class="form-control" id="postId" placeholder="Add New Post" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                                    <has-error :form="form" field="title"></has-error>
                                </div>


                                   <div class="form-group">
                                    <label for="categoryId">Description</label>
                                  <!--   <textarea rows="5" cols="20" class="form-control" id="postId" placeholder="description" v-model="form.description" name="description" :class="{ 'is-invalid': form.errors.has('description') }">
                                    </textarea> -->
                                     <markdown-editor v-model="form.description"></markdown-editor>
                                    <has-error :form="form" field="description"></has-error>
                                </div>

                                 <div class="form-group">
                                    <label for="">Category</label>
                                     <select class="form-control" :class="{ 'is-invalid': form.errors.has('cat_id') }" v-model="form.cat_id">
                                        <option disabled value="">Select One</option>
                                        <option :value="category.id" v-for="category in getallCategory">option {{category.cat_name}}</option>

                                    </select>
                                    <has-error :form="form" field="title"></has-error>
                                </div>

                                     <div class="form-group" >
                                    <input @change = "changePhoto($event)" name="photo" type="file" :class="{ 'is-invalid': form.errors.has('photo') }">
                                <!--     <img :src="`/uploadimage/${form.photo}`"alt="" width="80" height="80"> -->
                                 <img :src="updateImage()" alt="" width="80" height="80">
                                    <has-error :form="form" field="photo"></has-error>
                                </div>





                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="button" class="btn btn-primary" @click.prevent="updatePost()">Update</button>
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
        data(){
            return {
                form: new Form({
                    title:'',
                    description:'',
                    cat_id:'',
                    photo:''
                })
            }
        },

        mounted(){
           this.$store.dispatch("allcategory");

             // axios.get(`/pe/${this.$route.params.postId}`)
             // .then((response)=>{
             //        this.form.fill(response.data.post)
             //    })

        },

          created(){
            axios.get(`/post_edit/${this.$route.params.postId}`)
                .then((response)=>{
                    //console.log(response.data)
                    this.form.fill(response.data.post)
                })

        },

        computed:{
        getallCategory(){
            return this.$store.getters.getCategory;

     }
        },
        methods:{
                changePhoto(event){
                let file = event.target.files[0];

                 if(file.size>1048576){
                     swal({
                         type: 'error',
                         title: 'Oops...',
                         text: 'Something went wrong!',
                         footer: '<a href>Why do I have this issue?</a>'
                     })
                 }else{
                     let reader = new FileReader();
                     reader.onload = event => {
                         this.form.photo = event.target.result
                         console.log(event.target.result)
                     };
                     reader.readAsDataURL(file);
                 }

            },
           updatePost(){
                this.form.post(`/update/${this.$route.params.postId}`)
                    .then(()=>{
                        this.$router.push('/pl')
                        toast({
                            type: 'success',
                            title: 'Post Updated successfully'
                        })
                    })
                    .catch(()=>{

                    })
            },
              updateImage(){
                let img = this.form.photo;
                if(img.length>100){
                    return  this.form.photo
                }else{
                    return `/uploadimage/${this.form.photo}`
                }

            }


        }
    }
</script>

<style scoped>

</style>