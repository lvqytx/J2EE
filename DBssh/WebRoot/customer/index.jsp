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
    
    <title>index</title>
    
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


<!-- ********************************************** -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="customer/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="customer/jquery/jquery-3.1.1.js" ></script>
<script type="text/javascript" src="customer/js/bootstrap.min.js" ></script>
<style type="text/css">
	.add{
		color:#001500;
		
	}
	
}
</style>

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
<!-- ********************************************** -->
  </head>

  <body style="background-color:#EAEAEA">
  <div class="container">
    <div>
    	<sapn class="text-muted">当前位置:</span>
        <a href="#" class="add">上海市松江区人民北路</a>&nbsp;
        <a href="./customer/Map.html">[ 查看位置 ]</a>
    </div><br/>
    
    <nav class="navbar navbar-default" style="background-color:#FFF">
  <div class="container-fluid">
   <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand text-muted" href="#">商家排行：</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      <s:iterator var="sl" value="sellerlist" status="status">
    		<li>
    			<a href="index/customer_searchseller.action?mykey=<s:property value="#sl.id"/>">
    				<strong class="text-primary"><s:property value="#sl.nickname"/></strong> <span class="sr-only">(current)</span>
    			</a>
    		</li>
    </s:iterator>
        <li ><a href="#" ><strong class="text-primary">一碗面</strong> <span class="sr-only">(current)</span></a></li> 
        <li><a href="#" ><strong class="text-primary">两碗面</strong> <span class="sr-only">(current)</span></a></li> 
        <li><a href="#" ><strong class="text-primary">三碗面</strong> <span class="sr-only">(current)</span></a></li> 
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

    
<div class="row">
<s:iterator var="sl" value="salelist" status="status">
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
	<a href="index/customer_detail.action?pno=<s:property value="#sl.id"/>">
    	<img  border="0"  alt="食物图" style="height:200px;width:330px" src="uploadFiles/<s:property value="#sl.picture_dir"/>">
    </a><br/>
      <div class="caption">
        <h3><a href="index/customer_detail.action?pno=<s:property value="#sl.id"/>">
    				<s:property value="#sl.nickname"/>
    			</a>
        </h3>
        <p><div>评分： 
        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
        <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span></div>
        <div>售价:<font>¥<s:property value="#sl.price"/>元</font><br></div>
        <div>月售：3000份</div>
        <div>配送费：5元</div>
        <div>地址：一个地名</div></p>
      </div>
    </div>
  </div>
  </s:iterator>
</div>

    </div>
  <%-- <div id="body">
  	<div id="blank"></div>
    <div id="left">
    	<div id="title2">销售商品排行榜</div>
    <s:iterator var="sl" value="salelist" status="status">
    	<ul>
    		<li>
    			<a href="index/customer_detail.action?pno=<s:property value="#sl.id"/>">
    				<img width="20" height="20" border="0" src="uploadFiles/<s:property value="#sl.picture"/>">
    			</a>
    		</li>
    		<li>
    			<a href="index/customer_detail.action?pno=<s:property value="#sl.id"/>">
    				<s:property value="#sl.nickname"/>
    			</a>
    		<br>
    		售价:<font>¥<s:property value="#sl.price"/>元</font><br>
    		</li>
    	</ul>
    </s:iterator>
    </div>
    <s:debug/>
    <div id="right">
    	<div id="title2">销售商家排行榜</div>
    <s:iterator var="sl" value="sellerlist" status="status">
    	<ul>
    		<li>
    			<a href="index/customer_searchseller.action?sid=<s:property value="#sl.id"/>">
    				<s:property value="#sl.nickname"/>
    			</a>
    		</li>
    	</ul>
    </s:iterator>
    </div>
    </div> --%>
  </body>
</html>
