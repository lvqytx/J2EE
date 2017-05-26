<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>OrderManager</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!------------------------------------------------------>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="seller/css/bootstrap.min.css" rel="stylesheet"/>
	<script type="text/javascript" src="seller/jquery/jquery-3.1.1.js" ></script>
	<script type="text/javascript" src="seller/js/bootstrap.min.js" ></script>
	<!------------------------------------------------------>
	<script type="text/javascript">
		function changeColor(obj){
			obj.className="bgcolor";
		}
		function changeColor1(obj){
			obj.className="";
		}
		function checkDel(id){
			if (window.confirm("确定删除该订单？")){
				window.location.href = "/DBssh/seller/deleteorderManager.actoin?ordersn="+id;
			}
		}
	</script>
  </head>
    <!-- style="background:rgba(255,255,255,0.3) -->
  <body style="background-color:#EAEAEA;background:rgba(255,255,255,0.3)">
    <div class="container-fluid">
       <table class="table table-striped table-hover" style="border:solid 0px #E7E7E7;width:100%">
    	<thead>
        <tr style="background:rgba(255,255,255,0.2);">
    		<th >订单编号</th>
    		<th >用户编号</th>
    		<th >订单金额</th>
    		<th >订单状态</th>
    		<th >订单日期</th>
    		<th >操作</th>
    	</tr>
        </thead>
        <tbody>
    	<c:forEach var="n" items="${orderList}">
    	<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)"  style="background:rgba(255,255,255,0.2)" bgcolor="#ffffff">
    		<td>${n.id}</td>
    		<td>${n.customer.id}</td>
    		<td>${n.totalAmount}</td>
    		<td>
    			<c:if test="${n.status==0}">未支付</c:if><c:if test="${n.status==1}">已支付</c:if>
    		</td>
    		<td>${n.orderdate}</td>
    		<td>
    			<c:if test="${n.status==0}">
    				<a href="javaScript:checkDel('${n.id}')">删除</a>
    			</c:if>
    		</td>
    	</tr>
    	</c:forEach>
        </tbody>
    </table>
    </div><!--container-->
 
  </body>
</html>

<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>OrderManager</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function changeColor(obj){
			obj.className="bgcolor";
		}
		function changeColor1(obj){
			obj.className="";
		}
		function checkDel(id){
			if (window.confirm("确定删除该订单？")){
				window.location.href = "/DBp/seller/deleteorderManager.actoin?ordersn="+id;
			}
		}
	</script>
  </head>
  
  <body>
    <br>
    <table border="1" bordercolor="PaleGreen">
    	<tr>
    		<th width="150px">订单编号</th>
    		<th width="150px">用户编号</th>
    		<th width="150px">订单金额</th>
    		<th width="150px">订单状态</th>
    		<th width="150px">订单日期</th>
    		<th width="150px">操作</th>
    	</tr>
    	<c:forEach var="n" items="${orderList}">
    	<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
    		<td>${n.id}</td>
    		<td>${n.name}</td>
    		<td>${n.amount}</td>
    		<td>
    			<c:if test="${n.status==0}">未支付</c:if><c:if test="${n.status}">已支付</c:if>
    		</td>
    		<td>${n.orderdate}</td>
    		<td>
    			<c:if test="${n.status==0}">
    				<a href="javaScript:checkDel('${n.id}')">删除</a>
    			</c:if>
    		</td>
    	</tr>
    	</c:forEach>
    </table>
  </body>
</html>
 --%>