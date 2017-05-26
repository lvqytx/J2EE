<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>OrderDetail</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="customer/css/init.css" rel="stylesheet" type="text/css" />
	<link href="customer/css/style.css" rel="stylesheet" type="text/css" />
			<!-- **************************** -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="customer/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="customer/jquery/jquery-3.1.1.js" ></script>
<script type="text/javascript" src="customer/js/bootstrap.min.js" ></script>

<style type="text/css">
.navbar {
	background:#FF9933;
	height:80px
}
.navbar-default .navbar-nav > li > a {
	color: #ecf0f1;
}
.navbar-default .navbar-nav > .active > a {
	color: #ecdbff;
	background-color: #8e44ad;
}
.navbar-default .navbar-nav > .open > a {
	color: #ecdbff;
	background-color: #8e44ad;
}

	button a:link{color:#FEFEFE}
	button a:hover{text-decoration:none}
</style>
	<!-- **************************** -->
	
	
  </head>
  
  <body style="background-color:#EAEAEA">
  <div class="container">
<table class="table" style="border:solid 2px #E7E7E7">
<caption><h3 style="text-align:center">订单详情</h3></caption>
	<thead>
    <tr style="background:#F0F0F0">
      <th>商品编号</th>
      <th>商品名称</th>
      <th>商品图片</th>
      <th>商品价格</th>
      <th>购买数量</th>
    </tr>
  </thead>
  <tbody>
 <c:forEach var="mf" items="${orderDetail}">
    				<tr>
    					<td bgcolor="#ffffff">
    						${mf.id.orders.id}
    					</td>
    					<td bgcolor="#ffffff">
    						${mf.id.product.nickname}
    					</td>
    					<td bgcolor="#ffffff">
                      	  <img style="width: 100px; height: 100px;" src="uploadFiles/${mf.id.product.pictureDir}" title="${mf.id.product.nickname}"/><!---->
    					</td>
    					<td bgcolor="#ffffff" >
    						${mf.id.product.price}
    					</td>
    					<td bgcolor="#ffffff" >
    						${mf.shoppingnum}
    					</td>
    				</tr>
    				</c:forEach>
    
  </tbody>
</table>
</div>
  </body>
</html>
