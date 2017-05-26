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
    
    <title>Comment</title>
    
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
  <table class="table table-striped table-hover" style="border:solid 0px #E7E7E7;width:100%">
    	<thead>
        <tr style="background:rgba(255,255,255,0.2);">
    		<th >评论用户ID</th>
    		<th >评论商品ID</th>
    		<th >评论内容</th>
    	</tr>
        </thead>
        <tbody>
        <s:iterator var="ac" value="allcomment">
  		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)"  style="background:rgba(255,255,255,0.2)">
	    	<td><s:property value="#ac.id.customer.id"/></td>
	    	<td><s:property value="#ac.id.product.id"/></td>
	    	<td><s:property value="#ac.message"/></td>
	    </tr>
  		</s:iterator>
        </tbody>
    </table>


    </div><!--container-->
  </body>
</html>
