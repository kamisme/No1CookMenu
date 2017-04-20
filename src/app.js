import Vue from 'vue';
import Vuex from "vuex";
import router from './router/index.js';

import App from './App.vue'

// import store from "./components/LifeCircle/vuex/store.js";

import store from "./components/LifeCircle/store/LifeCircleStore.js"

import VueLazyload from 'vue-lazyload'

Vue.use(VueLazyload,{
	loading:"../dist/loading.gif",
	try:3
})

new Vue({
	el: '#app',
	router,
	store,
	render: h => h(App)
})