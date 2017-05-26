<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Login</title>
    
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
		document.loginform.submit();
	}
	//取消按钮
	function cancel(){
		document.loginform.action="";
	}
	function refreshCode(){
       document.getElementById("code").src = "customer/checkCodeImg.jsp?t="+Math.random();
    }
	</script>
    
    	<meta charset="utf-8" />
		
		<!--用百度的静态资源库的cdn安装bootstrap环境-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap 核心 CSS 文件 -->
		<link href="customer/css/bootstrap.min.css" rel="stylesheet">
		<!--font-awesome 核心我CSS 文件-->
		<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="customer/jquery/jquery-3.1.1.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="customer/js/bootstrap.min.js"></script>
		<!--jquery.validate-->
		<script type="text/javascript" src="js/jquery.validate.min.js" ></script>
		<script type="text/javascript" src="js/message.js" ></script>
		<style type="text/css">
			body{background: url(./customer/img/bg2png.png) no-repeat;background-size: cover;font-size: 16px;}
			.form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}
			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
			
			
			.navbar {
	background:#f6a303;
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
        
    
        
  </head>
  
  <body>
 <!--  	<div id="body">
	   	<div id="blank"></div>
	   	<div id="login">
	  	<s:form action="customer/customer_userLogin.action" method="post" name = "loginform">
		<table>
			<tr>
				<td>账号：</td>
				<td><s:textfield name="name" cssClass="textSize"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><s:password name="password" cssClass="textSize"/></td>
			</tr>		
			<tr>
				<td>验证码：</td>
				<td><s:textfield name="code" cssClass="textSize"/></td>
			</tr>		
			<tr>
				<td>
					<img id="code" src="customer/checkCodeImg.jsp"/>
				</td>
				<td class="ared">
					<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
				</td>
			</tr>		
			<tr>
				<td colspan="2">
					<input type="image" src="./customer/images/ok.gif" onclick="gogo()"  >
					<input type="image" src="./customer/images/cancel.gif" onclick="cancel()">
				</td>
			</tr>
		</table>
		</s:form>
		</div>-->

	  	
        <div class="container">
		<div class="form row">
			<form action="customer/customer_userLogin.action" method="post" class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form">
				<h3 class="form-title">账户密码登录</h3>
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i>
						<input class="form-control required" type="text" placeholder="用户名" name="name" autofocus="autofocus" maxlength="20"/>
					</div>
					<div class="form-group">
							<i class="fa fa-lock fa-lg"></i>
							<input class="form-control required" type="password" placeholder="密码：" name="password" maxlength="8"/>
					</div>
                    <div class="form-group">
							<i ></i>
							<input class="form-control required" type="text" placeholder="验证码：" name="code" maxlength="8"/>
					</div>
					<div class="form-group">
						<img id="code" src="customer/checkCodeImg.jsp"/>
                        <a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>	
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-left"  value="登陆" onclick="gogo()" style="width:80px"/> 
                        <input type="submit" class="btn btn-danger pull-right" value="取消" onclick="cancel()" style="width:80px"/>  
					</div>
				</div>
			</form>
		</div>
		</div>
		
		<div id="loginmessage">
		<!-- 验证码输入错误 -->
		${requestScope.codeError }
		</div>
	</div>
  </body>
</html>
