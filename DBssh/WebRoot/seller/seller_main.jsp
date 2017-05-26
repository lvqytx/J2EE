<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Seller_main</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!--------------------------------------------------------->
	 <link href="seller/css/bootstrap.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="seller/jquery/jquery-3.1.1.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="seller/js/bootstrap.min.js"></script>
		
		
         <!----------------------------------------------------------------->
		
	<link href="seller/css/init.css" rel="stylesheet" type="text/css" />
	<link href="seller/css/style.css" rel="stylesheet" type="text/css" />
	
  </head>
  
  <body style="background: url(./customer/img/4.jpg) no-repeat;">
  <div  class="container"><!-- class="container-fluid" -->
    <div id="title" >
    <br>
    <br>
		<div id="title" style="background-color:#EAEAEA;background:rgba(255,255,255,0.7);height:100px;margin-top:-45px"><h1 style="padding-top:20px">欢迎进入商家管理界面</h1></div>
    </div>
    <ul id="navigator" class="nav nav-tabs" style="background:rgba(255,255,255,0.7);width:100%">
    	<li><a href="seller/selectAllProduct.action" target="center" >查询商品</a></li>
    	<li><a href="seller/addProduct.jsp" target="center" >添加商品</a></li>
    	<li><a href="seller/selectAllProduct.action?act=updateSelect" target="center" >修改商品</a></li>
    	<li><a href="seller/selectAllProduct.action?act=deleteSelect" target="center" >删除商品</a></li>
    	<li><a href="seller/selectorderManager.action" target="center" >订单管理</a></li>
    	<li><a href="seller/selectcommentProduct.action" target="center" >评论查看</a></li>
    	<li><a href="seller/loginOut.action" >退出系统</a></li>
    	</ul>
    <!-- <div class="front_daohangbj" >
    <div class="front_daohang" style="background:#f6a303;">
    	<ul id="navigator">
    	<li><a href="seller/selectAllProduct.action" target="center" >查询商品</a></li>
    	<li><a href="seller/addProduct.jsp" target="center" >添加商品</a></li>
    	<li><a href="seller/selectAllProduct.action?act=updateSelect" target="center" >修改商品</a></li>
    	<li><a href="seller/selectAllProduct.action?act=deleteSelect" target="center" >删除商品</a></li>
    	<li><a href="seller/selectorderManager.action" target="center" >订单管理</a></li>
    	<li><a href="seller/selectcommentProduct.action" target="center" >评论查看</a></li>
    	<li><a href="seller/loginOut.action" >退出系统</a></li>
    	</ul>
    </div>
    </div> -->
    <div >
    	<iframe src="seller/selectAllProduct.action" name="center" frameborder="0" width="100%" height="100%"></iframe>
    </div>
    <div  style="background:rgba(255,255,255,0.5);">Copyright&copy; </div>
    </div>
  </body>
</html>
