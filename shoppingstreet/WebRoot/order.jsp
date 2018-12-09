<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
	<base href="<%=basePath%>">
    <link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	
	

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<style type="text/css">
	
		body { 
			padding-top: 75px; 
			
		}
		
	</style>
	

<title>购物街</title>
</head>

<body class="container">
<jsp:include page="nav.jsp"></jsp:include>
		<div class="container">
		<div class="row" style="background-color: #FFFFFF">
			<div class="col-md-2" style="background-color: #FFFFFF">
			<center><B>订单中心</B><br>
				我的订单<br>
				我的常购物品<br><br>
				<B>关注中心</B><br>
				关注的物品<br>
				关注的店铺<br>
				收藏的内容<br>
				</center>
			</div>
			<div class="col-md-10 header2" style="background-color: #F5EBEC">
				<br>
				<div class="container-fluid" style="background-color: #F5EBEC">
				<font face="微软雅黑" size=3>我的订单</font>
					</div>
				<div class="container-fluid">
				
				</div>

				<div class="container-fluid" style="background-color: #F5EBEC">
					<div class="row" >
						<div class="collapse navbar-collapse col-md-6">
      					<ul class="nav navbar-nav">
        				<li class="active"><a href="#">全部订单</a></li>
							<li><a href="#">待付款</a></li>
							<li><a href="#">待收货</a></li>
							<li><a href="#">待评价</a></li>
							<li><a href="#">我的常购物品</a></li>
						</lu>
						</ul>
						</div>
<!--
						<div class="col-md-2">
					<a class="navbar-brand btn-sm" href="#"><font size="2">全部订单</font></a>
							</div>
						<div class="col-md-2">
					<a class="navbar-brand" href="#"><font size="2">待付款</font></a>
							</div>
						<div class="col-md-2">
					<p class="navbar-text"><font size=2>待收货</font></p>
							</div>
						<div class="col-md-2">
					<a class="navbar-brand" href="#"><font size="2">待评价</font></a>
						</div>
-->
					<div class="col-md-6">
					<form class="navbar-form navbar-right">
        			<div class="form-group">
          			<input type="text" class="form-control" placeholder="Search">
       				</div>
       				<button type="submit" class="btn btn-default btn-sm" style="height: 32px">搜索<span>
						 
						</span></button>
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="height: 32px">
      					高级
      					<span class="caret"></span>
						</button>
      				</form>
						</div>

				</div>

					<div class="container-fluid" style="background-color: #FFFFFF;height:20px">
					
					</div>
				<div class="container-fluid" style="background-color: #F5EBEC;border:2px solid #E7E1E1">
					<div class="dropdown col-md-2">
<!--
  					<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    					全部订单
    				<span class="caret"></span>
  					</button>
-->
					<select class="navbar-left" style="height: 25px;width:110px;background-color: #F5EBEC;border:0px solid #E7E1E1">
						<option value="近三年的订单" sekected>
						近三月的订单	
						<option>今年的订单
						<option>今年的订单
						<option>近两年的订单
						</select>					
					</div>
					<div class="col-md-4">
						订单详情
					</div>
					<div class="col-md-1">
						收货人
					</div>
					<div class="col-md-1">
						金额
					</div>
					<idv class="col-md-2">
					<select class="navbar-left" style="height: 25px;width:90px;background-color: #F5EBEC;border:0px solid #E7E1E1">
						<option value="全部状态" sekected>
						全部状态	
						<option>等待支付
						<option>等待付款
						<option>等待收货
						<option>已完成
						<option>已取消
						</select>
					</idv>
					<div class="col-md-1">
					操作
					</div>
					</div>
					<div class="container-fluid" style="background-color: #FFFFFF;height:20px">
					
					</div>
					<div style="border:2px solid #E7E1E1">
					<div class="container-fluid" style="background-color: #F5EBEC">
						<div class="col-md-3">
					<SCRIPT language=Livescript>//插入时间脚本

 					today = new Date()//创建一个对象
					document.write( "", today.getMonth()+1,"/",today.getDate(),"/",today.getYear()+1900);//today.getMonth()+1获取月；today.getDate()获取日；today.getYear+1900();获取年
					

						</SCRIPT>

					&nbsp;<!--插入空格-->

					<SCRIPT language=Livescript>//插入日期脚本

					today = new Date()//创建一个对象

					document.write("  ",today.getHours(),":",today.getMinutes());//today.getHours()获取时钟

 					</SCRIPT>
					</div>
						<div class="col-md-3">
						订单号：73257433154
						</div>
						<div class="col-md-3">
						尊首道专卖店
						</div>
					</div>
					<div class="container-fluid" style="background-color: #FFFFFF">
					<div class="col-md-1 navbar-left">
						<img src="picture/clothe.jpg" alt="" style="heght:70px;width:70px">
					</div>
						<div class="col-md-2">
						<FONT FACE="微软雅黑" size=2>尊首2017春夏韩版休闲短袖T恤男士半袖T恤学生修身圆领打底衫潮男</FONT>
						</div>
						<div class="col-md-1">
							<br>
						<center>X1</center>
						</div>
						<div class="col-md-2">
							<br>
						<center><a herf=""><font size=2 color="#000000">申请售后</font></a></center>
						</div>
						<div class="col-md-1">
							<br>
						<center><font size=2>某某某</font></center>
						</div>
						<div class="col-md-1">
							<br>
						<center><font size=2>总额</font></center>
						</div>
						<div class="col-md-2">
							<br>
							<center><a herf=""><font size=1 color="#000000">订单详情</font></a></center>
						</div>
						<div class="col-md-2">
							<br>
						<a class="btn btn-default" href="#" role="button" style="height: 30px"><font face="微软雅黑" size=3 color="#000000">立即购买</font></a>
						</div>
					</div>
						</div>
			</div>
		</div>
	</div>
		</div>
</body>
</html>
