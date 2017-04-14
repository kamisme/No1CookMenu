<template>
	<div>
		<h1>this is {{msg}} page</h1>
	</div>
</template>
<script>
	import http from '../../utils/HttpClient'
	import VueRouter from '../../router/index'
	export default {
		name: 'home',
		data: function(){
			return {
				msg:"FoodDetail"
			}
		}
	}
</script>
