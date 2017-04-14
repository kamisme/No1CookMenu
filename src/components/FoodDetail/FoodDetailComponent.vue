<template>
	<div>
		<h1>{{msg}}</h1>
		<h1>sdsad</h1>
	</div>
</template>
<script>
	import http from '../../utils/HttpClient'
	import VueRouter from '../../router/index'

	export default {
		name: 'home',
		data: function(){
			return {
				msg:"kam"
			}
		}
	}
</script>
