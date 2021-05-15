<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>后台管理</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/xadmin.css">
        <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/xadmin.js"></script>
	    <script type="text/javascript" src="./neditor/ueditor.config.js"></script>
	    <script type="text/javascript" src="./neditor/ueditor.all.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form action="./add" class="layui-form" method="post" enctype="multipart/form-data">
                  <div class="layui-form-item">
                      <label for="title" class="layui-form-label">
                          <span class="x-red">*</span>页面标题
                      </label>
                      <div class="layui-input-inline">
                      	<input type="hidden" name="titles.title" values="NULL" >
                          <input type="text" id="username" name="title" required="" lay-verify="required"
                          autocomplete="off" class="layui-input">
                      </div>
                      <div class="layui-form-mid layui-word-aux">
                          <span class="x-red">*</span>将会成为页面标题
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="username" class="layui-form-label">
                          <span class="x-red">*</span>页面分类</label>
                      <div class="layui-input-inline" style="z-index: 10000">
                          <select name="classify">
                              <option value="1">城市简介</option>
                              <option value="2">最新资讯</option>
                              <option value="3">城市景点</option>
                              <option value="4">历史名人</option>
                              <option value="5">城市美食</option>
                              <option value="6">城市微拍</option>
                           </select>
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="username" class="layui-form-label">
                          <span class="x-red">*</span>图片标题</label>
                      <div class="layui-input-inline">
                   		<input type="file" name="myfile">
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="phone" class="layui-form-label">
                          <span class="x-red">*</span>简介
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="phone" name="adescribe" required="" lay-verify="required"
                          autocomplete="off" class="layui-input">
                      </div>
                      <div class="layui-form-mid layui-word-aux">
                          <span class="x-red">*</span>将会成为页面简介
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="L_email" class="layui-form-label">
                          <span class="x-red">*</span>标签
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="L_email" name="tags" required="" lay-verify="required"
                          autocomplete="off" class="layui-input">
                      </div>
                      <div class="layui-form-mid layui-word-aux">
                          <span class="x-red">*</span>
                      </div>
                  </div>
                  <div class="layui-form-item">
					<div>
					    <script id="editor" name="content" type="text/plain" style="width:1024px;height:500px;"></script>
					</div>
                  </div>
                  <div class="layui-form-item">
	                  <div class="layui-input-inline">
	                  	<input type="submit" value="提交表单" class="layui-btn" />
	                  </div>
                  </div>
              </form>
            </div>
        </div>
		<script type="text/javascript">
		  var ue = UE.getEditor('editor');
		</script>
        
        <script>layui.use(['form', 'layer'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;
                
                form.on('submit(add)',
                function(data) {
                    console.log(data);
                    
/*                     layer.alert("增加成功", {
                        icon: 6
                    },
                    function() {
                        //关闭当前frame
                        xadmin.close();

                        // 可以对父窗口进行刷新 
                        xadmin.father_reload();
                    }); */
                    return false;
                });

            });</script>
    </body>

</html>
