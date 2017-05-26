<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AdminMain</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--------------------------------------------------------->
	 <link href="./seller/css/bootstrap.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="./seller/jquery/jquery-3.1.1.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="./seller/js/bootstrap.min.js"></script>
		
		<!------------------------------------------------>
	<link href="admin/css/init.css" rel="stylesheet" type="text/css" />
	<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body style="background: url(./customer/img/4.jpg) no-repeat;">
   <div  class="container"><!-- class="container-fluid" -->

    <div id="title" >
    <br>
    <br>
		<div id="title" style="background-color:#EAEAEA;background:rgba(255,255,255,0.7);height:100px;margin-top:-45px"><h1 style="padding-top:20px">欢迎进入管理员界面</h1></div>
    </div>
    <ul id="navigator" class="nav nav-tabs" style="background:rgba(255,255,255,0.7);width:100%">
    	<li><a href="admin/selectcustomerManager.action" target="center" >查询用户</a></li>
	    	<li><a href="admin/selectsellerManager.action" target="center" >查询商家</a></li>
	    	<li><a href="admin/selectCH.action" target="center" >回复投诉</a></li>
	    	<li><a href="admin/loginOut.action" >退出系统</a></li>
    </ul>

    <!-- <div class="front_daohangbj">
	    <div class="front_daohang" style="background:#f6a303">
	    	<ul>
	    	<li><a href="admin/selectcustomerManager.action" target="center" >查询用户</a></li>
	    	<li><a href="admin/selectsellerManager.action" target="center" >查询商家</a></li>
	    	<li><a href="admin/selectCH.action" target="center" >回复投诉</a></li>
	    	<li><a href="admin/loginOut.action" >退出系统</a></li>
	    	</ul>
	    </div>
    </div> -->
    <div>
    	<iframe src="" name="center" frameborder="0" width="100%" height="100%"></iframe>
    </div>
    <div style="background:rgba(255,255,255,0.5);">Copyright&copy;</div>
    </div><!--container-->
  </body>
</html>

<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AdminMain</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="admin/css/init.css" rel="stylesheet" type="text/css" />
	<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  	<div id="body">
	<div id="header">
    <br>
    <br>
    <h1 id="title">欢迎进入管理员界面</h1>
    </div>
    <div id="blank"></div>
    <div class="front_daohangbj">
	    <div class="front_daohang">
	    	<ul>
	    	<li><a href="admin/selectcustomerManager.action" target="center" >查询用户</a></li>
	    	<li><a href="admin/selectsellerManager.action" target="center" >查询商家</a></li>
	    	<li><a href="admin/selectCH.action" target="center" >回复投诉</a></li>
	    	<li><a href="admin/loginOut.action" >退出系统</a></li>
	    	</ul>
	    </div>
    </div>
    <div id="content">
    	<iframe src="" name="center" frameborder="0" width="100%" height="100%"></iframe>
    </div>
    <div id="footer">Copyright&copy;</div>
    </div>
  </body>
</html>
 --%>