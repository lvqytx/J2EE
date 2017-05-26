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
<title>ADDProduct</title>
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

</head>

<body style="background-color:#EAEAEA;background:rgba(255,255,255,0.3);">
<div class="container">


  <form class="form-horizontal" style="/* background-color:; */background:#FFF rgba(255,255,255,0.4);height:100%" action="seller/addProduct.action" method="post" enctype="multipart/form-data">
    <div class="form-group" style="background-color:#EAEAEA;background:rgba(255,255,255,0.0);">
      <div class="col-sm-11 pull-right" style="background:rgba(255,255,255,0.0);">
        <h2>商品添加</h2>
        <p>
        <h3><em>商品ID:&nbsp;
          <s:textfield name="pt.id" style="border:thick;background:rgba(255,255,255,0.0); " value="%{@team.j2ee.util.CreateStringID@getStringID()}" readonly="true"/>
          </em></h3>
        </p>
      </div>
    </div>
    <hr/>
    <div class="form-group">
      <label for="exampleInputEmail1" class="col-sm-5 control-label">商品名称：</label>
      <div class="col-sm-4">
      <input name="pt.nickname" type="text" class="form-control"  placeholder="请输入商品的名称">
      </div>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1" class="col-sm-5 control-label">商品价格：</label>
      <div class="col-sm-4">
      <input name="pt.price" type="text" class="form-control"  placeholder="请输入商品的价格">
      </div>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1" class="col-sm-5 control-label">商品数量：</label>
      <div class="col-sm-4">
      <input name="pt.number" type="text" class="form-control"  placeholder="请输入商品的数量">
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
    
    <title>ADDProduct</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<center>
    <s:form action="seller/addProduct.action" method="post" enctype="multipart/form-data">
    <table border="0" style="border-collapse: collapse">
    	<caption>
    		<font size=4 face=微软雅黑>添加商品</font>
    	</caption>
    	<tr>
    		<td>商品 ID<font color="red">*</font></td>
    		<td><s:textfield name="pt.id" cssStyle="border-width: 1pt;border-style:dashed;border-color:red" value="%{@dao.BaseDao@getStringID()}" readonly="true"/></td>
    	</tr>
    	<tr>
    		<td>商品名称<font color="red">*</font></td>
    		<td><s:textfield name="pt.nickname"/></td>
    	</tr>
    	<tr>
    		<td>商品价格<font color="red">*</font></td>
    		<td><s:textfield name="pt.price"/></td>
    	</tr>
    	<tr>
    		<td>商品数量<font color="red">*</font></td>
    		<td><s:textfield name="pt.amount"/></td>
    	</tr>
    	<tr>
    		<td>商品图片<font color="red">*</font></td>
    		<td><s:file name="picture"/></td>
    	</tr>
    	<tr>
    		<td align="center"><s:submit value="提交"/></td>
    		<td align="left"><s:reset value="重置"/></td>
    	</tr>
    </table>
    <s:fielderror/>
    </s:form>
    </center>
  </body>
</html>
 --%>