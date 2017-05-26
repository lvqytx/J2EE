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
    
    <title>OrderConfirm</title>
    
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
	<script type="text/javascript">
	function submitorder(total){
		if(window.confirm("是否真的提交订单，提交后不可再修改订单信息！")){
			window.location.href="/DBssh/cart/cart_ordersubmit.action?amount=" + total;
			return true;
		}
		return false;
	}
	</script>
	
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
</style>
	<!-- **************************** -->

  </head>
  
  <body style="background-color:#EAEAEA">
  <div class="container">
  <table class="table" style="border:solid 2px #E7E7E7">
    <caption>
    <h3>商品列表</h3>
    </caption>
    <thead>
      <tr style="background:#F0F0F0">
        <th>商品名称</th>
        <th>商品价格</th>
        <th>购买数量</th>
        <th>小计</th>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td colspan="4" height="15px" style="border: 0 none;background: #FFF"></td>
      </tr>
      <c:forEach var="ce" items="${cartlist}">
        <tr>
          <td bgcolor="#ffffff" > ${ce.id.product.nickname} </td>
          <td bgcolor="#ffffff" > ${ce.id.product.price} </td>
          <td bgcolor="#ffffff" > ${ce.amount} </td>
          <td bgcolor="#ffffff" > ¥&nbsp;${ce.amount*ce.id.product.price}&nbsp;元 </td>
        </tr>
      </c:forEach>
      <tr>
        <td bgcolor="#ffffff" align="right" colspan="4"> 应付款 <font size="5" color="red">¥&nbsp;${carttotal}&nbsp;元</font></td>
      </tr>
    </tbody>
  </table>
  <div> 
  <button class="btn btn-success btn-lg pull-right" onclick="submitorder(${carttotal})"><span class="glyphicon glyphicon-log-in"></span> 确认提交</button>
  <input type="hidden" name="productamount" value="20"/>
</div><!--!container-->
  	<%-- <div id="body">
  		<form action="" method="post">
  			<h2>商品列表</h2>
  				<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
  					<tr>
  						<th bgcolor="#ffffff">商品名称</th>
  						<th bgcolor="#ffffff">商品价格</th>
  						<th bgcolor="#ffffff">购买数量</th>
  						<th bgcolor="#ffffff">小计</th>
  					</tr>
  					<c:forEach var="ce" items="${cartlist}">
  					<tr>
  						<td bgcolor="#ffffff" align="center">
  							${ce.nickname}
  						</td>
  						<td bgcolor="#ffffff" align="center"> 
  							${ce.price}
  						</td>
  						<td bgcolor="#ffffff" align="center">
  							${ce.amount}
  						</td>
  						<td bgcolor="#ffffff" align="center">
  							¥&nbsp;${ce.smallsum}&nbsp;元
  						</td>
  					</tr>
  					</c:forEach>
  					<tr>
  						<td bgcolor="#ffffff" align="right" colspan="4">
  							应付款
  							<font size="5" color="red">¥&nbsp;${cartlist[0].total}&nbsp;元</font> 
  						</td>
  					</tr>
  				</table>
  			<div>
  				<img style="cursor: pointer;" onclick="submitorder(${cartlist[0].total})" src="customer/images/bnt_subOrder.gif">
  			</div>
  			<input type="hidden" name="productamount" value="20"/>
  		</form>
  	</div> --%>
  </body>
</html>
