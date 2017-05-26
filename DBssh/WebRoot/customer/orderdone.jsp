<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>OrderDone</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="customer/css/init.css" rel="stylesheet" type="text/css" />
	<link href="customer/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		//确定按钮
		function gogo(){
			document.payForm.submit();
		}
	</script>
	
	<!-- **************************** -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="customer/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="customer/jquery/jquery-3.1.1.js" ></script>
<script type="text/javascript" src="customer/js/bootstrap.min.js" ></script>

<style type="text/css">
.navbar {
	background:#FF9933;
	height:80px
}
.navbar-default .navbar-nav > li > a {
	color: #ecf0f1;
}
.navbar-default .navbar-nav > .active > a {
	color: #ecdbff;
	background-color: #8e44ad;
}
.navbar-default .navbar-nav > .open > a {
	color: #ecdbff;
	background-color: #8e44ad;
}
</style>
	<!-- **************************** -->
	
  </head>
  
  <body style="background-color:#F9F9F9">
  <div class="container">
  <ol class="breadcrumb">
  <li><a href="#">首页</a></li>
  <li class="active">选择在线支付方式</li>
</ol>
<div class="panel panel-default" style="border-top-color:#FF8000;border-top-width:5px;">
    <div class="panel-body">
      <span>订单号：<span class="text-primary">${ordersn}</span></span><br/>
      <span>配送：张三 / 19913323325 / 上海 上海市 松江区 文汇路300弄</span>
    </div>
</div>
<form action="cart/cart_pay.action" method="post" name="myForm">
<table class="table" >
  <caption><h3>选择支付方式</h3></caption>
  <tbody>
    <tr>
      <td style="background:#ECECEC"><h5>支付平台<br/><br/><small>手机等大额支付推荐使用支付宝快捷支付<br/><br/></small></h5></td>
      
      <td ><input type="hidden" name="ordersn" value="${ordersn}"/>
      <input width="150" height="60" type="image" src="customer/img/caifutong.jpg" onclick="gogo()"/></td>
      <td ><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150" height="60" type="image" src="customer/img/alipay.jpg" onclick="gogo()"></td>
      
    </tr>
   <tr>
      <td style="background:#ECECEC" rowspan="2"><h5>信用卡快捷支付<br/><br/><small>无需网银快捷支付<br/><br/><br/><br/><br/><br/></small></h5></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/China_post.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/Chinese_bank.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/jianshe_bank.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/pingan_bank.jpg" onclick="gogo()"></td>
    </tr>
    <tr>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/shanghai.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/ICBC.jpg" onclick="gogo()"></td>
    </tr>
     <tr>
      <td style="background:#ECECEC" rowspan="3"><h5>银行网银<br/><br/><small>支持以下银行及借记卡</small></h5></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/nongye_bank.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/zhangshang_bank.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/zhongxin.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/shanghai.jpg" onclick="gogo()"></td>
    </tr>
    <tr>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/pufa_bank.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/Chinese_bank.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/ICBC.jpg" onclick="gogo()"></td>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/pingan_bank.jpg" onclick="gogo()"></td>
    </tr>
    <tr>
      <td><%-- <input type="hidden" name="ordersn" value="${ordersn}"/> --%>
      <input width="150"height="60" type="image" src="customer/img/jianshe_bank.jpg" onclick="gogo()"></td>
      

    </tr>
  </tbody>
</table>
</form>
</div><!--!container-->
    <%-- <div id="body">
    <div id="title">
    		<h2 style="text-align:center;height: 30px;line-height:30px;">感谢您在本站购物！您的订单已提交成功，请记住您的订单号：<font style="color:red" size="5">${ordersn}</font></h2><br/>
    	</div>
    	<div id="paydone">
    		<form action="cart/cart_pay.action" method="post" name="myForm">
    			<input type="hidden" name="ordersn" value="${ordersn}"/>
    			<input type="image" src="customer/images/Chinapay_logo.jpg" onclick="gogo()">
    		</form>
    	</div>
    </div> --%>
  </body>
</html>
