<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<base href="<%=basePath%>">
	<link href="../css/base.css" rel="stylesheet" type="text/css">
	<link href="../css/pagename.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap-theme.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="../css/search.css" rel="stylesheet" type="text/css">
	<script type="../text/javascript" src="js/bootstrap.min.js"></script>
	<script type="../text/javascript" src="js/bootstrap.min0.js"></script>
	<script type="../text/javascript" src="js/bootstrap0.js"></script>
	<script type="../text/javascript" src="js/holder.js"></script>
	<script type="../text/javascript" src="js/jquery.min.js"></script>
	<script type="../text/javascript" src="js/npm.js"></script>
	<script type="../text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script type="../text/javascript" src="js/jquery.SuperSlide.2.1.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
</head>

<body link="#000000" vlink="red">
	<div class="row container-fluid">
		<div class="col-md-2"></div>
	<div class="container col-md-4" style="background-color: #FFFFFF">
	<h1>购物街</h1>
	</div>
		<br>	
		<div class="col-md-4">
		<form class="navbar-form navbar-left" role="search">
  		<div class="form-group">
    	<input type="text" class="form-control" placeholder="Search">
  		</div>
  		<button type="submit" class="btn btn-danger" style="height: 32px;background-color: #D70003">Submit</button>
		</form>
			</div>
	</div>
	<div class="container-fluid" >
	</div>
	<div class="container" style="background-color: #FFFFFF;height:30px">
	<button type="button" class="btn btn-link" style="height:30px;background-color: #D70003;width: 108px"><font face="微软雅黑" color="#000000">全部商品1</font></button>
	<button type="button" class="btn btn-link" style="height:30px;background-color: #D70003"><font face="微软雅黑" color="#000000">购物街大药房</font></button>
	</div>
	<div class="container" style="height: 10px;background-color: #FFFFFF"></div>
	<div class="row" style="height: 500px">
		<div class="container">
			<br>
	<div class="container-fluid" style="height:35px">
		<div class="col-md-1">
		<input type="checkbox" aria-label="...">
		</div>
		<div class="col-md-1">
		<font size=2 face="微软雅黑">商品</font>
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-1">
		<font size=2 face="微软雅黑">单价</font>
		</div>
		<div class="col-md-2">
		<font size=2 face="微软雅黑">数量</font>
		</div>
		<div class="col-md-1">
		<font size=2 face="微软雅黑">小计</font>
		</div>
		<div class="col-md-1">
		<font size=2 face="微软雅黑">操作</font>
		</div>
	</div>
	</div>
		<div class="container" style="background-color: #FFFFFF;height:15px">
		</div>
		<div class="container" style="background-color: #FFFFFF">
		<input type="checkbox" aria-label="...">
			&nbsp;
			店铺名
		</div>
		<div class="row">
		<div class="container" style="background-color: #FFFFFF;border:2px solid #E7E1E1">
		<div class="container-fluid" style="height:30px">
			..........
			</div>
			<div class="col-md-1">
			<img src="../image/java编程.jpg" alt="" style="height: 70px;width:70px">
			</div>
			<diV class="col-md-2">
			<font size=2>java 编程思想第四版中文版</font>
			</diV>
			<div class="col-md-3">
			
			</div>
			<div class="col-md-1">
			<span class="glyphicon glyphicon-yen" aria-hidden="true"></span>70.00
			</div>
			<div class="col-md-2">
			<input type="text" style="width: 15px;height: 22px"><input class="text-center" type="text" style="height: 22px;width: 45px" value="1"><input type="text" class="text-center" style="height: 22px;width:15px" value="+">
			</div>
			<div class="col-md-1">
			<span class="glyphicon glyphicon-yen" aria-hidden="true"></span>70.00
			</div>
			<div class="col-md-2">
			<font size="2" color="#A6A6A6">删除</font><br>
			<font size=2 color="#A6A6A6">移到我的关注</font><br>
				<font size=2 color="#A6A6A6">加到我的关注</font>
			</div>
		</div>
			<div class="container" style="background-color: #FFFFFF;height: 20px">
			</div>
			<div class="container" style="height: 58px;background-color: #FFFFFF;border:2px solid #E7E1E1">
				
				<div class="col-md-5">
					<br>
					<input type="checkbox" aria-label="...">
					&nbsp;
				<a herf=""><font size=2 color="#000000">删除选中的商品</font></a>
				<a herf=""><font size=2 color="#000000">移到我的关注</font></a>
				<a herf=""><font size=2 color="#000000">清理购物车</font></a>
					</div>
				<div class="col-md-2">
				
				</div>
				<div class="col-md-2">
					<br>
				已选择1件商品
				</div>
				<button type="button" class="btn  navbar-right btn-danger" style="width: 80px;height: 54px;background-color: #D70003"><font color="#000000" face="微软雅黑" size="4">去结算</font></button>
				<div class="col-md-2 navbar-right">
				总计：<span class="glyphicon glyphicon-yen" aria-hidden="true"></span><font size=4>70.00</font><br>
				已节省：<font color="#888888">42.00</font>
				</div>
				
				
<!--
				
				<div class="col-md-1">
					<br>
		<input type="checkbox" aria-label="...">
		</div>
				<div class="col-md-2">
					<br>
				<a herf=""><font size=2 color="#000000">删除选中的商品</font></a>
				</div>
				<div class="col-md-2">
					<br>
				<a herf=""><font size=2 color="#000000">移到我的关注</font></a>
				</div>
				<div class="col-md-2">
					<br>
				<a herf=""><font size=2 color="#000000">清理购物车</font></a>
				</div>
				<div class="col-md-2">
					<br>
				已选择X件商品
				</div>
				<div class="col-md-1">
				总价：<br>
				已节省:
				</div>
-->
			</div>
			</div>
		</div>
		
</body>
</html>
