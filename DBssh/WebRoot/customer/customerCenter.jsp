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
    
    <title>CustomerCenter</title>
    
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
</style>
	<!-- **************************** -->


  </head>
  
  <body style="background-color:#EAEAEA">
  <div class="container">
  <table class="table" style="border:solid 2px #E7E7E7">
    <caption>
    <h3></h3>
    </caption>
    <thead>
      <tr style="background:#F0F0F0">
        <th>订单编号</th>
        <th>订单金额</th>
        <th>订单日期</th>
        <th>订单状态</th>
        <th>详情</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td colspan="5" height="15px" style="border: 0 none;background: #FFF"></td>
      </tr>
      <c:forEach var="mo" items="${myorder}">
        <tr>
          <td bgcolor="#ffffff"> ${mo.id} </td>
          <td bgcolor="#ffffff"> ${mo.totalAmount} </td>
          <td bgcolor="#ffffff"> ${mo.orderdate} </td>
          <td bgcolor="#ffffff"><c:if test="${mo.status==0}"> <font color="red">未付款</font>&nbsp;&nbsp; <a style="text-decoration: none;" href="cart/cart_pay.action?ordersn=${mo.id}">去支付</a> </c:if>
            <c:if test="${mo.status==1}"> 已支付&nbsp;&nbsp; <%-- <a style="text-decoration: none;" href="customer/customer_selectCh.action?customer_id=${mo.customer_id}">投诉</a> --%> 
            <!-- 按钮触发模态框 --> 
  <a data-toggle="modal" data-target="#${mo.id}myModal"> 投诉</a>
  
  <!-- 按钮触发模态框 --> 
  <!-- <a data-toggle="modal" data-target="#myModal"> 开始演示模态框 </a> --> 
  <!-- 模态框（Modal） -->
  <div class="modal fade" id="${mo.id}myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
          <h3 class="modal-title" id="myModalLabel" style="text-align:center"> 订单投诉 </h3>
        </div>
        <!---------------------------还未实现投诉功能（现已实现该功能），----------------------------------------------------------->
        <form action="customer/customer_addCh.action" method="post" enctype="multipart/form-data">
	        <div class="modal-body">
	         <h4>投诉内容:</h4>订单编号： ${mo.id}
	         <textarea name="ch.orders_id"  class="sr-only" value="%{mo.id}"></textarea>
	          <textarea name="ch.complaint"  class="form-control" rows="5" value="%"></textarea>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
	          <button type="submit" class="btn btn-primary"> 提交投诉 </button>
	        </div>
        
			 
        </form>
        <!---------------------------------------------------------------------------------------------->
      </div>
      <!-- /.modal-content --> 
    </div>
    <!-- /.modal -->
  
  
  </c:if></td>
          <td bgcolor="#ffffff"><a style="text-decoration: none;" href="customer/customer_orderDetail.action?ordersn=${mo.id}" target="_blank">详情</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
    
  
</div>
  </body>
</html>
