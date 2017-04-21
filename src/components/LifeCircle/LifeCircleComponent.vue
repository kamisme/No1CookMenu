<template>
	<div class="LifeCircle">

		<h1 :style="{background:color}" ref="hhh">
			<img v-lazy="icon" height="68" width="68" alt="" @click="routerIndex">
			<span>{{title}}</span>
		</h1>
		<div class="new">
			<em>公告</em>
			<a href="">{{news}}</a>
		</div>
		<ul>
			<li v-for="(item,index) in allData" :ref="index">
				<h3>{{item.name}}</h3>
				<div class="pic">
					<div class="pic-r">
						<img v-lazy="item.img1">
					</div>
					<div class="pic-w">
						<img v-lazy="item.img2">
						<img v-lazy="item.img3">
					</div>
				</div>
				<div class="info">
					{{item.text}}
				</div>
				<div class="comment">
				    <div class="left">
				    	<span class="time">刚刚 </span>
						<span class="time">{{item.username}}</span>
				    </div>
					<div class="right">
						<div class="com">
							<img v-lazy="commit" height="22" width="22" alt="">
							<span>{{item.comment}}</span>
						</div>
						<div class="good">
							<img v-lazy="good" height="22" width="22" alt="">
							<span>{{item.good}}</span>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="loading">
			<img :src="loading" height="50" width="50" alt="">
		</div>
	</div>
	
</template>

<script>
	//引进常量
	// import {color} from "../../constant/constant.js";
	var {color,api} = require("../../constant/constant.js")

	// var $ = require("jquery");
	// import $ from "jquery";
	//引进ajax模块
	import http from "../../utils/HttpClient.js";

	//引进store
	import store from "./store/LifeCircleStore.js";
	//引进样式
	// import "./LifeCircleComponent.scss";
	import "./reset.css";
	//action
	import {ajax} from "./vuex/actions.js";

	import {mapGetters,mapActions} from "vuex";

	// import VueLazyload from "vue-lazyload/vue-lazyload-next"

	export default{
		// store,
		data:function(){
			return {
				color:color,
			}
		},
		computed:mapGetters({
			allData:"allData",
			title:"title",
			news:"new",
			icon:"icon",
			good:"good",
			commit:"commit",
			loading:"loading"
		}),
		methods:mapActions({
			lazyload:"lazyload",
			getAllData:"getAllData",
			routerIndex:"routerIndex"
		}),
		created:function(){		
			this.getAllData();
		},
		mounted:function(){			
			window.addEventListener("scroll",this.lazyload)
		}
	}

	// export default {
	// 	name:"LifeCircle",
	// 	data:function(){
	// 		return {
	// 			color:color
	// 		}
	// 	},
	// 	methods:function(){

	// 	},
	// 	created:function(){
	// 		// console.log("created")
	// 		// http.get("http:localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php").then(function(res){
	// 		// 	console.log("111")
	// 		// 	console.log(res)
	// 		// })
	// 		// $.get("http:localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",function(res){
	// 		// 	console.log(res);
	// 		// })
	// 		$.ajax({
	// 			type:"GET",
	// 			url:"http://localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
	// 			success:function(res){
	// 				console.log(res)
	// 				console.log(JSON.parse(res));
	// 			},
	// 			dataType:"jsonp",
	// 			error:function(err){
	// 				console.log(err)
	// 			}
	// 		})
	// 	}
	// }
</script>
<style lang="scss">
.LifeCircle{
	.loading{
		width:100%;
		height:50px;
		position:relative;
		display:none;
		img{
			position:absolute;
			left:50%;	
			top:50%;
			transform:translate(-50%,-50%);	
			height:50px;
			width:50px;
		}
	}
	h1{
		height: 68px;
		width: 100%;
		text-align:center;
		color:#fff;
		line-height:68px;
		position:relative;
		img{
			float:left;
			height: 23px;
			width: 23px;
			margin-left:20px;
			position:absolute;
			left: 0;
			top: 50%;
			transform:translate(0,-50%);
		}
		span{
			position:absolute;
			left: 50%;
			top: 50%;
			transform:translate(-50%,-50%);
		}
	}
	.new{
		height: 50px;
		border-bottom:1px solid #e8e4e3;
		line-height:50px;
		font-size:18px;
		padding:0 20px;
		position:relative;
		a{
			position:absolute;
			top:50%;
			left:70px;
			width:80%;
			transform:translate(0,-50%);
			color:#000;
			font-size:16px;
			overflow:hidden;
			text-overflow:ellipsis;
			white-space:nowrap;
		}
		em{
			position:absolute;
			left:10px;
			top:50%;
			transform:translate(0,-50%);
			background-color: #fb6652;
    		border-radius: 2px;
    		color:#fff;
    		height:30px;
    		width:50px;
    		text-align:center;
    		line-height:30px;
    		// line-height:20px;
    		// padding:10px 5px;
    		// margin-right:10px;
    		// padding:2px 5px;
		}
	}
	ul{
		li{
			padding:0 20px;
			border-bottom:1px solid #e8e4e3;
			h3{
				height: 51px;
				line-height: 51px;
			}
			.pic{
				height:200px;		
				.pic-r{
					width:50%;
					float:left;
					height:100%;
					// .imgsrc{
					// 	width:100%;	
					// 	height:100%;
					// 	border:1px solid #fff;
					// 	img{
					// 		width:100%;	
					// 		height:100%;
					// 		// border:1px solid #fff;
					// 	}
					// }	
					img{
						width:100%;	
						height:100%;
						border:1px solid #fff;
					}
				}
				.pic-w{
					width:50%;
					float:right;
					height:100%;
					// .imgsrc{
					// 	width:100%;
					// 	height:50%;
					// 	border:1px solid #fff;
					// 	img{
					// 		width:100%;	
					// 		height:100%;
					// 	}
					// }
					img{
						width:100%;
						height:50%;
						border:1px solid #fff;
					}
				}
			}
			.info{
				font-size:16px;
				padding:12px 0;
				line-height:25px;
				text-align:left;
			}
			.comment{
				padding:15px 0;
				overflow:hidden;
				line-height:44px;
				color:#999;
				.left{
					float:left;
					width:30%;
					text-align:left;
					overflow:hidden;
					text-overflow:ellipsis;
					white-space:nowrap;
				}
				.right{
					float:right;
					width:60%;
					text-align:right;
					.com,.good{
						float:left;
						width:70px;
						height:22px;
						margin-top:11px;
						line-height:22px;
						margin-right:20px;
						span{
							float:left;
						}
						img{
							float:left;
							height:22px;	
							width:22px;	
							margin-right:10px;
						}
					}

				}
			}
		}
	}
}
</style>