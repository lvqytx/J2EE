
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
    
    <title>UpdateSelect</title>
    
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
		obj.className = "bgcolor";
	}
	function changeColor1(obj){
		obj.className = "";
	}
	</script>
  </head>
  
  <body style="background-color:#EAEAEA;background:rgba(255,255,255,0.3)">
   <div class="container-fluid">
       <table class="table" style="border:solid 0px #E7E7E7">
    	<thead>
        <tr style="background:rgba(255,255,255,0.2);">
    		<th >商品ID</th>
    		<th >商品名称</th>
    		<th >商品价格</th>
    		<th >商品数量</th>
    		<th >商品图片</th>
    		<th >操作类型</th>
    	</tr>
        </thead>
        <tbody>
    	<s:iterator value="allProduct" var="p">
    	<tr onmousemove="changeColor(this)" onmouseout="changeColor(this)" bgcolor="#ffffff" style="background:rgba(255,255,255,0.2);">
    		<td><s:property value="#p.id"/></td>
    		<td><s:property value="#p.nickname"/></td>
    		<td><s:property value="#p.price"/></td>
    		<td><s:property value="#p.number"/></td>
    		<td><img style="width: 100px; height: 100px;" src="uploadFiles/<s:property value="#p.pictureDir"/>"></td>
    		<td>
    			<a href="seller/selectAProduct.action?pt.id=<s:property value="#p.id"/>&act=updateAProduct" target="center">修改</a>
    		</td>
    	</tr>
    	</s:iterator>
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
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>UpdateSelect</title>
    
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
  修改商品
    <br>
    <table border="1" bordercolor="PaleGreen">
    	<tr>
    		<th width="250px">商品ID</th>
    		<th width="200px">商品名称</th>
    		<th width="200px">商品价格</th>
    		<th width="200px">商品数量</th>
    		<th width="200px">商品图片</th>
    		<th width="200px">操作类型</th>
    	</tr>
    	<s:iterator value="allProduct" var="p">
    	<tr onmousemove="changeColor(this)" onmouseout="changeColor(this)">
    		<td><s:property value="#p.id"/></td>
    		<td><s:property value="#p.nickname"/></td>
    		<td><s:property value="#p.price"/></td>
    		<td><s:property value="#p.amount"/></td>
    		<td><img alt="" width="50" height="50" src="uploadFiles/<s:property value="#p.picture"/>"></td>
    		<td>
    			<a href="seller/selectAProduct.action?pt.id=<s:property value="#p.id"/>&act=updateAProduct" target="center">修改</a>
    		</td>
    	</tr>
    	</s:iterator>
    </table>
  </body>
</html>
 --%>