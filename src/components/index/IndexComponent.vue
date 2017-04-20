<template>
	<div>
		<div class="index-header">
			<div class="home-title">
				<!--<a href="javascript:;">
					<div class="home-back">
						<img src="../../images/index/index.png"/>
					</div>
				</a>-->
				<a href="javascript:;">
					<div class="home-recipe">
						<p>一号菜谱</p>
					</div>
				</a>
			</div>
		</div>
		<div class="com-block">
			<section class="nav-block">
				<div class="search-btn">
					<img src="../../images/index/search-img.png"/>
				</div>
				<div class="nav-row">
					<a class="nav-item caipu" href="javascript:;">菜谱分类</a>
					<a class="nav-item shipin" href="javascript:;">视频</a>
					<a class="nav-item health" href="javascript:;">健康养生</a>
					<a class="nav-item quan" href="javascript:;" @click="toLifeCircle()">生活圈</a>
				</div>
				<ul class="sancan new-home-pad clear" @click="toFoodList()">
					<li class="xh-sancan fl">
						<a href="javascript:;" class="dis_block">
							<img src="../../images/index/zaocan.jpg" alt="" />
							<h3>早餐</h3>
						</a>
					</li>
					<li class="xh-sancan fl">
						<a href="javascript:;" class="dis_block">
							<img src="../../images/index/wucan.jpg" alt="" />
							<h3>中餐</h3>
						</a>
					</li>
					<li class="xh-sancan fl">
						<a href="javascript:;" class="dis_block">
							<img src="../../images/index/wancan.jpg" alt="" />
							<h3>晚餐</h3>
						</a>
					</li>
				</ul>
			</section>
			<section class="con-block write-bg">
				<ul>
					<li class="topic-rec new-home-pad">
						<a href="javascript:;" class="dis_block">
							<img src="../../images/index/luobosi.jpg"/>
							<div class="topic-text">
								<h2>惊艳味蕾的胡萝卜</h2>
								<h3>50道菜谱</h3>
							</div>
						</a>
					</li>
					<li class="topic-rec new-home-pad">
						<a href="javascript:;" class="dis_block">
							<img src="../../images/index/shuiguo.jpg"/>
							<div class="topic-text">
								<h2>N法征服水果界网红</h2>
								<h3>50道菜谱</h3>
							</div>
						</a>
					</li>
				</ul>
				<div class="video-dish new-home-pad">
					<a href="javascript:;">
						<div class="dish-img">
							<img src="../../images/index/zhengyu.jpg"/>
							<img class="videoIcon" src="../../images/index/videoIcon.png"/>
						</div>
						<div class="dish-desc">
							<h3 class="dish-title">清蒸鲈鱼</h3>
							<p>
								<span>372.9万</span>
								<span>1.0万</span>
							</p>
							<div class="dish-author">
								<div class="author-avatar clear">
									<img src="../../images/index/MTUweDE1MA.jpg"/>
								</div>
								<h4 class="right">香哈小秘书</h4>
							</div>
						</div>
					</a>
				</div>
				<ul class="xh-nous">
					<a href="javascript:;" class="dis_block">
						<li class="nous new-home-pad">
							<h3 class="nous-title" style="padding-bottom:.1rem;">最正宗可乐鸡翅的做法，你知道吗</h3>
							<p class="nous-con clearfix">可乐鸡翅是中国人餐桌上一道家常菜，味道鲜美，色泽艳丽，鸡翅嫩滑，又保留了可乐的香气，其做法有“简单到没下过厨也会做”之称，深受大众喜爱。今天小编为大家奉上做正宗可乐鸡翅的秘诀，...</p>
							<div class="nous-img" style="border-radius: 3px; max-height: 1.7rem; overflow:hidden"><img src="../../images/index/kelejichi.jpg"></div>
						</li>
					</a>
					<a href="javascript:;" class="dis_block">
						<li class="nous new-home-pad">
							<h3 class="nous-title" style="padding-bottom:.1rem;">这道菜让南方人流口水北方人皱眉</h3>
							<p class="nous-con clearfix">北方的粽子都是甜的，而且一般只在端午节吃，所以作为北方人的小编第一次见到肉粽子内心是拒绝的，加上听说很多南方人每天早餐是肉粽子更是震惊。然而一次偶然去南方出差，小编吃到了今天给...</p>
							<div class="nous-img" style="border-radius: 3px; max-height: 1.7rem; overflow:hidden"><img src="../../images/index/zongzi.jpg"></div>
						</li>
					</a>
				</ul>
				<ul class="xh-dish-list">
					<li class="xh-dish new-home-pad" v-for="(list,index) in lists">
						<a href="javascript:;" class="dis_block">
							<img class="dish-img" :src="list.foodImg" alt="" />
							<div class="dish-des">
								<h3 class="dish-title">{{list.foodName}}</h3>
								<h4 class="dish-con">{{list.foodDescribe}}</h4>
								<p>
									<span>{{list.foodTime}}</span>
								</p>
								<div class="dish-author">
									<div class="author-avatar clear">
										<img :src="list.foodUserIcon"/>
									</div>
									<h4 class="right">{{list.foodUserName}}</h4>
								</div>
							</div>
						</a>
					</li>
				</ul>
			</section>
		</div>
		<a class="to-new-top" @click="toTop()" href="javascript:;">
			<img src="../../images/index/top.png" />
		</a>
	</div>
	
</template>

<script type="text/javascript">
//	import './css/index.css'
	import './js/rem.js'
	import $ from 'jquery'
	
	export default {
		data: function(){
			return{
				lists: [],
				show:5
			}
		},
		created: function(){
			var that = this;
			$.ajax({
				type: "GET",
				url: "http://localhost/Vue/No1CookMenu/serverPHP/Business/index/index.php",
//				data:{show:5},
				success: function(res){
					that.lists = JSON.parse(res);
//					console.log( res )
					console.log( that.lists )
				}
			});
			$(window).scroll(function(){
				if( $(document).scrollTop() > 1000 ){
					$(".to-new-top").css("display","block");
				}else{
					$(".to-new-top").css("display","none");
				}
			});
			$(window).scroll(function () {
                let scrollTop = $(this).scrollTop()
                let scrollHeight = $(document).height()
                let windowHeight = $(this).height()
                if (scrollTop + windowHeight === scrollHeight){
//              	that.show += 5;
                    console.log(111)
                    $.ajax({
                        url:'http://localhost/Vue/No1CookMenu/serverPHP/Business/index/index.php',
                        type:'GET'
//                      data:{show:that.show}
                    })
                    .done(function(res){
                    	let data = JSON.parse(res);
                    	data.forEach(function(value,index){
                    		that.lists.push(value)
                    	})
                    })
                }
			})
		},
		methods:{
			toTop: function(){
				$('body,html').animate({ scrollTop: 0 }, 300)
				console.log( $('.caipu').attr('href') )
				return false
			},
			toLifeCircle: function(){
                //console.log(this.$route.name)
//              http://localhost:8080/#/LifeCircle
                this.$router.push({path:'/LifeCircle'})
            },
          	toFoodList: function(){
          		this.$router.push({path:'/FoodList'})
          	}
		}
	}
</script>

<style lang="css">
	@import url("./css/index.css");
</style>