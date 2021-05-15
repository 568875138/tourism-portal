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
<div class="container mt30">
      <div class="col-md-7 middle">
            <ol class="breadcrumb mb15">
                    <li><a href="./index">首页</a></li>
                    <li><a href="<s:property value='classifyurl'/>"><s:property value='classifyname'/></a></li>
                </ol>
        <div class="alert alert-info mt15 mb0 hidden" role="alert" id="notice-update"></div>

                <div class="news-list">
                <s:iterator value="TitleDAOs" var="TitleDAOs">
                                            <div class="news-item stream__item clearfix mt15" data-id="1190000018943038">
                                                <div class="news__item-info clearfix"><a href="/a/1190000018943038" class="news-img"
                                                        style="background-image:url(https://segmentfault.com/img/bVbrzqq?w=1600&amp;amp;h=1164)"></a><a
                                                        target="_blank" href="./pages!read?id=${TitleDAOs.id}">
                                                        <div class="mb5 mt5">
                                                            <h4 class="news__item-title mt0">${TitleDAOs.title}</h4>
                                                        </div>
                                                        <div class="article-excerpt">
                                                           ${TitleDAOs.adescribe}
                                                        </div>
                                                    </a>
                                                    <div class="news__item-meta">
                                                        <span class="bookmark-operation pr20 hidden" data-id="1190000018943038" data-type="article"><i
                                                                class="fa fa-bookmark pr5"></i>
                                                            <span class="bookmark-word">收藏</span></span>
                                                        <span class="author pr20"><a href="./">城市魅力展示网站</a><span class="dot">·</span>
                                                        	${TitleDAOs.datime}
                                                        </span></div>
                                                </div>
                                                </div>
				</s:iterator>
                    </div>
                <div class="text-center">
          <!-- <ul class="pager">
            <li id="btn-load-more" class="hidden"><a href="javascript:;">点击载入更多</a></li>
            <li id="btn-loading" class="hidden"><a href="javascript:;"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i> 载入中</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
  <div style="height:800px;"></div>
  <%@ include file="footer.jsp"%>