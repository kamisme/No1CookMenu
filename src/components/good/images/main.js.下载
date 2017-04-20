var wH = $(window).height();
var wW = $(window).width();
$(function(){
	
	$("#main").css("min-height",wH);
	$("#topbar,#bottombar_list,#smart_topbar,#mp_tab1,#news_nav,#smart_searchbar,#smart_tipbox,#bottombar,#cplist_nav,.swiper-pagination").css({
		"width":wW>640?"640px":"100%",
		"left":wW>640?(wW-640)/2+"px":"0px"
	});
	





	$("#topbar_photo_btn").click(function(){
		if($("#topbar_box").hasClass("show")){
			$("#topbar_box").hide();
			$("#topbar_box").removeClass("show");
		}else{
			$("#topbar_box").show();
			$("#topbar_box").addClass("show");
		}
	});


});