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

<div class="nav_poket_widgetss" id="nav_poket_widgetss26">
        <div class="nav_poket_widgetss_in morens">
                <ol class="breadcrumb mb15" style="width:20%;">
                        <li><a href="./index">首页</a></li>
                        <li><a href="<s:property value='classifyurl'/>"><s:property value='classifyname'/></a></li>
                </ol>
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
  <div style="height:800px;"></div>
<%@ include file="footer.jsp"%>