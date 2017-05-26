<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>CustomerManager</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!------------------------------------------------------>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="./seller/css/bootstrap.min.css" rel="stylesheet"/>
	<script type="text/javascript" src="./seller/jquery/jquery-3.1.1.js" ></script>
	<script type="text/javascript" src="./seller/js/bootstrap.min.js" ></script>
	<!------------------------------------------------------>
	<link href="admin/css/init.css" rel="stylesheet" type="text/css" />
	<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
  
	<script type="text/javascript">
	function checkDel(id){
		if(window.confirm("是否删除该用户？")){
			window.location.href="/DBssh/admin/deletecustomerManager.action?cid="+id;
		}
	}
	</script>
  </head>
  
  <body style="background-color:#EAEAEA;background:rgba(255,255,255,0.3)">
  <div class="container-fluid">
   <table class="table table-striped table-hover" style="border:solid 0px #E7E7E7">
   <thead>
    	<tr style="background:rgba(255,255,255,0.2);">
    		<th width="200px">用户ID</th>
    		<th width="200px">用户昵称</th>
    		<th width="200px">用户账号</th>
    		<th width="200px">用户密码</th>
    		<th width="200px">操作</th>
    	</tr>
   </thead>
   <tbody>
    	<c:forEach var="n" items="${allCustomer}">
    		<tr style="background:rgba(255,255,255,0.2);">
    			<td>${n.id}</td>
    			<td>${n.nickname}</td>
    			<td>${n.username}</td>
    			<td><input type="password" value="${n.password}" readonly></td>
    			<td><a href="javaScript:checkDel('${n.id}')">删除</a></td>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>CustomerManager</title>
    
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
  
	<script type="text/javascript">
	function checkDel(id){
		if(window.confirm("是否删除该用户？")){
			window.location.href="/DBp/admin/deletecustomerManager.action?cid="+id;
		}
	}
	</script>
  </head>
  
  <body>
    <table border="1">
    	<tr>
    		<th width="200px">用户ID</th>
    		<th width="200px">用户昵称</th>
    		<th width="200px">用户账号</th>
    		<th width="200px">用户密码</th>
    		<th width="200px">操作</th>
    	</tr>
    	<c:forEach var="n" items="${allCustomer}">
    		<tr>
    			<td>${n.id}</td>
    			<td>${n.nickname}</td>
    			<td>${n.username}</td>
    			<td><input type="password" value="${n.password}" readonly></td>
    			<td><a href="javaScript:checkDel('${n.id}')">删除</a></td>
    		</tr>
    	</c:forEach>
    </table>
  </body>
</html>
 --%>