<template>
  <div class="main">
      <div class="top">壹号菜谱</div>
      <div class="good">
          <div class="menu-wrapper" ref="menuWrapper">
            <ul>
              <li v-for="(item, index) in date" class="menu-item" @click="selectMenu(index, $event)">
                <img :src="item.src" alt="">
                <p class="text">
                  <span v-show="item.type>0" class=" icon" :class="classMap[item.type]"></span>{{item.title}}
                </p>
              </li>
            </ul>
          </div>
          <div class="foods-wrapper" ref="foodWrapper">
            <ul class="clear">
              <li v-for="item in goods" class="food-list food-list-hook">
                <h1 class="title">{{item.name}}</h1>
                <ul class="foods clear">
                  <li v-for="food in item.foods" class="food-item" @click="getIndex(food.name)">
                    <div class="icon">
                      <span class="foodimg">
                         <img :src="food.src" alt="">
                      </span>
                      <h2 class="name">{{food.name}}</h2>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
          <div>
          </div>
      </div>
  </div>
</template>
<script>
  import BScroll from 'better-scroll';
  import $ from "jquery"
  import data from './data.json';
  import "./goods.css"
  var {API} = require("../../constant/constant.js")
  export default {
     name: 'good',
     props: {
      seller: {
        type: Object
      }
    },
    data () {
      return {
        date:[],
        goods: [],
        listHeight: [],
        scrolly: 0,
        selectedFood: {}
      };
    },
    created() {
       let that=this;
   $.ajax({
          url: API + "No1CookMenu/src/components/good/goods.php",
          type:"get",
          success:function(res){
            that.goods = data.goods;
            that.date=JSON.parse(res);
            that.$nextTick(() => {
            that._initScroll();
            that._calculateHeight();
          });

          }
      });
      this.classMap = ['decrease', 'discount', 'special', 'invoice', 'guarantee'];
    },
    methods: {
      _initScroll() {
        this.menuScroll = new BScroll(this.$refs.menuWrapper, {
          click: true
        });
        this.foodScroll = new BScroll(this.$refs.foodWrapper, {
          probeType:3,
          click: true
        });
        this.foodScroll.on('scroll', (pos) => {
          this.scrolly = Math.abs(Math.round(pos.y));
        });
      },
      _calculateHeight() {
        let foodList = this.$refs.foodWrapper.getElementsByClassName('food-list-hook');
        let height = 0;
        this.listHeight.push(height);
        for (let i = 0; i < foodList.length; i++) {
          let item = foodList[i];
          height += item.clientHeight;
          this.listHeight.push(height);
        }
      },
      selectMenu(index, event) {
        if (!event._constructed) {
          //判断是否是pc端
          // 去掉自带click事件的点击
          return;
        };
        let foodList = this.$refs.foodWrapper.getElementsByClassName('food-list-hook');
        let el = foodList[index];
        this.foodScroll.scrollToElement(el, 300);
      },
      getIndex: function(index){
            this.$router.push({path:'/foods?foodname='+index})
        }
    }
  };
</script>
