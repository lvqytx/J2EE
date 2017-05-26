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
    
    <title>Ch</title>
    
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
		obj.className = "bgcolor";
	}
	function changeColor1(obj){
		obj.className = "";
	}
	</script>
  </head>
  
  <body>
    <table border="1" bordercolor="PaleGreen">
  		<tr>
  			<th width="250px">投诉ID</th>
  			<th width="250px">投诉用户ID</th>
  			<th width="250px">投诉商家ID</th>
  			<th width="300px">投诉内容</th>
  			<th width="300px">回复内容</th>
  		</tr>
  		<s:iterator>
  		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
	    	<td><s:property value="#allch.id"/></td>
			<td><s:property value="#allch.customer_id"/></td>
	    	<td><s:property value="#allch.seller_id"/></td>
	    	<td><s:property value="#allch.complaint"/></td>
	    	<td><s:property value="#allch.handing"/></td>
	    </tr>
  		</s:iterator>
  	</table>
  </body>
</html>
