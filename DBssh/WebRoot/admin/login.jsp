<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<!-- <link href="admin/css/init.css" rel="stylesheet" type="text/css" />
<link href="admin/css/style.css" rel="stylesheet" type="text/css" /> -->
<script type="text/javascript">
	function gogo(){
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	}
	
	</script>
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
<script type="text/javascript" src="customer/js/jquery.validate.min.js" ></script>
<style type="text/css">
			body{background:  url(./customer/img/4.jpg) no-repeat;background-size: cover;font-size: 16px;}
			.form{background: rgba(255,255,255,0.2);width:400px;height:330px;margin:100px auto;}
			#login_form{display: block;}
			#register_form{display: none;}
			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
		</style>
</head>

<body>
<div class="container">
    <div class="form row">
      <form action="admin/login.action" method="post" class="form-horizontal col-sm-offset-3 col-md-offset-3">
        <div class="col-md-9">
        <h3 class="form-title" id="title">管理员登录界面</h3><hr />
        </div>
        <div class="col-sm-9 col-md-9">
        <div class="form-group"> <i class="fa fa-user fa-lg"></i>
          <input class="form-control required" type="text" placeholder="用户名" name="admin.username" autofocus="autofocus" maxlength="20"/>
        </div>
        <div class="form-group">
			<i class="fa fa-lock fa-lg"></i>
			<input class="form-control required" type="password" placeholder="密码：" name="admin.password" maxlength="12"/>
		</div><br/>
        <div class="form-group">
			<input type="submit" class="btn btn-success pull-left"  value="登陆" onclick="gogo()" style="width:80px"/> 
            <input type="reset" class="btn btn-danger pull-right" value="取消" onclick="cancel()" style="width:80px"/>  
		</div>
		<div class="form-group">
		${errors.errorMessage[0]} 
		</div>
        </div><!--col-sm-9 co-md-9-->
      </form>
    </div>
    <!--row--> 
    </div>
</body>
</html>

<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
	<link href="admin/css/init.css" rel="stylesheet" type="text/css" />
	<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
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
   <div id="body">
   <div id="blank"></div>
   <div id="title">管理员登录界面</div>
   <div id="blank"></div>
   <div id="login">
   <s:form action="admin/login.action" method="post">
   	<table>
   		<tr>
   			<td colspan="2"><img src=""></td>
   		</tr>
   		<tr>
   			<td>用户名：</td>
   			<td><s:textfield name="admin.name" cssClass="textSize"/></td>
   		</tr>
   		<tr>
   			<td>密码：</td>
   			<td><s:password name="admin.password" cssClas="textSize"/></td>
   		</tr>
   		<tr>
   			<td colspan="2">
   				<input type="image" src="admin/images/ok.gif" onclick="gogo()">
   				<input type="image" src="admin/images/cancel.gif" onclick="cancal()">
   			</td>
   		</tr>
   	</table>
   </s:form>
   ${errors.errorMessage[0]}
   </div>
	</div>
  </body>
</html>
 --%>