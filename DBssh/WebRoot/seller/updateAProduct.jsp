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
    
    <title>UpdateAProduct</title>
    
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
	<link href="seller/css/init.css" rel="stylesheet" type="text/css" />
	<link href="seller/css/style.css" rel="stylesheet" type="text/css" />
	
  </head>
  
  <body style="background:rgba(255,255,255,0.3);">
  <div class="container">
  <form class="form-horizontal" style="background:rgba(255,255,255,0.0);height:100%" action="seller/updateProduct.action" method="post" enctype="multipart/form-data">
    <div class="form-group" style="background:rgba(255,255,255,0.0)">
      <div class="col-sm-11 pull-right" style="background:rgba(255,255,255,0.0);">
        <h2>商品信息修改</h2>
        <p>
        <h3><em>商品ID:&nbsp;
          <s:textfield name="pt.id" style="border:thick;background:rgba(255,255,255,0.0)" value="%{pt.id}" readonly="true"/>
          </em></h3>
        </p>
      </div>
    </div>
    <hr/>
    <div class="form-group">
      <label for="exampleInputEmail1" class="col-sm-5 control-label">商品名称：</label>
      <div class="col-sm-4">
      
      <s:textfield name="pt.nickname" value="%{pt.nickname}"  style="height:30px;width:100%;border-radius:3px;"/>
      </div>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1" class="col-sm-5 control-label">商品价格：</label>
      <div class="col-sm-4">
     <s:textfield name="pt.price" value="%{pt.price}" style="height:30px;width:100%;border-radius:3px;"/>
      </div>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1" class="col-sm-5 control-label">商品数量：</label>
      <div class="col-sm-4">
      <s:textfield name="pt.number" value="%{pt.number}" style="height:30px;width:100%;border-radius:3px;"/>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-5 control-label" for="exampleInputFile">商品图片：</label>
      <input name="picture" type="file" id="exampleInputFile" style="padding-left:15px">
      <p class="help-block col-sm-5">请选择商品的图片</p>
    </div>
 
 	<div class="form-group">
    <button type="submit" class="btn btn-success col-sm-1 col-sm-offset-5">提交</button>
    <button type="reset" class="btn btn-warning col-sm-1 col-sm-offset-1">重置</button>
    </div>
    
  </form>
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
    
    <title>UpdateAProduct</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="seller/css/init.css" rel="stylesheet" type="text/css" />
	<link href="seller/css/style.css" rel="stylesheet" type="text/css" />
	
  </head>
  
  <body>
  <center>
  	<s:form action="seller/updateProduct.action" method="post" enctype="multipart/form-data">
  		<table border=0 style="border-collapse:collapse">
  			<caption>
  				<font size=4 face=微软雅黑>修改商品</font>
  			</caption>
  			<tr>
    			<td>商品 ID<font color="red">*</font></td>
    			<td><s:textfield name="pt.id" cssStyle="border-width: 1pt;border-style:dashed;border-color:red" value="%{aProduct.id}" readonly="true"/></td>
	    	</tr>
	    	<tr>
	    		<td>商品名称<font color="red">*</font></td>
	    		<td><s:textfield name="pt.nickname" value="%{aProduct.nickname}"/></td>
	    	</tr>
	    	<tr>
	    		<td>商品价格<font color="red">*</font></td>
	    		<td><s:textfield name="pt.price" value="%{aProduct.price}"/></td>
	    	</tr>
	    	<tr>
	    		<td>商品数量<font color="red">*</font></td>
	    		<td><s:textfield name="pt.amount" value="%{aProduct.amount}"/></td>
	    	</tr>
	    	<tr>
	    		<td>商品图片<font color="red">*</font></td>
	    		<td><s:file name="picture" value="%{aProduct.picture}"/></td>
	    	</tr>
	    	<tr>
	    		<td align="center"><s:submit value="提交"/></td>
	    		<td align="left"><s:reset value="重置"/></td>
	    	</tr>
  		</table>
  	</s:form>
  	</center>
  </body>
</html>
 --%>