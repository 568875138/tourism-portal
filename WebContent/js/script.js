 $.fn.left_opacitys=function () {$(this).animate({"opacity":"1","right":"0"},800,'easeOutSine');}
$.fn.left_opacitys_no=function () {$(this).animate({"opacity":"0","right":"-100px"},500,'easeOutSine');}
$.fn.up_opacitys=function () {$(this).animate({"opacity":"1","top":"0"},800,'easeOutSine');}
$.fn.up_opacitys_no=function () {$(this).animate({"opacity":"0","top":"-100px"},500,'easeOutSine');}
 $.extend({news_open:function(){
	$('.index_swipers').css({width : $('body').width()})
	$('.swiper-wrapper .left_right.swiper-slide-active').children(".swiper-slide_in").children('.left_pic').children("img").delay(500).animate({"opacity":"1","left":"0"},800,'easeOutSine');
	$('.swiper-wrapper .left_right.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children('#alpha').children(".title_lr_mod").delay(500).left_opacitys();
	$('.swiper-wrapper .left_right.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children('#alpha').children("h3").delay(700).left_opacitys();
	$('.left_right.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children('#alpha').children("p").delay(900).left_opacitys();
	$('.swiper-wrapper .left_right.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children(".btn").delay(1000).left_opacitys();
	
	$('.swiper-wrapper .left_right').not('.swiper-slide-active').children(".swiper-slide_in").children('.left_pic').children("img").animate({"opacity":"0","left":"-100px"},800,'easeOutSine');
	$('.swiper-wrapper .left_right').not('.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children('#alpha').children(".title_lr_mod").left_opacitys_no();
	$('.swiper-wrapper .left_right').not('.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children('#alpha').children("h3").left_opacitys_no();
	$('.swiper-wrapper .left_right').not('.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children('#alpha').children("p").left_opacitys_no();
	$('.swiper-wrapper .left_right').not('.swiper-slide-active').children(".swiper-slide_in").children('.right_text').children("a").left_opacitys_no();
	
	
	$('.swiper-wrapper .up_down.swiper-slide-active').children(".swiper-slide_in").children('.up_text').children('#alpha').children("h3").delay(500).up_opacitys();
	$('.swiper-wrapper .up_down.swiper-slide-active').children(".swiper-slide_in").children('.up_text').children('#alpha').children("p").delay(500).up_opacitys();
	$('.swiper-wrapper .up_down.swiper-slide-active').children(".swiper-slide_in").children('.up_text').children(".btn").delay(500).up_opacitys();
	$('.swiper-wrapper .up_down').not('.swiper-slide-active').children(".swiper-slide_in").children('.down_pic').children("img").animate({"opacity":"0","top":"800px"},800,'easeOutSine');
	$('.swiper-wrapper .up_down').not('.swiper-slide-active').children(".swiper-slide_in").children('.up_text').children('#alpha').children("h3").up_opacitys_no();
	$('.swiper-wrapper .up_down').not('.swiper-slide-active').children(".swiper-slide_in").children('.up_text').children('#alpha').children("p").up_opacitys_no();
	$('.swiper-wrapper .up_down').not('.swiper-slide-active').children(".swiper-slide_in").children('.up_text').children(".btn").up_opacitys_no();
$('.swiper-wrapper .up_down.swiper-slide-active').children(".swiper-slide_in").children('.down_pic').children("img").delay(1000).animate({"opacity":"1","top":"0"},1500,'easeOutCubic');
}});

	$.fn.nav_poket=function () { 
	if( $(window).scrollTop() >= $(this).offset().top-550 ){
   var Timer = 0;
    Timer+=200;
	 var Timerc = 0;
   
	 $(this).children(".nav_poket_widgetss_in").children(".nav_poket_widgetss_title").children('h2').children('strong').delay(Timer+100).animate({top:"0",opacity:"1"},1000);
	 $(this).children(".nav_poket_widgetss_in").children(".nav_poket_widgetss_title").children('h2').children('b').delay(Timer+300).animate({top:"0",opacity:"1"},1000);
	 $(this).children(".morens").children("#nav_poket_widgetss_ul").children('li').each(function() {
		   Timer+=200;
		  $(this).delay(Timer+400).animate({left:"0",opacity:"1"},1000);

             });
			 
		 $(this).children(".tubiao").children("#nav_poket_widgetss_ul").children('li').each(function() {
		   Timerc+=200;
		      $(this).children('a').children('img').delay(Timerc).animate({opacity:"1"},500);
		  	  $(this).children('a').children('span').children('b').delay(Timerc+400).animate({top:"0",opacity:"1"},500);
			   $(this).children('a').children('span').children('p').delay(Timerc+400).animate({bottom:"0",opacity:"1"},500);

             }); 	 
	
	};};
	
$.fn.caseshow=function () { 
	if( $(window).scrollTop() >= $(this).offset().top-550 ){
   var Timers = 0;
    Timers+=200;
	
	 $(this).children("h2").delay(Timers+100).animate({top:"0",opacity:"1"},1000);
	 $(this).children(".caseshow_title2").delay(Timers+300).animate({top:"0",opacity:"1"},1000);
	 $(this).children(".caseshow_in").children("ul").children('li').each(function() {
		   Timers+=200;
		  $(this).delay(Timers+300).animate({left:"0",opacity:"1"},1000);

             }); 
	};};
	
		
$.fn.cunst=function () {	
	if( $(window).scrollTop() >= $(this).offset().top-550 ){
   var Timer2 = 0;
    Timer2+=200;
	
	 $(this).children(".cunst_modle_in").children(".cunst_code").delay(Timer2+100).animate({left:"0",opacity:"1"},1000);
	 $(this).children(".cunst_modle_in").children(".cunst_text").delay(Timer2+100).animate({right:"0",opacity:"1"},1000); 	
	};
};





$(document).ready(function() {
	


	
	
	
  
	 var offsers=$(".header_center").offset().left-57;
	
	 var left_kefu=0;
	 if(offsers>0){left_kefu=offsers}
	 
	  $(".kefu").css({right: left_kefu + "px"});
	  
	   $(window).resize(function() {  offsers=$(".header_center").offset().left-57;  
	   var left_kefu=0;
	 if(offsers>0){left_kefu=offsers}
	 
	  $(".kefu").css({right: left_kefu + "px"}); });
  $(".nav_product_mu li .sub-menu li a.select").append("<div class='no_select'></div>");
   $(".header_menu_ul li,.index_swipers,#post_form_menu li,.navpoket_pic,.top_left li").hover(function() {
   
        $(this).children(".sub-menu,.index_next,.index_prve,.navpoket_titles").stop(true, true).fadeIn("200");
    }, function() {

        $(this).children(".sub-menu,.index_next,.index_prve,.navpoket_titles").stop(true, true).fadeOut("1000");
    });
 $(".pic_l_in ul li").mouseenter(function() { $(this).children(".vedio_over_li").animate({ "bottom": 0},500);});
$(".pic_l_in ul li").mouseleave(function() { $(this).children(".vedio_over_li").animate({ "bottom": "-100%"}, 500);});
	  $("#homes").click(function() {
        if ($(this).hasClass("op")) {
            $(".kefu_d").not("#homes").fadeIn(300);
            $(this).removeClass("op");
        } else {
            $(".kefu_d").not("#homes").fadeOut(300);
            $(this).addClass("op");
        }
    });
	  $(".kefu_d").stop().mouseenter(function() {
        $(this).children("div").fadeIn(300);
    });
    $(".kefu_d").stop().mouseleave(function() {
        $(this).children("div").fadeOut(300);
    });

$(".cunst_code").click(function() { $(this).children('.cunst_vedio').fadeIn(500)});
	
$(".pic_big_bottom_in_search #searchform  #s").click(function() { $(".search_key_mod").slideDown(500)});
$(".pic_big_bottom_in_search").mouseleave(function() { $(".search_key_mod").slideUp(500);});	
	 
var gallery_xz = new Swiper('.gallery_xz',{
visibilityFullFit : true,
calculateHeight : true,
simulateTouch : false,
 pagination: '.galic_na',
 paginationClickable: true,
speed:1000
  });
$('.gallery_xz .galic_prve').click(function(){gallery_xz.swipePrev(); });
$('.gallery_xz .galic_next').click(function(){gallery_xz.swipeNext(); }); 
	 
	 
	var qiehuan = new Swiper('.qiehuan',{
visibilityFullFit : true,
calculateHeight : true,
simulateTouch : false,
speed:1000,
onSlideChangeStart: function(){
      $(".gallery_qiehuan_x  .swiper-wrapper .active").removeClass('active')
      $(".gallery_qiehuan_x  .swiper-wrapper a").eq(qiehuan.activeIndex).addClass('active')  
    }
  });

 $(".gallery_qiehuan_x  .swiper-wrapper a").on('touchstart mousedown',function(e){
    e.preventDefault()
    $(".gallery_qiehuan_x  .swiper-wrapper .active").removeClass('active')
    $(this).addClass('active');
	
     qiehuan.swipeTo( $(this).index() ,1000, false );
  });
  $(".gallery_qiehuan_x  .swiper-wrapper a").click(function(e){
    e.preventDefault()
  });


var gallery_qiehuan_x = new Swiper('.gallery_qiehuan_x',{
visibilityFullFit : true,
cssWidthAndHeight: 'width',
slidesPerView: 4,
speed:500
  });
$(".gallery_qiehuan_x").children(".swiper-wrapper").css("width", 80 * $(".gallery_qiehuan_x").children(".swiper-wrapper").children("a").length + "px");
  $('.gallery_qiehuan_x .galic_prve').click(function(){gallery_qiehuan_x.swipePrev();  });
$('.gallery_qiehuan_x .galic_next').click(function(){gallery_qiehuan_x.swipeNext(); });



$(".close_order").click(function() {
    $(".shop_form").fadeOut(500);
});

$(".buy_btn .btn").click(function() {
    $(".shop_form").fadeIn(500);
    var a = $(".shop_form").offset().top - 300;
    $("html,body").animate({
        scrollTop: a
    }, 1e3);
});

$("#content_shop_btn").click(function() {
    $(this).addClass("cutyes");
    $("#comment_shop_btn").removeClass("cutyes");
    $("#comment_shop").fadeOut(300);
    $("#content_shop").fadeIn(300);
});

$("#comment_shop_btn").click(function() {
    $(this).addClass("cutyes");
    $("#content_shop_btn").removeClass("cutyes");
    $("#content_shop").fadeOut(300);
    $("#comment_shop").fadeIn(300);
});




  
 });

