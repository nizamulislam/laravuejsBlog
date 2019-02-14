export default{
	state:{
      category:[],
      post:[],
      blogpost:[],
      singlepost:[],
      mycategory:[],
      mypost:[]
	},
	getters:{

       getMycategory(state){
         return state.mycategory;
       },


        getCategory(state){
           return state.category;
        },

            getMyPost(state){
           return state.mypost;
        },


          getPost(state){
           return state.post;
        },
           getblogPost(state){
           return state.blogpost;
        },
         singlepost(state){
            return state.singlepost;
        },
	},
	actions:{
    allMyCategory(context){
  axios.get('/category_list')
          .then((response)=>{

      context.commit('customMyCategories',response.data.categories)

          })
    },
       allcategory(context){
          axios.get('/cl')
          .then((response)=>{

          context.commit('customCategories',response.data.categories)

          })
       },

          allpost(context){
          axios.get('/pl')
          .then((response)=>{
          	console.log(response.data);
          context.commit('customPosts',response.data.posts)

          })
       },


          allMypost(context){
          axios.get('/mypost')
          .then((response)=>{
            console.log(response.data);
          context.commit('customMyPosts',response.data.posts)

          })
       },







           getMyblogPost(context){
          axios.get('/blogpost')
          .then((response)=>{
            console.log(response.data);
          context.commit('customblogPosts',response.data.posts)

          })
       },

         getPostById(context,payload){
            axios.get('/singlepost/'+payload)
                .then((response)=>{
                    context.commit('singlepost',response.data.post)
                })
        },
         


	},
	mutations:{
       customCategories(state,data){
       	return state.category=data
       },

        customPosts(state,data){
       	return state.post=data
       },

         customblogPosts(state,data){
        return state.blogpost=data
       },
         
       singlepost(state,payload){
            return state.singlepost = payload
        },
          customMyCategories(state,data){
        return state.mycategory=data
       },

         customMyPosts(state,data){
        return state.mypost=data
       },

	}
}