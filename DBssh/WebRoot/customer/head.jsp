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
    
    <title>Welcome</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="customer/css/init.css" rel="stylesheet" type="text/css" />
	<link href="customer/css/head.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
	function clearValue(){
		document.myForm.mykey.value = "";
	}
	</script>
	
	
	<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="customer/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="customer/jquery/jquery-3.1.1.js" ></script>
<script type="text/javascript" src="customer/js/bootstrap.min.js" ></script>
<style type="text/css">
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
  <nav class="navbar navbar-default">
  <div class="container"> 
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top:10px">
      <div class="row">
        <ul class="nav navbar-nav col-md-3 col-sm-3 col-xs-3">
          <li ><a href="index/customer_index.action" class="input-lg"><strong><span class="glyphicon glyphicon-home" aria-hidden="true"></span> 首页</strong> <span class="sr-only">(current)</span></a></li>
          <li><a href="cart/cart_select.action" class="input-lg"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 购物车</a></li>
        </ul>
        <form action="index/customer_search.action"  name="myForm" method="post" class="navbar-form navbar-left col-md-4 col-sm-4 col-xs-4">
          <div class="input-group"> 
            <input type="text" name="mykey" class="form-control " onfocus="clearValue()" placeholder="搜索商家,美食..." aria-describedby="basic-addon1" style="width:250px">
            <span class="input-group-btn">
        		<button class="btn btn-default" type="submit">搜索</button>
      		</span>
          </div>
        </form>

        <ul class="nav navbar-nav navbar-right col-md-5 col-sm-5 col-xs-5">
        
        
        <s:if test="#session.customer!=null"><li class="input-lg">欢迎,<s:property value="#session.customer"/>!</s:if> </li>
	    <s:if test="#session.customer==null"><li><a href="customer/login.jsp" class="input-lg"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> 登陆</a></li></s:if>
		<li><a href="customer/register.jsp" class="input-lg"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span> 注册</a></li>
        <li><a href="customer/customer_userCenter" class="input-lg"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 用户中心</a></li>
        <s:if test="#session.customer!=null">
         <li><a href="customer/customer_userLoginout.action" class="input-lg"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> 退出</a></li>
	    </s:if>
        
          <!--<li><a href="#" class="input-lg"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> 登陆</a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span> 注册</a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 用户中心</a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> 退出</a></li>-->
        </ul>
      </div>
      <!--/.row--> 
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<%--   <nav class="navbar navbar-default">
  <div class="container"> 
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top:10px">
      <div class="row">
        <ul class="nav navbar-nav col-md-3">
          <li ><a href="#" class="input-lg"><strong><span class="glyphicon glyphicon-home" aria-hidden="true"></span> 首页</strong> <span class="sr-only">(current)</span></a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 购物车</a></li>
        </ul>
        <form class="navbar-form navbar-left col-md-4">
          <div class="input-group"> 
            <input type="text" class="form-control " placeholder="搜索商家,美食..." aria-describedby="basic-addon1" style="width:250px">
            <span class="input-group-btn">
        		<button class="btn btn-default" type="button">搜索</button>
      		</span>
          </div>
        </form>
        <ul class="nav navbar-nav navbar-right col-md-5">
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> 登陆</a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span> 注册</a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 用户中心</a></li>
          <li><a href="#" class="input-lg"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> 退出</a></li>
        </ul>
      </div>
      <!--/.row--> 
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav> --%>
  <%--   <div class="all_zong">
    	<div class="all_zong_top">
	    	<div class="all_zong_top_right a8c">
	    		<table border="0" cellspacing="0" cellpadding="0" class="main_login">
	    			<tr>
	    				<td>
	    					<p style="margin-left: 5px;margin-right: 5px; color:#8c8c8c;">
	    						<s:if test="#session.customer!=null">欢迎,<s:property value="#session.customer"/>!</s:if>
	    						<s:if test="#session.customer==null"><a href="customer/login.jsp">登陆</a></s:if>
	    					</p>
	    				</td>
	    				<td>
	    					<p style="margin-left: 5px;margin-right: 5px;">
	    						<a href="customer/register.jsp">注册</a>
	    					</p>
	    				</td>
	    				<td>
	    					<span class="xx">|</span><a href="customer/customer_userCenter">用户中心</a><span>|</span>
	    				</td>
	    				<s:if test="#session.customer!=null">
	    				<td>
	    				<a href="customer/customer_userLoginout.action">退出</a><span>|</span>
	    				</td>
	    				</s:if>
	    			</tr>
	    		</table>
	    	</div>
    	</div>
    
	    <div class="all_zong_logo">
	    	<div class="back_search">
	    		<div class="back_search_red">
	    			<form action="index/customer_search.action" name="myForm" method="post">
	    				<div class="div2">
	    					<input type="text" name="mykey" class="txt" value="Searach!" onfocus="clearValue()"/>
	    				</div>
	    				<div class="div1">
	    					<input type="submit" class="an" value="搜索"/>
	    				</div>
	    			</form>
	    		</div>
	    	</div>
	    </div>
	    <div class="skin_a">
	    	<div class="front_daohangbj">
	 				<div class="front_daohang">
	 					<ul>
	 						<li class="backbj">
	 							<a href="index/customer_index.action">首页</a>
	 							</li>
	 						<li class="buy">
	 							<a href="cart/cart_select.action">购物车</a>
	 						</li>
	 					</ul>
	 				</div>  	
	    	</div>
	    </div>
    </div> --%>
  </body>
</html>
