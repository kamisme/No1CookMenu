<template>
    <div id="menuList">
        <div class="title2">
           <img src="../../images/foodList/lunch/index.png" alt="" @click="toIndex()">
            <span>一号菜谱</span>
        </div>
        <div class="wrap">
            <div class="title-list">
                <div @click="toggle1($event)"><span v-bind:class="{'active' : isA, '' : !isA}">早餐</span></div>
                <div @click="toggle2($event)"><span v-bind:class="{'active' : isB, '' : !isB}">中餐</span></div>
                <div @click="toggle3($event)"><span v-bind:class="{'active' : isC, '' : !isC}">晚餐</span></div>
            </div>
            <div class="list" v-for="(item,index) in items" v-on:click="getIndex(index)">
                <div>
                    <img v-bind:src="item.src" alt="">
                </div>
                <p class="name">{{item.title}}</p>
                <p class="info">{{item.discribe}}</p>
            </div>
            <div class="toTop" @click="toTop()" v-bind:class="{'hide' : hide, '' : !hide}">
                <img src="../../images/foodList/top.png" alt="">
            </div>
            <div class="save">
                <input type="button" value="保存到手机">
            </div>
        </div>
    </div>
</template>
<script>
    import http from '../../utils/HttpClient'
    import VueRouter from '../../router/index'
    import Vue from './vue/vue.min.js'
//  import VueResource from './vue/vue.resource.js'
    var $ = require("jquery");
//  Vue.use(VueResource);
    import './css/FoodListComponent.css'
    var {API} = require("../../constant/constant.js")
    
    export default {
        name: 'home',
        data: function(){
            return {
                items:"kam",
                isA: true,
                isB: false,
                isC: false,
                show: 10,
                type: 'breakfast',
                hide: true
            }
        },
        created: function(){
            var that = this;
            var t;
            $.ajax({
                url: API + "No1CookMenu/serverPHP/Business/FoodList/FoodList.php",
                type:'POST',
                data: {
                    type:'breakfast',
                    show: 10
                }
            })
            .done(function(res){
                that.items = JSON.parse(res);
            })
            $(window).scroll(function () {
                let scrollTop = $(this).scrollTop()
                let scrollHeight = $(document).height()
                let windowHeight = $(this).height()
                if (scrollTop > 1500) {
                    that.hide = false;
                }else{
                    that.hide = true;
                }
                if (scrollTop + windowHeight === scrollHeight){
                    that.show+=10,
                    $.ajax({
                        url: API + "No1CookMenu/serverPHP/Business/FoodList/FoodList.php",
                        type:'POST',
                        data: {
                            type: that.type,
                            show: that.show
                        }
                    })
                    .done(function(res){
                        that.items = JSON.parse(res);
                    })
                }
            })
        },
        methods: {
            toggle1: function(event){
                var that = this;
                this.type = "breakfast";
                that.show = 10;
                this.isA = true;
                this.isB = false;
                this.isC = false;
                $.ajax({
                    url: API + "No1CookMenu/serverPHP/Business/FoodList/FoodList.php",
                    type:'POST',
                    data: {
                        type:'breakfast',
                        show: 10
                    }
                })
                .done(function(res){
                    that.items = JSON.parse(res);
                })
            },
            toggle2: function(event){
                this.type = "lunch";
                var that = this;
                that.show = 10;
                this.isA = false;
                this.isB = true;
                this.isC = false;
                $.ajax({
                    url: API + "No1CookMenu/serverPHP/Business/FoodList/FoodList.php",
                    type:'POST',
                    data: {
                        type:'lunch',
                        show: 10
                    }
                })
                .done(function(res){
                    that.items = JSON.parse(res);
                })
            },
            toggle3: function(event){
                var that = this;
                this.type = "dinner";
                that.show = 10;
                this.isA = false;
                this.isB = false;
                this.isC = true;
                $.ajax({
                    url: API + "No1CookMenu/serverPHP/Business/FoodList/FoodList.php",
                    type:'POST',
                    data: {
                        type:'dinner',
                        show: 10
                    }
                })
                .done(function(res){
                    that.items = JSON.parse(res);
                })
            },
            toIndex: function(){
                //console.log(this.$route.name)
                this.$router.push({path:'/'})
            },
            toTop: function(){
                document.body.scrollTop = 0
            },
            getIndex: function(index){
                console.log(index)
                this.$router.push({path:'/FoodDetail?id='+this.type+'_'+index})
            }
        }
    }
</script>