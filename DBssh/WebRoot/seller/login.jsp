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
    
    <title>Login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	     <!-------------------------------------------------------------->
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
			body{background:  url(./customer/img/4.jpg) no-repeat;background-size: cover;font-size: 16px;}
			.form{background: rgba(255,255,255,0.2);width:400px;height:350px;margin:100px auto;}
			#login_form{display: block;}
			#register_form{display: none;}
			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
		</style>
        <!------------------------------------------------------------------->
	
	<script type="text/javascript">
	function gogo(){
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	}
	</script>

  </head>
  <body>
  <div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3" action="seller/login.action" method="post">
				
				<h3 class="form-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商&nbsp;家&nbsp;登&nbsp;陆</h3><br/>
				
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i>
                        
						<input class="form-control required" type="text" placeholder="Username" name="seller.username" autofocus="autofocus" maxlength="20"/>
					</div>
					<div class="form-group">
							<i class="fa fa-lock fa-lg"></i>
							<input class="form-control required" type="password" placeholder="Password" name="seller.password" maxlength="8"/>
					</div>
					<div class="form-group text-right">
						<hr />
                        <a href="seller/register.jsp">Create an account</a>
						
					</div>
					<div class="form-group">
                    
						<input type="submit" class="btn btn-success pull-left" value="Login " style="width:100px" onclick="gogo()"/>
                        <input type="reset" class="btn btn-info pull-right" value="cancel " style="width:100px" onclick="cancal()"/>   
					</div>
					<div class="form-group">
               			 ${errors.errorMessage[0]}
              		</div>
				</div>
				
			</form>
		</div>
		</div>
		
    <%-- <div id="body">
    <div id="blank"><a href="seller/register.jsp">注册</a></div>
      <div id="title">
        <p id="title" >商家登录界面</p>
      </div>
      <div id="blank"></div>
      <div id="login">
     <s:form action="seller/login.action" method="post">  
     	<table>
     		<tr>
     			<td colspan="2"><img src=""></td>
     		</tr>
     		<tr>
     			<td>用户名：</td>
     			<td><s:textfield name="seller.name" cssClass="textSize"/></td>
     		</tr>
     		<tr>
     			<td>密码：</td>
     			<td><s:password name="seller.password" cssClas="textSize"/></td>
     		</tr>
     		<tr>
     			<td colspan="2">
     				<input type="image" src="seller/images/ok.gif" onclick="gogo()">
     				<input type="image" src="seller/images/cancel.gif" onclick="cancal()">
     			</td>
     		</tr>
     		
     	</table>
     	${errors.errorMessage[0]}
     </s:form>
     </div> 
    </div> --%>
  </body>
</html>
