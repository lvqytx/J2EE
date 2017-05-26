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
    
    <title>SelectCh</title>
    
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
	<link href="admin/css/init.css" rel="stylesheet" type="text/css" />
	<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
  
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
   <table class="table table-striped table-hover" style="border:solid 0px #E7E7E7">
  		<thead>
        <tr style="background:rgba(255,255,255,0.2);">
  			<th width="250px">投诉ID</th>
  			<!-- <th width="250px">投诉用户ID</th> -->
  			<th width="300px">投诉内容</th>
  			<th width="300px">回复内容</th>
  			<th width="300px">回复</th>
  		</tr>
        </thead>
        <tbody>
  		<s:iterator var="c" value="allCh">
  		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)"  style="background:rgba(255,255,255,0.2)">
	    	<td><s:property value="#c.id"/></td>
			<%-- <td><s:property value="#c.id.customer.id"/></td> --%>
	    	<td><s:property value="#c.complaint"/></td>
	    	<td><s:property value="#c.handling"/></td>
	    	<td><%-- <a href="admin/addhandlingCH.action?chid=<s:property value="#c.id"/>" >回复或修改回复</a> --%>
	    	<a data-toggle="modal" data-target="#${c.id}myModal"> 回复或修改回复</a>
  
  <!-- 按钮触发模态框 --> 
  <!-- <a data-toggle="modal" data-target="#myModal"> 开始演示模态框 </a> --> 
  <!-- 模态框（Modal） -->
  <div class="modal fade" id="${c.id}myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
          <h3 class="modal-title" id="myModalLabel" style="text-align:center"> 投诉回复</h3>
        </div>
        <!---------------------------现已实现该功能），----------------------------------------------------------->
        <form action="admin/updateCH.action" method="post" enctype="multipart/form-data">
	        <div class="modal-body">
	         <h4>回复内容:</h4><%-- 投诉ID: ${c.id} --%>
	         <!-- <textarea name="ch.id" class="sr-only" value="%{mo.id}"></textarea> -->
<!-- 	         <textarea name="ch.id"  class="sr-only" value="%{c.id}"></textarea> -->
	          <%-- <s:textfield name="ch.id" value="%{c.id}"/> --%>
	          <%-- <s:textfield name="ch.id" cssStyle="border-width: 1pt;border-style:dashed;border-color:red" value=%{ach.id} readonly="true"/> --%>
	           <textarea name="ch.id" class="sr-only" >${c.id}</textarea> 
	          <textarea name="ch.handling" class="form-control" rows="5" ></textarea>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
	          <button type="submit" class="btn btn-primary"> 提交回复</button>
	        </div>
        
			 
        </form>
        <!---------------------------------------------------------------------------------------------->
      </div>
      <!-- /.modal-content --> 
    </div>
    <!-- /.modal -->
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
    
    <title>SelectCh</title>
    
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
	function changeColor(obj){
		obj.className = "bgcolor";
	}
	function changeColor1(obj){
		obj.className = "";
	}
	</script>
  </head>
  
  <body>
  	<table border="1">
  		<tr>
  			<th width="250px">投诉ID</th>
  			<th width="250px">投诉用户ID</th>
  			<th width="300px">投诉内容</th>
  			<th width="300px">回复内容</th>
  			<th width="300px">回复</th>
  		</tr>
  		<s:iterator var="c" value="allCh">
  		<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
	    	<td><s:property value="#c.id"/></td>
			<td><s:property value="#c.customer_id"/></td>
	    	<td><s:property value="#c.complaint"/></td>
	    	<td><s:property value="#c.handling"/></td>
	    	<td><a href="admin/addhandlingCH.action?chid=<s:property value="#c.id"/>" >回复或修改回复</a></td>
	    </tr>
  		</s:iterator>
  	</table>
  </body>
</html>
 --%>