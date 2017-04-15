<template>
	<div class="pg-contain">
		<div id="header">
			<div class="main-title">
				<a href=""><img src="src/components/FoodDetail/images/index.png" alt=""></a>
				<a href=""><img src="src/components/FoodDetail/images/search.png" alt=""></a>
				<h1>壹号菜谱</h1>
			</div>
		</div>
		<div class="dish-img">
			<a href=""><img src="src/components/FoodDetail/images/hstdjc.webp" alt=""></a>
		</div>
		<div class="summary sides-pd">
			<h2 class="dish-title">红烧土豆鸡翅</h2>
			<p class="dish-browse">独家·7459浏览·799做过</p>
			<div class="btn-box">
				<a href="" class="clt-btn">收藏菜谱</a>
			</div>
			<p class="dish-intro">红烧类的菜经常出现在人们的餐桌上，因为非常的下饭，我家更是不例外，我家先生是属于顿顿都要吃红烧肉的人，不过今天例个外吧，来个红烧鸡翅。</p>
		</div>
		<div class="ingredient sides-pd">
			<h3 class="ing-title sm-title">- 用料 -</h3>
			<ul class="ing-list">
				<li>
					<span class="ing-left">鸡中翅</span>
					<span class="ing-right">5个</span>
				</li>
				<li>
					<span class="ing-left">土豆</span>
					<span class="ing-right">1个</span>
				</li>
				<li>
					<span class="ing-left">小米椒</span>
					<span class="ing-right">1个</span>
				</li>
				<li>
					<span class="ing-left">冰糖</span>
					<span class="ing-right">3颗</span>
				</li>
			</ul>
		</div>
		<div class="cook-method sides-pd">
			<h3 class="cook-title sm-title">- 做法 -</h3>
			<ul class="cook-list">
				<li class="cook-step">
					<p>
						<span class="index">1.</span>
						<span class="describe">将鸡中翅斩成三段</span>
					</p>
					<div class="step-img">
						<img src="src/components/FoodDetail/images/hstdjc(1).webp" alt="">
					</div>
				</li>
				<li class="cook-step">
					<p>
						<span class="index">2.</span>
						<span class="describe">备好所需材料</span>
					</p>
					<div class="step-img">
						<img src="src/components/FoodDetail/images/hstdjc(2).webp" alt="">
					</div>
				</li>
				<li class="cook-step">
					<p>
						<span class="index">3.</span>
						<span class="describe">鸡翅冷水入锅，过血水</span>
					</p>
					<div class="step-img">
						<img src="src/components/FoodDetail/images/hstdjc(3).webp" alt="">
					</div>
				</li>
				<div class="loadmore">
				    <em></em>
					<span>点击展开全部</span>
				</div>
			</ul>
			<h3 class="sm-title">- 小贴士 -</h3>
			<p class="tips"> 熬制冰糖的时候注意火候，避免火大冰糖变苦，影响口感 </p>
			<p class="author">
				<span class="bold">作者：</span>
				<span>琪琪</span>
			</p>
			<div class="btn-box">
				<a href="" class="save-btn">把做法保存到手机</a>
			</div>
		</div>
		<div class="other-method sides-pd">
			<h3 class="om-title sm-title">- 其他做法 -</h3>
			<ul class="om-list">
				<li>
					<div>
						<img src="src/components/FoodDetail/images/hsjc.webp">
						<p>红烧鸡翅</p>
					</div>
				</li>
				<li>
					<div>
						<img src="src/components/FoodDetail/images/hsjc.webp">
						<p>红烧鸡翅</p>
					</div>
				</li>
				<li>
					<div>
						<img src="src/components/FoodDetail/images/hsjc.webp">
						<p>红烧鸡翅</p>
					</div>
				</li>
			</ul>
		</div>
		<div class="relevant sides-pd">
			<h3 class="rev-title sm-title">- 相关分类 -</h3>
			<ul class="rev-list">
			    <li>农家菜</li>
			    <li>羊肉</li>
			    <li>素菜</li>
			    <li>家常菜</li>
			</ul>
		</div>
		<div class="hot-link sides-pd">
			<h3 class="hl-title sm-title">- 热门推荐 -</h3>
			<ul class="hl-list">
			    <li>
			    	<div class="hl-img"><img src="src/components/FoodDetail/images/tclj.webp" alt=""></div>
			    	<div class="hl-font">
			    		<h4>酸甜可口的糖醋里脊就这么简单！</h4>
			    		<p><span>7954</span>浏览</p>
			    	</div>
			    </li>
			</ul>
		</div>
	</div>
</template>
<script>
	import http from '../../utils/HttpClient'
	import VueRouter from '../../router/index'
	import './FoodDetailComponent.css'
	export default {
		name: 'home',
		data: function(){
			return {
				msg:"FoodDetail"
			}
		}
	}
</script>
