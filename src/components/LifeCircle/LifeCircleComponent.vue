<template>
	<div class="LifeCircle">
		<h1 :style="{background:color}">
			<img src="../../images/LifeCircle/index.png" height="68" width="68" alt="">
			<span>一号厨房</span>
		</h1>
		<div class="new">
			<em>公告</em>
			<a href="">闲话浮生.#普通食物的最好吃时刻#分享大会</a>
		</div>
		<ul>
			<li>
				<h3>煮玉米</h3>
				<div class="pic">
					<div class="pic-r">
						<img src="../../images/LifeCircle/food1.jpg" >
					</div>
					<div class="pic-w">
						<img src="../../images/LifeCircle/food1.1.jpg" >
						<img src="../../images/LifeCircle/food1.2.jpg" alt="">
					</div>
				</div>
				<div class="info">
					苦瓜炒蛋 上汤米苋 浇汁金针菇 豆腐鸭汤 粉蒸肉 蒸榆钱儿
				</div>
				<div class="comment">
				    <div class="left">
				    	<span class="time">刚刚 </span>
						<span class="time">鱼儿</span>
				    </div>
					<div class="right">
						<div class="com">
							<img src="../../images/LifeCircle/message.png" height="22" width="22" alt="">
							<span>10</span>
						</div>
						<div class="good">
							<img src="../../images/LifeCircle/good.png" height="22" width="22" alt="">
							<span>35</span>
						</div>
					</div>
				</div>
			</li>
			<li>
				<h3>煮玉米</h3>
				<div class="pic">
					<div class="pic-r">
						<img src="../../images/LifeCircle/food1.jpg" >
					</div>
					<div class="pic-w">
						<img src="../../images/LifeCircle/food1.1.jpg" >
						<img src="../../images/LifeCircle/food1.2.jpg" alt="">
					</div>
				</div>
				<div class="info">
					苦瓜炒蛋 上汤米苋 浇汁金针菇 豆腐鸭汤 粉蒸肉 蒸榆钱儿
				</div>
				<div class="comment">
				    <div class="left">
				    	<span class="time">刚刚 </span>
						<span class="time">鱼儿</span>
				    </div>
					<div class="right">
						<div class="com">
							<img src="../../images/LifeCircle/message.png" height="22" width="22" alt="">
							<span>10</span>
						</div>
						<div class="good">
							<img src="../../images/LifeCircle/good.png" height="22" width="22" alt="">
							<span>35</span>
						</div>
					</div>
				</div>
			</li>
			<li>
				<h3>煮玉米</h3>
				<div class="pic">
					<div class="pic-r">
						<img src="../../images/LifeCircle/food1.jpg" >
					</div>
					<div class="pic-w">
						<img src="../../images/LifeCircle/food1.1.jpg" >
						<img src="../../images/LifeCircle/food1.2.jpg" alt="">
					</div>
				</div>
				<div class="info">
					苦瓜炒蛋 上汤米苋 浇汁金针菇 豆腐鸭汤 粉蒸肉 蒸榆钱儿
				</div>
				<div class="comment">
				    <div class="left">
				    	<span class="time">刚刚 </span>
						<span class="time">鱼儿</span>
				    </div>
					<div class="right">
						<div class="com">
							<img src="../../images/LifeCircle/message.png" height="22" width="22" alt="">
							<span>10</span>
						</div>
						<div class="good">
							<img src="../../images/LifeCircle/good.png" height="22" width="22" alt="">
							<span>35</span>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	
</template>

<script>
	//引进常量
	// import {color} from "../../constant/constant.js";
	var {color} = require("../../constant/constant.js")
	var $ = require("jquery");
	//引进ajax模块
	import http from "../../utils/HttpClient.js";
	//引进样式
	// import "./LifeCircleComponent.scss";
	import "./reset.css"
	export default {
		name:"LifeCircle",
		data:function(){
			return {
				color:color
			}
		},
		methods:function(){

		},
		created:function(){
			// console.log("created")
			// http.get("http:localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php").then(function(res){
			// 	console.log("111")
			// 	console.log(res)
			// })
			// $.get("http:localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",function(res){
			// 	console.log(res);
			// })
			$.ajax({
				type:"GET",
				url:"http://localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
				success:function(res){
					console.log(res)
					console.log(JSON.parse(res));
				},
				dataType:"jsonp",
				error:function(err){
					console.log(err)
				}
			})
		}
	}
</script>
<style lang="scss">
.LifeCircle{
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
		a{
			color:#000;
			font-size:20px;
		}
		em{
			background-color: #fb6652;
    		border-radius: 2px;
    		color:#fff;
    		margin-right:10px;
    		padding:2px 5px;
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
				height:234px;		
				.pic-r{
					width:50%;
					float:left;
					height:100%;	
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
					img{
						width:100%;
						height:50%;
						border:1px solid #fff;
					}
					
				}
			}
			.info{
				font-size:20px;
				padding:12px 0;
				line-height:25px;
			}
			.comment{
				padding:22px 0;
				overflow:hidden;
				line-height:44px;
				color:#999;
				.left{
					float:left;
					width:50%;
				}
				.right{
					float:right;
					width:30%;
					text-align:right;
					.com,.good{
						float:left;
						width:60px;
						height:22px;
						margin-top:11px;
						line-height:22px;
						margin-right:20px;
						span{
							float:left;
						}
						img{
							float:left;
							margin-right:10px;
						}
					}

				}
			}
		}
	}

}
</style>