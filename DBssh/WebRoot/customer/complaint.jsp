<!--注意，暂时未实现此功能，此页暂不使用  -->
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
    
    <title>Complaint</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- **************************** -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="customer/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="customer/jquery/jquery-3.1.1.js" ></script>
<script type="text/javascript" src="customer/js/bootstrap.min.js" ></script>


</style>
	<!-- **************************** -->
  </head>
  
  <body>
    <s:form action="customer/customer_addCh.action" method="post" enctype="multipart/form-data">
    <table border="0" style="border-collapse: collapse">
    	<caption>
    		<font size=4 face=微软雅黑>投诉</font>
    	</caption>
    	<tr>
    		<td>投诉 ID<font color="red">*</font></td>
    		<td><s:textfield name="ch.id" cssStyle="border-width: 1pt;border-style:dashed;border-color:red" value="%{@dao.BaseDao@getStringID()}" readonly="true"/></td>
    	</tr>
    	<tr>
    		<td>用户 ID<font color="red">*</font></td>
    		<td><s:textfield name="ch.customer_id" value="%{ch.customer_id}"/></td>
    	</tr>
    	<tr>
    		<td>投诉内容<font color="red">*</font></td>
    		<td><s:textarea name="ch.complaint" rows="10" cols="30" value="%{ch. }"/></td>
    	</tr>
    	<tr>
    		<td align="center"><s:submit value="提交"/></td>
    		<td align="left"><s:reset value="重置"/></td>
    	</tr>
    </table>
    <s:fielderror/>
    </s:form>
      <h2>创建模态框（Modal）</h2>
  <!-- 按钮触发模态框 --> 
  <a data-toggle="modal" data-target="#myModal"> 开始演示模态框 </a> 
  <!-- 模态框（Modal） -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
          <h3 class="modal-title" id="myModalLabel" style="text-align:center"> 订单投诉 </h3>
        </div>
        <!-------------------------------------------------------------------------------------->
        <s:form action="customer/customer_addCh.action" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <h4>投诉内容:</h4>
          <s:textarea name="ch.complaint"  class="form-control" rows="5" cols="80" value="%{ch. }"/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
          <button type="submit" class="btn btn-primary"> 提交投诉 </button>
        </div>
        
			 
        </s:form>
        <!---------------------------------------------------------------------------------------------->
      </div>
      <!-- /.modal-content --> 
    </div>
    <!-- /.modal --> 
  </div>
  </body>
</html>
