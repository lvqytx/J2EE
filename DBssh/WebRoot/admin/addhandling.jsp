<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AddHandling</title>
    
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
  	<div id="req">
  	<form action="admin/updateCH.action" method="post">
  		<table border="1" style="border-collapse:collapse">
    		<caption>
    			<font size=4 face="微软雅黑">回复投诉</font>
    		</caption>
    		<tr>
    			<td>投诉ID<font color="red">*</font></td>
    			<td><s:textfield name="ch.id" cssStyle="border-width: 1pt;border-style:dashed;border-color:red" value="%{ach.id}" readonly="true"/></td>
    		</tr>
    		<tr>
    			<td>投诉用户<font color="red">*</font></td>
    			<td><s:textfield name="ch.customer.id" value="%{ach.customer.id}"/></td>
    		</tr>
    		<tr>
    			<td>投诉内容<font color="red">*</font></td>
    			<td><s:textfield name="ch.complaint" value="%{ach.complaint}"/></td>
    		</tr>
    		<tr>
    			<td>回复内容<font color="red">*</font></td>
    			<td><s:textarea name="ch.handling" rows="10" cols="30" value="%{ach.handling}"></s:textarea></td>
    		</tr>
    		<tr>
    			<td align="center"><s:submit value="提交"/></td>
    			<td align="left"><s:reset value="重置"/></td>
    		</tr>
    	</table>
  	</form>
  	
  	</div>
    </div>
  </body>
</html>
