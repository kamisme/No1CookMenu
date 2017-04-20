import Vue from 'vue'
import VueRouter from 'vue-router'
import http from '../utils/HttpClient'

// import HomeComponent from '../components/home/HomeComponent.vue'
//import LoginComponent from '../components/login/LoginComponent.vue'
//import FoodDetailComponent from '../components/FoodDetail/FoodDetailComponent.vue'
import IndexComponent from '../components/index/IndexComponent.vue'
Vue.use(VueRouter)

//const router = new VueRouter({
//	routes: [{
//		path: '/login',
//		name: 'login',
//		component: LoginComponent
//	},{
//      path:'/FoodDetail',
//      name:'FoodDetail',
//      component:FoodDetailComponent
//  },{
//  	path:"/index",
//  	name:"index",
//  	component:IndexCompoent
//  }]
//})
const router = new VueRouter({
	routes: [{
		path: '/',
		name: 'index',
		component: IndexComponent
	}]
})

//对将要进入的路由进行权判断
// router.beforeEach((to, from, next) =>{
// 	if(to.path != '/login'){
// 		// http.get('./src/data/sesson.json')
// 		// .then(response => {
// 		// 	if(!response.login){
// 		// 		router.replace('login');
// 		// 	}
// 		// 	next();
// 		// })
// 		http.get('http://localhost:888/getsession')
// 		.then(response => {
// 			if(!response.name){
// 				router.replace('login');
// 			}
// 			next()
// 		});
// 	} else {
// 		next();
// 	}
// })

export default router
