import Vue from "vue";
import Vuex from "vuex";

var $ = require("jquery");

Vue.use(Vuex);

const state = {
	data:[]
}
const getters = {
	allData:state => state.data;
}

const actions = {
	getAllData({commit}){

	}
}
export default new Vuex.Store({
	mutations:{
		AJAX(state,data){
			$.ajax({
				type:"GET",
				url:"http://localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
				success:function(res){
					console.log(res)
					console.log(JSON.parse(res));
					state.data = JSON.parse(res);
				},
				dataType:"jsonp",
				error:function(err){
					console.log(err)
				}
			})
		}
	}
})