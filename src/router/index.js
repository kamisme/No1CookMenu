import Vue from 'vue'
import VueRouter from 'vue-router'
import http from '../utils/HttpClient'

// import HomeComponent from '../components/home/HomeComponent.vue'<<<<<<< HEAD
//import LoginComponent from '../components/login/LoginComponent.vue'
//import FoodDetailComponent from '../components/FoodDetail/FoodDetailComponent.vue'
import IndexComponent from '../components/index/IndexComponent.vue'
import LoginComponent from '../components/login/LoginComponent.vue'
import FoodDetailComponent from '../components/FoodDetail/FoodDetailComponent.vue'
import LifeCircleCompoent from '../components/LifeCircle/LifeCircleComponent.vue'
import FoodListComponent from '../components/FoodList/FoodListComponent.vue'
import FoodsComponent from '../components/foods/FoodClassifyComponent.vue'
import good from "../components/good/good.vue"
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
	},{
		path: '/login',
		name: 'login',
		component: LoginComponent
	},{
        path:'/FoodDetail',
        name:'FoodDetail',
        component:FoodDetailComponent
    },{
    	path:"/LifeCircle",
    	name:"LifeCircle",
    	component:LifeCircleCompoent
    },{
    	path:"/FoodList",
    	name:"FoodList",
    	component:FoodListComponent
    },{
        path:'/good',
        name:'good',
        component:good

    },{
        path:'/foods',
        name:"foods",
        component:FoodsComponent
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
