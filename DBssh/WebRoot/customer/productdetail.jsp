<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ProductDetail</title>
    
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
	<!----------------------------  ----->
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

	button a:link{color:#FEFEFE}
	button a:hover{text-decoration:none}
</style>

	<!-------------------------------  -->
	<script type="text/javascript">
	function goCart() {
		document.putcartform.submit();
	}
	function judge(){
		
		var i= document.getElementById('comlpaint').value;
		alert(i);
	}
	</script>
  </head>
  
  <body style="background-color:#EAEAEA" onload="goPage(1,3);">
  <div class="container" style="background:#F7F7F7;height:600px">
  <div class="media">
    <div class="media-left">
      <img style="width: 330px; height: 330px;" class="media-object" src="uploadFiles/<s:property value="aproduct.picture"/>">
     </div><!--media-left-->
    <div class="media-body jumbotron" style="padding-left:30px;padding-top:50px;">
     
    <form action="cart/cart_put.action" name="putcartform" style="background:#DDD">
     
      <div>
      <div id="picture" class="sr-only" >
          <div>
            <input type="hidden" name="product_id" value="<s:property value="aproduct.id"/>" /> 
             </div>
        </div><!-- picture -->
        <div id="picturedetail">
       <h2 class="media-heading"><s:property value="aproduct.nickname"/></h2><br/>
      价格：￥<s:property value="aproduct.price"/><br/><br/>
      购买数量：
      <input type="text" name="mknum" style="width:30px" value="1" />
                （库存
                <s:property value="aproduct.number"/>
                件）
      <br/><br/>
      <button class="btn btn-primary" onClick="goCart()"><span class="glyphicon glyphicon-shopping-cart aria-hidden="true"></span> 加入购物车</button> 
      </div><!-- picturedetail -->
      </div><!-- jumbotron -->
      </form>
      
      
    </div>
  </div>
  <!-- 测试  通过-->
  <div style="width=100%; height:220px">
        <table class="table table-responsive">
          <caption style="border-top:#F60 thick solid;background:#DDD">
          <span id="userAssess"></span>&nbsp;&nbsp;&nbsp;<a href="#" data-toggle="modal" data-target="#myModal">评价商品</a>
          <br/>
       
          </caption>
          <tbody id="adminTbody">
          <s:iterator value="commentlist" var="cl">
            <tr style="background:#F0F0F0">
              <div class="row">
                <td class="col-md-8"><h5><s:property value="#cl.message"/></h5></td>
                <td class="col-md-4"><h5><small style="text-align:right">用户ID:&nbsp;<s:property value="#cl.id.customer.id"/> </small></h5></td>
              </div>
              <!--row--> 
            </tr>
            </s:iterator>
          </tbody>
        </table>
      </div>
      <!--table-->
      
      <div id="barcon" style="text-align:right">
        <div id="barcon2" > <span id="barcon1" ></span> <a href="javascript:void(0);" id="firstPage">首页</a> <a href="javascript:void(0);" id="prePage">上一页</a> <a href="javascript:void(0);" id="nextPage">下一页</a> <a href="javascript:void(0);" id="lastPage">尾页</a>
          <select id="jumpWhere">
          </select>
          <a href="javascript:void(0);" id="jumpPage" onclick="jumpPage()">跳转</a> </div>
      </div>
  <!-- 测试 通过-->
  <!-- 模态框（Modal） -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
          <h3 class="modal-title" id="myModalLabel" style="text-align:center"> 商品评价 </h3>
        </div>
        <div id="addcomment"></div>
        <div id="loginmessage">${requestScope.Error }</div>
        <form action="index/customer_addcomment.action" method="post">
          <div class="modal-body">
            <h4>评价内容:</h4>
            <textarea name="pno" value="%{aproduct.id}" class="sr-only" ></textarea>
            
            <textarea name="message" id="complaint" class="form-control" style="width:100%" rows="5" value="%"></textarea>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
            <button type="submit" class="btn btn-primary"> 提交评价 </button>
          </div>
        </form>
       
      <!-- </div> -->
    </div>
        
        <!----------------------------------------------------------------------------------------------> 
      </div>
      <!-- /.modal-content --> 
    </div>
    <!-- /.modal --> 
    
  </div>
</div>
<!--!container--> 

<script>  
/** 
 * 分页函数 
 * pno--页数 
 * psize--每页显示记录数 
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数 
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能 
**/  
  
var pageSize=0;//每页显示行数  
var currentPage_=1;//当前页全局变量，用于跳转时判断是否在相同页，在就不跳，否则跳转。  
function goPage(pno,psize){  
    var itable = document.getElementById("adminTbody");  
    var num = itable.rows.length;//表格所有行数(所有记录数)  
  
    pageSize = psize;//每页显示行数  
    //总共分几页   
    if(num/pageSize > parseInt(num/pageSize)){     
            totalPage=parseInt(num/pageSize)+1;     
       }else{     
           totalPage=parseInt(num/pageSize);     
       }     
    var currentPage = pno;//当前页数  
    currentPage_=currentPage;  
    var startRow = (currentPage - 1) * pageSize+1;   
    var endRow = currentPage * pageSize;  
        endRow = (endRow > num)? num : endRow;      
       //遍历显示数据实现分页  
    for(var i=1;i<(num+1);i++){      
        var irow = itable.rows[i-1];  
        if(i>=startRow && i<=endRow){  
            irow.style.display = "";      
        }else{  
            irow.style.display = "none";  
        }  
    }  
    var tempStr = "共"+totalPage+"页 当前第"+currentPage+"页";  
     document.getElementById("barcon1").innerHTML = tempStr;  
   tempStr= "用户评价( "+num+" )";
	document.getElementById("userAssess").innerHTML=tempStr;
    if(currentPage>1){  
        $("#firstPage").on("click",function(){  
            goPage(1,psize);  
        }).removeClass("ban");  
        $("#prePage").on("click",function(){  
            goPage(currentPage-1,psize);  
        }).removeClass("ban");     
    }else{  
        $("#firstPage").off("click").addClass("ban");  
        $("#prePage").off("click").addClass("ban");    
    }  
  
    if(currentPage<totalPage){  
        $("#nextPage").on("click",function(){  
            goPage(currentPage+1,psize);  
        }).removeClass("ban")  
        $("#lastPage").on("click",function(){  
            goPage(totalPage,psize);  
        }).removeClass("ban")  
    }else{  
        $("#nextPage").off("click").addClass("ban");  
        $("#lastPage").off("click").addClass("ban");  
    }     
    var tempOption="";  
    for(var i=1;i<=totalPage;i++)  
    {  
        tempOption+='<option value='+i+'>'+i+'</option>'  
    }  
    $("#jumpWhere").html(tempOption);  
    $("#jumpWhere").val(currentPage);  
}  
  
  
function jumpPage()  
{  
    var num=parseInt($("#jumpWhere").val());  
    console.log(pageSize);  
    if(num!=currentPage_)  
    {  
        goPage(num,pageSize);  
    }  
}  
  
</script>
  	<%-- <div id="body">
  		<div id="blank"> </div>
  		<form action="cart/cart_put.action" name="putcartform" >
		    <div id="picture">
		    	<div>
		    		<input type="hidden" name="product_id" value="<s:property value="aproduct.id"/>" />
		    		<img src="uploadFiles/<s:property value="aproduct.picture"/>" width="230px" height="230px" />
		    	</div>
		    </div>
		    <div id="picturedetail">
			    <div>
			    	<div><s:property value="aproduct.nickname"/></div>
			    </div>
			    <div>
			    	<ul>
			    		<li>
			    			<span>价格：</span><strong><s:property value="aproduct.price"/>元</strong>
			    		</li>
			    		<li>
			    			<span>购买数量：</span><input type="text" name="mknum" value="1" />（库存<s:property value="aproduct.amount"/>件）
			    		</li>
			    	</ul>
			    </div>
			    <p>
			    	<img src="customer/images/bnt_cat.gif" style="cursor:pointer" onclick="goCart()">
			    </p>
			</div>
		</form>
			<div id="comment">
				<table border="2" bordercolor="gray">
				<caption><font style="font-size: 20px; font-family: Arial, Helvetica, sans-serif;">用户评论</font></caption>
					<tr>
						<th width="150px">用户ID</th>
						<th width="550px">评论内容</th>
					</tr>
					<s:iterator value="commentlist" var="cl">
					<tr>
						<td>
						<s:property value="#cl.customer_id"/>
						</td>
						<td>
						<s:property value="#cl.message"/>
						</td>
					</tr>
					</s:iterator>
				</table>
			</div>
			<div id="addcomment">
				<div id="loginmessage">${requestScope.Error }</div>
				<form action="index/customer_addcomment.action" method="post">
					<table>
						<tr>
							<th width="700px" colspan="2" >评论</th>
							
						</tr>
						<tr>
							<td>商品ID</td>
							<td><s:textfield name="pno" value="%{aproduct.id}" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea name="message" id="complaint" ></textarea>
							</td>
						</tr>
						<tr>
							
							<td colspan="2">
				
								<input type="submit"  value="评论" >
							</td>
						</tr>
					</table>
				</form>
			</div>
	</div>
  </body> --%>
</html>
