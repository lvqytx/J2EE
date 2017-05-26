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
    
    <title>SelectAllProduct</title>
    
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
    <form action="seller/condictionProduct.action" method="post" class="form-inline">
  		<center>
  			<br>
  			<div class="form-group">
  			<input type="text" class="form-control" placeholder="请输入商品全称" size="40"  name="pt.nickname"/>&nbsp;
  			<input type="submit" size="5" class="btn btn-primary btn-xs" value="搜索"/>
  			</div>	
  		</center>
  	</form>
  <table class="table" style="border:solid 0px #E7E7E7" >

	<thead>
    <tr style="background:rgba(255,255,255,0.2);">
      <th>商品ID</th>
      <th>商品名称</th>
      <th>商品价格</th>
      <th>商品数量</th>
      <th>商品图片</th>
    </tr>
  </thead>
  <tbody>
  <s:iterator value="allProduct" var="p">
    				
                  	<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)" bgcolor="#ffffff" style="background:rgba(255,255,255,0.2);">
  						<td><s:property value="#p.id"/></td>
    					<td><s:property value="#p.nickname"/></td>
    					<td><s:property value="#p.price"/></td>
                        <td><s:property value="#p.number"/></td>
                        <td><img alt="" style="width: 100px; height: 100px;" src="uploadFiles/<s:property value="#p.pictureDir"/>"></td>
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
    
    <title>SelectAllProduct</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!------------------------------------------------------>
	
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
  
  <body>
  	<s:form action="seller/condictionProduct.action" method="post">
  		<center>
  			<br>
  			<table>
  				<tr>
  					<td width="250px">
  					商品名称：<s:textfield name="pt.nickname"/>
  					</td>
  					<td width="250px">
  						<s:submit value="条件查询"/>
  					</td>
  				</tr>
  			</table>
  			<br>
  		</center>
  	</s:form>
  	<table border="1" bordercolor="PaleGreen">
  		<tr>
  			<th width="250px">商品ID</th>
  			<th width="200px">商品名称</th>
  			<th width="200px">商品价格</th>
  			<th width="200px">商品数量</th>
  			<th width="200px">商品图片</th>
  		</tr>
  		<tr>
  			<s:iterator value="allProduct" var="p">
  				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
  					<td><s:property value="#p.id"/></td>
    				<td><s:property value="#p.nickname"/></td>
    				<td><s:property value="#p.price"/></td>
    				<td><s:property value="#p.amount"/></td>
    				<td><img alt="" width="50" height="50" src="uploadFiles/<s:property value="#p.picture"/>"></td>
  				</tr>
  			</s:iterator>
  		</tr>
  	</table>
  </body>
</html>
 --%>