import adminHome from './components/admin/admin_home'
import adminTry from './components/admin/try'
import categoryList from './components/admin/category/List'
import categoryAdd from './components/admin/category/New'
import categoryEdit from './components/admin/category/Edit'

//post
import postList from './components/admin/post/List'
import postAdd from './components/admin/post/New'
import postEdit from './components/admin/post/Edit'

//front
import frontHome from './components/front/frontHome'
import BlogPost from './components/front/blog/blogpost'
import SingleBlogPost from './components/front/blog/singleblog'

//practice
import myadminHome from './components/myadmin/myadmin_home'
import myadmincategory from './components/myadmin/category/category_list'
import myadminNewcategory from './components/myadmin/category/category_new'
import myadminEditcategory from './components/myadmin/category/category_edit'


import myadminpost from './components/myadmin/post/post_list'
import myadminNewpost from './components/myadmin/post/post_add'
import myadminEditpost from './components/myadmin/post/post_edit'

export const routes=[
 // { path: '/foo', component: Foo },
 //    { path: '/bar', component: Bar }

  {
  	path:'/home',
  	component:myadminHome
  },

  {
    path:'/category',

    component:myadmincategory
  },

   {
    path:'/add_category',

    component:myadminNewcategory
  },

    {
    path:'/categoryedit/:categoryId',
    component:myadminEditcategory
  },


  {
    path:'/mypost',

    component:myadminpost
  },

   {
    path:'/newpost',

    component:myadminNewpost
  },


 





   {
  	path:'/post',
  	component:adminTry
  },

  {
  	path:'/cl',
  	component:categoryList
  },

   {
  	path:'/ca',
  	component:categoryAdd
  },

    {
  	path:'/ce/:categoryId',
  	component:categoryEdit
  },
   {
  	path:'/pl',
  	component:postList
  },

   {
  	path:'/pa',
  	component:postAdd
  },

    {
  	path:'/pe/:postId',
  	component:postEdit
  },



//front
{
  path:'/',
  component:frontHome
},


{
  path:'/blog/:id',
   component:SingleBlogPost
},

    {
        path:'/blog',
        component:BlogPost
    },

];