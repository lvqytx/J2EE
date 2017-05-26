<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SearchResult</title>
    
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
<caption><h3 style="text-align:center">搜索结果</h3></caption>
	<thead>
    <tr style="background:#F0F0F0">
      <th>商品编号</th>
      <th>商品名称</th>
      <th>商品图片</th>
      <th>价格</th>
      <th>详情</th>
    </tr>
  </thead>
  <tbody>
  <s:iterator value="searchlist" var="sl">
    				<tr>
    						<td bgcolor="#ffffff"><s:property value="#sl.id"/></td>
    						<td bgcolor="#ffffff"><s:property value="#sl.nickname"/></td>
    						<td bgcolor="#ffffff"><img  style="width: 100px; height: 100px;" title="<s:property value="#sl.nickname"/>" src="uploadFiles/<s:property value="#sl.pictureDir"/>"></td>
    						<td bgcolor="#ffffff"><s:property value="#sl.price"/></td>
    						<td bgcolor="#ffffff"><a style="test-decortion:none;" href="index/customer_detail.action?pno=<s:property value="#sl.id"/>" title="详情"><img alt="详情" src=""></a></td>
    				</tr>
    				</s:iterator>
    
  </tbody>
</table>
</div><!--!container-->
   <%--  <div id="body">
    	<div id="title">搜索结果</div>
    	<div id="search">
    		<div>
    			<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" >
    				<tr>
    					<th>商品编号</th>
    					<th>商品名称</th>
    					<th>商品图片</th>
    					<th>商品价格</th>
    					<th>详情</th>
    				</tr>
    				<tr>
    					<td colspan="5" height="15px" style="border=0 none;background: #FFF"></td>
    				</tr>
    				<s:iterator value="searchlist" var="sl">
    				<tr>
    						<td bgcolor="#ffffff" align="center"><s:property value="#sl.id"/></td>
    						<td bgcolor="#ffffff" align="center"><s:property value="#sl.nickname"/></td>
    						<td bgcolor="#ffffff" align="center" height="60px"><img width="50" height="50" border="0" title="<s:property value="#sl.nickname"/>" src="uploadFiles/<s:property value="#sl.picture"/>"></td>
    						<td bgcolor="#ffffff" align="center"><s:property value="#sl.price"/></td>
    						<td bgcolor="#ffffff" align="center"><a href="index/customer_detail.action?pno=<s:property value="#sl.id"/>">详情</a></td>
    				</tr>
    				</s:iterator>
    			</table>
    		</div>
    	</div>
    </div> --%>
  </body>
</html>
