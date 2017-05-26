<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Register</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <!----------------------------------------------------------------->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<!--用百度的静态资源库的cdn安装bootstrap环境-->
		<!-- Bootstrap 核心 CSS 文件 -->
		<link href="seller/css/bootstrap.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="seller/jquery/jquery-3.1.1.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="seller/js/bootstrap.min.js"></script>
		<!--jquery.validate-->
		<script type="text/javascript" src="seller/js/jquery.validate.min.js" ></script>
	
		<style type="text/css">
			body{background: url(./customer/img/4.jpg) no-repeat;background-size: cover;font-size: 16px;}
			.form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}

			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
		</style>
         <!----------------------------------------------------------------->
	
	<script type="text/javascript">
	function refreshCode(){
       document.getElementById("code").src = "seller/checkCodeImg.jsp?t="+Math.random();
    }
	//表单验证
	function checkForm(){
		var bpwd = document.registerForm.password.value;
		var rebpwd = document.registerForm.repassword.value;
		if(bpwd != rebpwd){
			alert("两次密码不一致！");
			return false;
		}
		document.registerForm.submit();
		return true;
	}
	</script>
  </head>
  
  <body>
  <div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3"  action="seller/register.action" method="post" name="registerForm">
				<div class="center-block"><h3 class="form-title">商家注册</h3></div>
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<i></i>
						<input class="form-control required" type="text" placeholder="昵称（请随意）" name="nickname" autofocus="autofocus"/>
					</div>
                    <div class="form-group">
						<i></i>
						<input class="form-control required" type="text" name="name" placeholder="账号（请确认你的账号唯一）"autofocus="autofocus"/>&nbsp;${requestScope.nameNo}
					</div>
					<div class="form-group">
							<i></i>
							<input class="form-control required" type="password" name="password" placeholder="密码" />
					</div>
                    <div class="form-group">
							<i></i>
							<input class="form-control required" type="password" name="repassword" placeholder="重复密码" />
					</div>
					<div class="form-group">
							<i ></i>
							<input class="form-control required" type="text" placeholder="验证码：" name="code"  maxlength="8"/>
					</div>
					<div class="form-group">
						<img id="code" src="customer/checkCodeImg.jsp"/>
                        <a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>	
					</div>${requestScope.codeError}
					<div class="form-group">
						<input type="submit" class="btn btn-info "  onclick="checkForm()" value="注册账号 "/>
					</div>
				</div>
			</form>
		</div>
		</div>
    <div>
		<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%" valign="bottom">
						<h2>商家注册</h2>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<div>
				<div>
					<form action="seller/register.action" method="post" name="registerForm">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="16%" align="right">
									<span>*</span>昵称：
								</td>
								<td width="59%">
									<input type="text" name="nickname" />
								</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（请随意。）
								</td>
							</tr>
							<tr>
								<td width="16%" align="right">
									<span>*</span>账号：
								</td>
								<td width="59%">
									<input type="text" name="name" />
								</td>
								<td width="25%">
									${requestScope.nameNo}
								</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（请确认你的账号是唯一的。）
								</td>
							</tr>
							<tr>
								<td align="right">
									<span>*</span>密码：
								</td>
								<td>
									<input type="password" name="password"/>
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（为了您帐户的安全，建议使用字符+数字等多种不同类型的组合，且长度大于5位。）
								</td>
							</tr>
							<tr>
								<td align="right">
									<span>*</span>重复密码：
								</td>
								<td>
									<input type="password" name="repassword" />
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（确保您记住密码。）
								</td>
							</tr>				
							<tr>
								<td align="right">
									<span>*</span>验证码：
								</td>
								<td>
									<input type="text" name="code"/>
									<img id="code" src="customer/checkCodeImg.jsp" /> 
									<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
								</td>
								<td>${requestScope.codeError}</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;"></td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td height="50">
									<input type="button" name="button" onclick="checkForm()" value="注册账号" />
								</td>
								<td>&nbsp;</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
 --%>
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Register</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <!----------------------------------------------------------------->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<!--用百度的静态资源库的cdn安装bootstrap环境-->
		<!-- Bootstrap 核心 CSS 文件 -->
		<link href="seller/css/bootstrap.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="seller/jquery/jquery-3.1.1.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="seller/js/bootstrap.min.js"></script>
		<!--jquery.validate-->
		<script type="text/javascript" src="seller/js/jquery.validate.min.js" ></script>
	
		<style type="text/css">
			body{background: url(./customer/img/4.jpg) no-repeat;background-size: cover;font-size: 16px;}
			.form{background: rgba(255,255,255,0.2);}

			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
		</style>
         <!----------------------------------------------------------------->
	
	<script type="text/javascript">
	function refreshCode(){
       document.getElementById("code").src = "seller/checkCodeImg.jsp?t="+Math.random();
    }
	//表单验证
	function checkForm(){
		var bpwd = document.registerForm.password.value;
		var rebpwd = document.registerForm.repassword.value;
		if(bpwd != rebpwd){
			alert("两次密码不一致！");
			return false;
		}
		document.registerForm.submit();
		return true;
	}
	</script>
  </head>
  
  <body>
 <div class="container">
    <div style="background: rgba(255,255,255,0.2);height:100%">
    <form class="form-horizontal col-sm-offset-3 col-md-offset-3" action="seller/register.action" method="post" name="registerForm">

						<div class="form-group"></div>
                        <div class="form-group"></div>
                        <div class="form-group"></div>
                        <div class="form-group">
                        <div class="col-md-3 col-md-offset-3"><h2 class="form-title">商家注册</h2></div>
                        </div>
                        <div class="form-group">
                        <div class="col-md-2" style="text-align:right">
							<span>*</span>昵称:
                        </div>
                        <div class="col-md-5">
						<input class="form-control required" type="text" placeholder="请随意" name="nickname" autofocus="autofocus"/>
                        </div>
						</div>
                        <div class="form-group">
                        <div class="col-md-2" style="text-align:right">
							<span>*</span>账号:
                        </div>
                        <div class="col-md-5">
						<input class="form-control required" type="text" placeholder="请确认你的账号是唯一的。" name="name" autofocus="autofocus"/>
                        </div>
                        <div class="col-md-3">
                        ${requestScope.nameNo}
                        </div>
                        </div>
                        <div class="form-group">
                        <div class="col-md-2" style="text-align:right">
							<span>*</span>密码:
                        </div>
                        <div class="col-md-5">
						<input class="form-control required" type="password" placeholder="建议使用种不同类型的组合，且长度大于5位的" name="password" autofocus="autofocus"/>
                        </div>
                        </div>
                         <div class="form-group">
                        <div class="col-md-2" style="text-align:right">
							<span>*</span>重复密码:
                        </div>
                        <div class="col-md-5">
						<input class="form-control required" type="password" placeholder="确保您记住密码" name="repassword" autofocus="autofocus"/>
                        </div>
                        </div>
                        <div class="form-group">
                        <div class="col-md-2" style="text-align:right">
							<span>*</span>验证码:
                        </div>
                        <div class="col-md-2">
						<input class="form-control required" type="text" name="code" autofocus="autofocus"/>
                        </div>
                        <div class="col-md-4">
                        <img id="code" src="customer/checkCodeImg.jsp" /> 
						<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
                        </div>
                        <div class="col-md-3">
                        ${requestScope.codeError}
                        </div>
                        </div>
                        <div class="form-group">
                        <div class="col-md-3 col-md-offset-2">
						<input type="button" class="btn btn-info "  onclick="checkForm()" value="注册账号 "/>
                        </div>
						</div>
					</form>
	</div>
</div> 
<%--     <div class="container">
    <form class="form-horizontal col-sm-offset-3 col-md-offset-3" action="seller/register.action" method="post" name="registerForm">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%" valign="bottom">
						<h2>商家注册</h2>
					</td>
				</tr>
			</table>
					
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="16%" align="right">
									<span>*</span>昵称：
								</td>
								<td width="59%">
									<input type="text" name="nickname" />
								</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（请随意。）
								</td>
							</tr>
							<tr>
								<td width="16%" align="right">
									<span>*</span>账号：
								</td>
								<td width="59%">
									<input type="text" name="name" />
								</td>
								<td width="25%">
									${requestScope.nameNo}
								</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（请确认你的账号是唯一的。）
								</td>
							</tr>
							<tr>
								<td align="right">
									<span>*</span>密码：
								</td>
								<td>
									<input type="password" name="password"/>
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（为了您帐户的安全，建议使用字符+数字等多种不同类型的组合，且长度大于5位。）
								</td>
							</tr>
							<tr>
								<td align="right">
									<span>*</span>重复密码：
								</td>
								<td>
									<input type="password" name="repassword" />
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									（确保您记住密码。）
								</td>
							</tr>				
							<tr>
								<td align="right">
									<span>*</span>验证码l：
								</td>
								<td>
									<input type="text" name="code"/>
									<img id="code" src="customer/checkCodeImg.jsp" /> 
									<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
								</td>
								<td>${requestScope.codeError}</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;"></td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td height="50">
									<input type="button" name="button" onclick="checkForm()" value="注册账号" />
								</td>
								<td>&nbsp;</td>
							</tr>
						</table>
					</form>
</div> --%>
  </body>
</html>
 