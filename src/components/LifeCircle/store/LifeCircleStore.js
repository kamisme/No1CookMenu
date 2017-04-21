import Vue from "vue";
import Vuex from "vuex";

import * as types from "./mutation-types.js";

var $ = require("jquery");
var {color,API} = require("../../../constant/constant.js");

Vue.use(Vuex);

const state = {
	data:[],
	title:"",
	new:"",
	icon:"",
	good:"",
	commit:"",
	loading:""
}
const getters = {
	allData:function(state){
		return state.data
	},
	title:function(state){
		return state.title
	},
	new:function(state){
		return state.new
	},
	icon:function(state){
		return state.icon
	},
	good:function(state){
		return state.good
	},
	commit:function(state){
		return state.commit
	},
	loading:function(state){
		return state.loading
	}
}
const actions = {
	getAllData:function({commit}){
		// console.log(types.RECEIVE_DATA)
		// console.log(commit)
		commit(types.RECEIVE_DATA)
	},
	lazyload:function({commit}){
		commit(types.LAZYLOAD_DATA)
	}
}
const mutations = {
	[types.RECEIVE_DATA](state){
		$.ajax({
			type:"GET",
			url: API + "No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
			success:function(res){
				// console.log(JSON.parse(res));
				var data = JSON.parse(res)
				// console.log(data)
				if(data[0]){
					state.data = data[2];
					// console.log(data[2])
					state.title = (data[2])[0].title;
					state.new = data[2][0].new;
					state.icon = data[2][0].icon;
					state.commit = data[2][0].comimg;
					state.good = data[2][0].goodimg;
					state.loading = data[2][0].loading;
					// console.log(data[2])
					// console.log(state.data)
				}
				
				// state.data.push(JSON.parse(res));
			},
			dataType:"jsonp"
		})
		// var page = new Promise(function(resolve,reject){
		// 	$.ajax({
		// 		type:"GET",
		// 		url:"http://localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
		// 		success:function(res){
		// 			console.log(JSON.parse(res));

		// 			state.data = JSON.parse(res);
		// 		},
		// 		dataType:"jsonp"
		// 	})
		// });
		// page.then(function())
		// var page2 = new Promise(function(resolve,reject){
		// 	$.ajax({
		// 		type:"GET",
		// 		url:"http://localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
		// 		success:function(res){
		// 			console.log(JSON.parse(res));

		// 			state.data = JSON.parse(res);
		// 		},
		// 		dataType:"jsonp"
		// 	})
		// })
	},
	[types.LAZYLOAD_DATA](state){
		// console.log("LAZYLOAD_DATA");
		var Height = $(window).height();
		var scrollTop = $(document).scrollTop();
		var winHeight = $(document.documentElement).height();
		// var winHeight = $(window).height();
		// console.log("height",Height,scrollHeight,winHeight)
		// console.log(Height,scrollTop,winHeight)
		// console.log(document.body.offsetHeight)
		if( scrollTop == winHeight - Height ){
			// setTimeout(function(){
				// console.log($(".loading"));
				console.log("more")
				$(".loading").css({
					display:"block"
				})
				$.ajax({
					type:"GET",
					url:API + "No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
					success:function(res){
						$(".loading").css({
							display:"none"
						})
						// console.log(JSON.parse(res));
						// state.data = JSON.parse(res);
						var data = JSON.parse(res)
						// console.log(data)
						console.log(state.data)
						data[2].forEach(function(value,index){
							// console.log(index,value);
							(state.data).push(value);
							// console.log(state.data)
						})
						// (state.data)[2].push(da);
					},
					dataType:"jsonp"
				})
			// },1000)
			// $.ajax({
			// 	type:"GET",
			// 	url:"http://localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
			// 	success:function(res){
			// 		// console.log(JSON.parse(res));
			// 		// state.data = JSON.parse(res);
			// 		var data = JSON.parse(res)
			// 		// console.log(data)
			// 		// console.log(state.data)
			// 		data[2].forEach(function(value,index){
			// 			// console.log(index,value);
			// 			(state.data)[2].push(value);
			// 			// console.log(state.data)
			// 		})
			// 		// (state.data)[2].push(da);
			// 	},
			// 	dataType:"jsonp"
			// })
		}
	}
}
export default new Vuex.Store({
	state,
	getters,
	actions,
	mutations
})

//export default new Vuex.Store({
//	actions: {
//		test: 'test'
//	}
//})