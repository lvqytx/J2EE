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
    
    <title>DeleteSelect</title>
    
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
	function confirmDelete(){
		var n = document.deleteForm.pnos.length;
		var count = 0;
		for(var i=0;i<n;i++){
			if (!document.deleteForm.pnos[i].checked){
				count++;
			}
			else{
				continue;
			}
		}
		if (n>1){
			if (count == n){
				alert("请选择删除的商品");
				count=0;
				return false; 
			}
		}
		else{
			if (!document.deleteForm.pnos.checked){
				alert("请选择删除的商品2");
			}
		}
		if (window.confirm("是否删除商品？请确认！")){
			document.deleteForm.submit();
			return true; 
		}
		return false;
	}	
	function checkDel(id){
  		if(window.confirm("是否删除该商品？")){
  			window.location.href = "/DBssh/seller/deleteProduct?act=link&pt.id="+id;
  		}
	}	
	</script>
  </head>

  <body style="background-color:#EAEAEA;background:rgba(255,255,255,0.3)" >
   <div class="container-fluid">
   <form action="seller/deleteAllProduct.action?act=button" name="deleteForm"  role="form">
   	<table class="table" style="border:solid 0px #E7E7E7">
    <thead>
    		<tr style="background-color:#F0F0F0;background:rgba(255,255,255,0.0)">
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
	    		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)" style="background-color:#ffffff;background:rgba(255,255,255,0.0)">
	    			<td>
	    				<input type="checkbox" name="pnos" value="<s:property value="#p.id"/>"/>
	    				<s:property value="#p.id"/> 
	    			</td>
	    			<td><s:property value="#p.nickname"/></td>
	    			<td><s:property value="#p.price"/></td>
	    			<td><s:property value="#p.number"/></td>
	    			<td><img style="width: 100px; height: 100px;" src="uploadFiles/<s:property value="#p.pictureDir"/>"></td>
	    			<td><a href="javascript:checkDel('<s:property value="#p.id"/>')" >删除</a></td>
	    		</tr>
	    	</s:iterator>
      </tbody>
      <tfoot>
	    	<tr style="background:rgba(255,255,255,0.1)">
	    		<td colspan="6" >
	    			<input type="button" class="btn btn-warning" value="删除" onclick="confirmDelete()">
	    		</td>
	    	</tr>
      </tfoot>
    	</table>
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
    
    <title>DeleteSelect</title>
    
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
	function confirmDelete(){
		var n = document.deleteFrom.pnos.length;
		var count = 0;
		for(var i=0;i<n;i++){
			if (!document.deleteForm.pnos[i].checck){
				count++;
			}
			else{
				continue;
			}
		}
		if (n>1){
			if (count == n){
				alert("请选择删除的商品");
				count=0;
				return false; 
			}
		}
		else{
			if (!document.deleteForm.pnos.check){
				alert("请选择删除的商品");
			}
		}
		lert(document.deleteForm.pnos.value); 
		if (window.confirm("是否删除商品？请确认！")){
			document.deleteForm.submit();
			return true; 
		}
		return false;
	}	
	function checkDel(id){
  		if(window.confirm("是否删除该商品？")){
  			window.location.href = "/DBp/seller/deleteProduct?act=link&pt.id="+id;
  		}
	}	
	</script>
  </head>
  
  <body>
    <s:form action="seller/deleteProduct?act=button" name="deleteForm">
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
	    		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
	    			<td>
	    				<input type="checkbox" name="pnos" value="<s:property value="#p.id"/>"/>
	    				<s:property value="#p.id"/> 
	    			</td>
	    			<td><s:property value="#p.nickname"/></td>
	    			<td><s:property value="#p.price"/></td>
	    			<td><s:property value="#p.amount"/></td>
	    			<td><img alt="" width="50" height="50" src="uploadFiles/<s:property value="#p.picture"/>"></td>
	    			<td><a href="javascript:checkDel('<s:property value="#p.id"/>')" >删除</a></td>
	    		</tr>
	    	</s:iterator>
	    	<tr>
	    		<td colspan="5">
	    			<input type="button" value="删除" onclick="confirmDelete()">
	    		</td>
	    	</tr>
    	</table>
	</s:form>
    
  </body>
</html>
 --%>