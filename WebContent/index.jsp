<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="home blog">
    <div class="header">
        <div class="top_xian"></div>
		<script>
		if(window.location.pathname.indexOf("index") == -1){
			window.location.href="./index";
		}
		</script>
        <div class="header_in">
            <div class="header_center">

                <h1 class="logo"><a href="./index" title="网站名称"> <img
                            src="./img/logo.png"
                            alt="网站名称" /></a></h1>

                <div id="header_pic_nav" class="hide_icon">

                    <div class="header_nav_drog_in">
                        <div id="header_pic_menu" class="header_menu_ul ">
                            <li id="menu-item-12"
                                class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home">
                                <a href="./index"><span><b>首 页<div class="xianxss"></div></b></a></li>
                            <li id="menu-item-5" class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
                                    href="./info"><span><b>城市简介<div class="xianxss"></div></b></a>
                            </li>
                            <li id="menu-item-9" class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
                                    href="./list?classify=2"><span><b>最新资讯<div class="xianxss"></div></b></a>
                            </li>
                            <li id="menu-item-6" class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
                                    href="./list?classify=3"><span><b>城市景点<div class="xianxss"></div></b></a>
                            </li>
                            <li id="menu-item-7" class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
                                    href="./list?classify=4"><span><b>历史名人<div class="xianxss"></div>
                                        </b></a></li>
                            <li id="menu-item-10" class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
                                    href="./list?classify=5"><span><b>城市美食<div class="xianxss"></div></b></a>
                            </li>
                            <li id="menu-item-8" class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
                                    href="./list?classify=6"><span><b>城市微拍<div class="xianxss"></div></b></a>
                            </li>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="heaer_bacgrond"></div>

    </div>
    <div class="full">

        <div class="index_swipers swiper-container">
            <div class="swiper-wrapper">
                <div id="up_down_mod" class="swiper-slide  swiper-slide-active up_down">
                    <div class="swiper-slide_in">
                        <div class="up_text ">
                            <div id="alpha">
                            </div>
                        </div>
                    </div>
                    <div class="index_mod_bag bag_animate "
                        style=" background-image:url(./img/0005.jpg)"></div>
                </div>
                <div id="up_down_mod" class="swiper-slide   up_down">
                    <div class="swiper-slide_in">
                        <div class="up_text dack_text_mod">
                            <div class="alpha70" id="alpha">
                            </div>
                            <a href="#" class="btn buy"><b>城市简介</b>
                                <div class="btn_bag"></div>
                            </a>
                        </div>
                    </div>
                    <div class="index_mod_bag bag_animate "
                        style=" background-image:url(./img/0005.jpg)"></div>
                </div>
            </div>
            <div class="pagination index_p"></div>
            <a class="index_next"></a>
            <a class="index_prve"></a>
        </div>


    </div>
    <!--[if lt IE 10]> 
              <script>
               $(document).ready(function() {
               $("div.full,.index_swipers").css('height', window.innerHeight+'px')
              
              
              $(window).resize(function() { $("div.full,.index_swipers").css('height', window.innerHeight+'px');
              $(".index_swipers").css('width', window.innerWidth+'px');
              $(".index_swipers .swiper-slide").css('width', window.innerWidth+'px');
              });
                var index_swipers = new Swiper('.index_swipers',{
                   pagination: '.index_p',
                   paginationClickable: true,
                   speed:1000,
              loop:true,
              onSlideChangeStart: function(swiper){
              $.news_open();
                  },
                  
                  onFirstInit: function(swiper){$.news_open()}	 
                });
                
                $('.index_prve').on('click', function(e){
                  e.preventDefault()
                  index_swipers.swipePrev()
                })
                $('.index_next').on('click', function(e){
                  e.preventDefault()
                  index_swipers.swipeNext()
                })
                
               });
                </script>
                <![endif]-->
    <!--[if !IE]><!-->
    <script>
        $(document).ready(function () {
            $("div.full,.index_swipers").css('height', window.innerHeight + 'px');

            $(window).resize(function () {
                $("div.full,.index_swipers").css('height', window.innerHeight + 'px');
                $(".index_swipers").css('width', window.innerWidth + 'px');
                $(".index_swipers .swiper-slide").css('width', window.innerWidth + 'px');
            });
            var index_swipers = new Swiper('.index_swipers', {
                pagination: '.index_p',
                paginationClickable: true,
                speed: 1000,
                loop: true,
                onSlideChangeStart: function (swiper) {
                    $.news_open();
                },

                onFirstInit: function (swiper) { $.news_open() }
            });

            $('.index_prve').on('click', function (e) {
                e.preventDefault()
                index_swipers.swipePrev()
            })
            $('.index_next').on('click', function (e) {
                e.preventDefault()
                index_swipers.swipeNext()
            })

        });
    </script>
    <!--<![endif]-->

    <div class="index_content donghuaopen">

        <div class="nav_poket_widgetss" id="nav_poket_widgetss26">
            <div class="nav_poket_widgetss_in morens">


                <div class="nav_poket_widgetss_title">
                    <h2>
                        <b> 城市景点 </b>
                        <strong>Famous Scenery</strong>
                    </h2>

                </div>
                <div id="nav_poket_widgetss_ul" class="nav_poket_ul">
					<s:iterator value="TitleDAOs" var="TitleDAOs">
		                    <li id="menu-item-${TitleDAOs.id}" class="menu-item menu-item-type-custom menu-item-object-custom" style="left: 0px; opacity: 1;"><a href="./pages!read?id=${TitleDAOs.id}">
		                        <div class="navpoket_pic"><img src="${TitleDAOs.titleimg}" alt="${TitleDAOs.title}">
		                            <div class="navpoket_titles" style="display: none;"><b>${TitleDAOs.title}</b>
		                                <div class="poket_btn">查看详细介绍</div>
		                            </div>
		                        </div>
		                        <p>${TitleDAOs.adescribe}</p>
		                    </a></li>
					</s:iterator>
                </div>


            </div>

        </div>
        <script> $(window).scroll(function () { $(".donghuaopen #nav_poket_widgetss26").nav_poket(); }); </script>


        <div id="caseshows_1" class="caseshow"
            style="background: center url(http://www.cifilm.cn/wp-content/uploads/2016/05/left_ba-1.png);">

            <h2>城市美食</h2>
            <p class="caseshow_title2"> Foodie</p>
            <div class="caseshow_in">

                <ul>
                <s:iterator value="TitleDAOs2" var="TitleDAOs2">
                   <li>
                       <a href="./pages!read?id=${TitleDAOs2.id}" target="_blank" class="case_pic"> <img width="307"
                               height="204" src="${TitleDAOs2.titleimg}"
                               class="attachment-case size-case wp-post-image" alt="${TitleDAOs2.adescribe}"
                               title="${TitleDAOs2.title}"
                               sizes="(max-width: 307px) 100vw, 307px" />
                       </a>
                       <div>
                           <strong><a href="./pages!read?id=${TitleDAOs2.id}"
                                   target="_blank">${TitleDAOs2.title}</a></strong>

                           <p>${TitleDAOs2.adescribe}</p>

                           <a id="casebtn" target="_blank" href="./pages!read?id=${TitleDAOs2.id}">查看详细说明</a>
                       </div>
                   </li>
                   </s:iterator>
                </ul>
            </div>
        </div>

        <script> $(window).scroll(function () { $(".donghuaopen #caseshows_1").caseshow(); }); </script>

        <script> $(window).scroll(function () { $(".donghuaopen .widget-fourq-2-fourq").cunst(); }); </script>

        <div class="news_tuoch">

            <div class="news_touch_in">
                <div class="news_touch_title">

                    <a href="#"> 最新资讯</a> </div>

                <ul>

					<s:iterator value="TitleDAOs3" var="TitleDAOs3">
                    <li>
                        <a class="news_pics" href="./pages!read?id=${TitleDAOs3.id}" target="_blank"><img width="400"
                                height="266"
                                src="${TitleDAOs3.titleimg}"
                                class="attachment-news size-news wp-post-image" alt="${TitleDAOs3.title}"
                                title="${TitleDAOs3.title}"
                                sizes="(max-width: 400px) 100vw, 400px" /></a>
                        <div class="news_textss">
                            <strong><a href="./pages!read?id=${TitleDAOs3.id}"
                                    target="_blank">${TitleDAOs3.title}</a></strong>
                            <em>${TitleDAOs3.datime}</em>
                            <p></p>
                        </div>
                    </li>
					</s:iterator>
                </ul>
            </div>
        </div>
    </div>
  <%@ include file="footer.jsp"%>