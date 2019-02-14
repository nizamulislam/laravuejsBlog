

require('./bootstrap');

window.Vue = require('vue');

//markdowneditor
import 'v-markdown-editor/dist/index.css';
import Editor from 'v-markdown-editor'
// global register
Vue.use(Editor);


import VueRouter from 'vue-router'
Vue.use(VueRouter);
import {routes} from './routes';

import { Form, HasError, AlertError } from 'vform'

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
window.Form=Form;

//sweetalert2
import swal from 'sweetalert2'

window.swal=swal;
const toast = swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000
});

// toast({
//   type: 'success',
//   title: 'Signed in successfully'
// })

window.toast=toast




//vuex support
import Vuex from 'vuex'
Vue.use(Vuex)
import storeData from "./store/index"
const store = new Vuex.Store(
    storeData
)

//moment support
import {filter} from './filter'


const router=new VueRouter({
	mode:'history',
	routes

});


 

Vue.component('example-component', require('./components/ExampleComponent.vue'));
Vue.component('admin-master', require('./components/admin/admin_master.vue'));

Vue.component('front-master', require('./components/front/frontMaster.vue'));


Vue.component('admin-masterpage', require('./components/myadmin/admin_master.vue'));



const app = new Vue({
    el: '#app',
    router,
    store,
});
