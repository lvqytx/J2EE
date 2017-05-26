<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Cart</title>
    
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
	//确认
	function  goOrderConfirm(){
		window.location.href="/DBssh/cart/cart_orderConfirm.action";
	}
	//清空
	function godelete(){
		if(window.confirm("真的清空购物车吗？")){
			window.location.href="/DBssh/cart/cart_clear.action";
			return true;
		}
		return false;
	}
	//删除
	function deleteAproduct(pno){
		if(window.confirm("真的删除该商品吗？")){
			window.location.href="/DBssh/cart/cart_delete.action?product_id="+pno;
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

	button a:link{color:#FEFEFE}
	button a:hover{text-decoration:none}
</style>
	<!-- **************************** -->
	
  </head>
  
  <body style="background-color:#EAEAEA">
  <div class="container">
<table class="table" style="border:solid 2px #E7E7E7">
	<thead>
    <tr style="background:#F0F0F0">
      <th>商品信息</th>
      <th>单价（元）</th>
      <th>数量</th>
      <th>小计</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
    	<c:forEach var="ce" items="${cartlist}">
	    			<tr>
	    				<td bgcolor="#ffffff">
	    					<a href="index/customer_detail?pno=${ce.id.product.id}">
	    						<img style="width: 100px; height: 100px;" src="uploadFiles/${ce.id.product.pictureDir}" title="${ce.id.product.nickname}"/>
	    					</a>
	    				<br/>
	    					<a style="text-decoration:none;" href="index/customer_detail?pno=${ce.id.product.id}">${ce.id.product.nickname}</a>
	    				</td>
	    				<td bgcolor="#ffffff">
	    					<span>${ce.id.product.price}</span>
	    				</td>
	    				<td bgcolor="#ffffff">
	    					<input type="text" name="product_number" value="${ce.amount}" size="4" style="width:40px"/>
	    				</td>
	    				<td bgcolor="#ffffff">
	    					¥&nbsp;<span>${ce.amount*ce.id.product.price}</span>&nbsp; 
	    				</td>
	    				<td bgcolor="#ffffff">
	    					<a style="test-decortion:none;" href="javaScript:deleteAproduct('${ce.id.product.id}')" title="删除"><img alt="删除" src=""> </a>
	    				</td>
	    			</tr>
    			</c:forEach>
  </tbody>
  <tfoot>
  	<tr>
    				<td align="right" bgcolor="#ffffff" colspan="4" height="41px" style="border-left: 0 none;">
    					<font style="color:#a60401;font-size:13px;font-weight:bold;letter-spacing:0px;">
    					购物金额总计（不含运费）¥&nbsp;<span>${carttotal}</span>元
    					</font>
    				</td>
    				<td align="center" bgcolor="#ffffff">
    					<input type="button" class="btn btn-warning" value="清空购物车" onclick="godelete()"/>
    				</td>
    			</tr>
    			<tr><br/>
    				<td colspan="3"></td>
    				<td bgcolor="#ffffff"  style="padding:5px;padding-left:2px;border-right:0 none">
    				 <button class="btn btn-info"><a style="cursor: pointer;color:#FEFEFE" href="./">继续购物</a></button>
    				</td>
    				<td align="center" bgcolor="#ffffff" style="padding:5px;padding-right: 2px">
    					<button class="btn btn-success"><a style="cursor: pointer;" href="javascript:goOrderConfirm()">
    						提交订单
    					</a></button>
    				</td>
    			</tr>
  </tfoot>
</table>
</div><!--!container-->
 <%--    <div id="body">
    <div id="blank"></div>
    	<div>
    		<table  width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddd">
    			<tr>
    				<th>商品信息</th>
    				<th>单价（元）</th>
    				<th>数量</th>
    				<th>小计</th>
    				<th>操作</th>
    			</tr>
    			<tr>
    				<td colspan="5" height="15px" style="border:0 none;background:#FFF"></td>
    			</tr>
    			<c:forEach var="ce" items="${cartlist}">
	    			<tr>
	    				<td bgcolor="#ffffff" align="center">
	    					<a href="index/customer_detail?pno=${ce.product_id}">
	    						<img style="width: 100px; height: 100px;" src="uploadFiles/${ce.picture}" border="0" title="${ce.nickname}"/>
	    					</a>
	    				<br/>
	    					<a style="text-decoration:none;" href="index/customer_detail?pno=${ce.product_id}">${ce.nickname}</a>
	    				</td>
	    				<td bgcolor="#ffffff" width="110px" align="center">
	    					<span>${ce.price}</span>
	    				</td>
	    				<td bgcolor="#ffffff" width="115px" align="center" valign="middle">
	    					<input type="text" name="product_number" value="${ce.amount}" size="4" style="text-align:center;width:36px;color:#999999"/>
	    				</td>
	    				<td align="center" bgcolor="#ffffff" width="115px">
	    					¥&nbsp;<span>${ce.smallsum}</span>&nbsp; 
	    				</td>
	    				<td align="center" bgcolor="#ffffff" width="185px">
	    					<a style="test-decortion:none;" href="javaScript:deleteAproduct('${ce.product_id}')" title="删除"><img alt="删除" src=""> </a>
	    				</td>
	    			</tr>
    			</c:forEach>
    			<tr>
    				<td align="right" bgcolor="#ffffff" colspan="4" height="41px" style="border-left: 0 none;">
    					<font style="color:#a60401;font-size:13px;font-weight:bold;letter-spacing:0px;">
    					购物金额总计（不含运费）¥&nbsp;<span>${cartlist[0].total}</span>元
    					</font>
    				</td>
    				<td align="center" bgcolor="#ffffff">
    					<input type="button" value="清空购物车" onclick="godelete()"/>
    				</td>
    			</tr>
    			<tr>
    				<td bgcolor="#ffffff" colspan="4" align="right" style="padding:5px;padding-left:2px;border-right:0 none">
    				<a href="./"><img alt="继续购物" src=""></a>
    				</td>
    				<td align="center" bgcolor="#ffffff" style="padding:5px;padding-right: 2px">
    					<a style="cursor: pointer;" href="javascript:goOrderConfirm()">
    						<img alt="提交订单" src="">
    					</a>
    				</td>
    			</tr>
    		</table>
    	</div>
    </div> --%>
  </body>
</html>
