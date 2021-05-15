<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="home blog">
    <div class="header">
        <div class="top_xian"></div>

        <div class="header_in">
            <div class="header_center">

                <h1 class="logo"><a href="./index" title="网站名称"> <img
                            src="./img/logo.png"
                            alt="网站名称" /></a></h1>

                <div id="header_pic_nav" class="hide_icon">

                    <div class="header_nav_drog_in">
                        <div id="header_pic_menu" class="header_menu_ul ">
                            <li id="menu-item-12"
                                class="menu-item menu-item-type-custom menu-item-object-custom">
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
<div style="height:100px;"></div>
<div class="container mt15" style="position:relative">
    <div class="row">
        <div class="col-xs-12 col-md-9 main ">
                            <ol class="breadcrumb mb15">
                <li><a href="./index">首页</a></li>
                <li><a href="<s:property value='classifyurl'/>"><s:property value='classifyname'/></a></li>
                <li><a href="./pages!read?id=<s:property value='pageid'/>"><s:property value='title'/></a></li>
            </ol>
                            <div class="post-topheader custom- pt0">
                <div class="mb20">
                    <div class="block-for-right-border">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                            

                                <div class="post-topheader__info" >
                                    <h1 class="h1 post-topheader__info--title" id="articleTitle" data-id="1190000012359015">
                                        <a href="./pages!read?id=<s:property value='pageid'/>"><s:property value="title"/></a>
                                    </h1>
                                    <div class="content__tech hidden-xs">
                                        <a href="#" class="blog-type-common blog-type-1-before" data-content="
                                        城市魅力展示网站
                                                                                    "></a>
                                        
                                        <ul class="taglist--inline inline-block article__title--tag mr10">
                                                                                                <li class="tagPopup mb5">
                                                    <a class="tag" href="" >
                                                        <s:property value='tags'/>
                                                    </a>
                                                </li>
                                                                                        </ul>

                                        <span>
                                            <s:property value='readc'/> 次阅读
                                            &nbsp;·&nbsp;
                                            读完需要很多分钟 
                                                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- end .post-topheader -->
            
            <div class="article fmt article__content" data-id="1190000012359015" data-license="cc">
                
<blockquote>
    <s:property value='adescribe'/>
</blockquote>
<p><s:property escapeHtml="false" value='content'/></p>
<div style="height:800px;"></div>
           </div>
        </div><!-- /.main -->
    </div>
</div> <%@ include file="footer.jsp"%>