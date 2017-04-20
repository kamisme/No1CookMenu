import Vue from 'vue';
import router from './router/index.js';
//import IndexComponent from './components/index/IndexComponent.vue'
import App from './App.vue'

new Vue({
	el: '#app',
	router,
	render: h => h(App)
})