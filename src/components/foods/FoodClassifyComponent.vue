<template>
	<div class="vien">
		<div class="foodtop">
			<h1 class="clear" id="foodclass" style='height: 50px;line-height:50px;text-align: center;font-size: 25px'>
			   <a href="javascript:(history.go(-1));" class="topbar_backbtn">
			   		<img src="./images/prc.png" alt="">
			   </a>
			   <a href="#" class="topbar_rightbtn" id="sx_btn">筛选</a>
			饭
			</h1>
			<ul class="sort clear">
				<li @click="heat" v-bind:class="{ 'active': isA }">热度</li>
				<li @click="extent" v-bind:class="{ 'active': isB }">难易</li>
				<li @click="time" v-bind:class="{ 'active': isC }">时间</li>
			</ul>
		</div>
		<div class="foodlist" >
			<ul>
				<li class="clear" v-for="(item, index) in foods" @click="toFoodDetail">
					<a href="javascript:;">
						<img :src="item.src" alt="">
						<div class="foodname">
							<h3>{{item.name}}</h3>
							<div :class="item.star"></div>
							<div class="step">{{item.time}}</div>
							<div class="nd">{{item.taste}}</div>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</div>
</template>
<script>
    import "./css/FoodClassifyComponent.css"
	  import http from '../../utils/HttpClient'
    import VueRouter from '../../router/index'  
    import $ from "jquery"
	export default {
		name:"vien",
		data () {
		return {
			foods:[],
			show:5,
			type: '午餐',
			sort:"name",
      rank:"desc",
      i:1,
      j:1,
      g:1,
      isA:true,
      isB:false,
      isC:false
			}
		},
		 mounted () {
			
		},
		created() {   
      var url = location.search;
      console.log(url);
			var self = this;
              $.ajax({
                url:"http://localhost/Vue/No1CookMenu/src/components/foods/foodlist.php",
                type:'post',
                data: {
                	type: '午餐',
                    show:5,
                    sort:"name",
                    rank:"desc"
                },
                error: function(){  
                        alert('Error loading XML document');  
                    }
               
            })
            .done(function(res){
               
               self.foods=JSON.parse(res);
            })
            $(window).scroll(function () {
             let scrollTop = $(this).scrollTop();
             let scrollHeight = $(document).height()
             let windowHeight = $(this).height();
               if (scrollTop + windowHeight === scrollHeight){
                        self.show+=5,
                        $.ajax({
                            url:'http://localhost/Vue/No1CookMenu/src/components/foods/foodlist.php',
                            type:'POST',
                            data: {
                                type: self.type,
                                show: self.show,
                                sort: self.sort,
                                rank: self.rank
                            }
                        })
                        .done(function(res){
                            self.foods=JSON.parse(res);
                         
                        })
	                  }

            
           });	
		},
		methods:{
          	toFoodDetail: function(){
          		this.$router.push({path:'/FoodDetail'})
          	},
			
			heat:function(){
               this.isA=true;
               this.isB=false;
               this.isC=false;
               this.sort ="star";
               var self = this;
               if(this.i==1){
                this.rank ="desc";
                this.i=this.i*(-1);
               }else{
                this.rank ="asc";
                this.i=this.i*(-1);
               }
               $.ajax({
                    url:'http://localhost/Vue/No1CookMenu/src/components/foods/foodlist.php',
                    type:'POST',
                    data: {
                        type: self.type,
                        show: self.show,
                        sort: self.sort,
                        rank: self.rank

                    }
                })
                .done(function(res){
                    self.foods=JSON.parse(res);

                })
			},
			time:function(){
              this.isA=false;
               this.isB=false;
               this.isC=true;
               this.sort ="time";
               var self = this;
               if(this.j==1){
                this.rank ="desc";
                this.j=this.j*(-1);
               }else{
                this.rank ="asc";
                this.j=this.j*(-1);
               }
               $.ajax({
                    url:'http://localhost/Vue/No1CookMenu/src/components/foods/foodlist.php',
                    type:'POST',
                    data: {
                        type: self.type,
                        show: self.show,
                        sort: self.sort,
                        rank: self.rank

                    }
                })
                .done(function(res){
                    self.foods=JSON.parse(res);
                })
			},
			extent:function(){
               this.isA=false;
               this.isB=true;
               this.isC=false;
               this.sort ="taste";
               var self = this;
               if(this.g==1){
                this.rank ="desc";
                this.g=this.g*(-1);
               }else{
                this.rank ="asc";
                this.g=this.g*(-1);
               }
               $.ajax({
                    url:'http://localhost/Vue/No1CookMenu/src/components/foods/foodlist.php',
                    type:'POST',
                    data: {
                        type: self.type,
                        show: self.show,
                        sort: self.sort,
                        rank: self.rank
                    }
                })
                .done(function(res){
                    self.foods=JSON.parse(res);
                })
			}
		}
	}
</script>
