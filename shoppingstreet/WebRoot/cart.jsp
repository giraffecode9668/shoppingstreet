<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8" buffer="none"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
	<base href="<%=basePath%>">
<!-- 	<link href="css/base.css" rel="stylesheet" type="text/css">
	<link href="css/pagename.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/search.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min0.js"></script>
	<script type="text/javascript" src="js/bootstrap0.js"></script>
	<script type="text/javascript" src="js/holder.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/npm.js"></script>
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> -->
	
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	
	<style type="text/css">	
	body{
			padding-top: 75px; 
			background-color: #f4f4f4;
			}
	</style>
</head>

<body class="container">
<jsp:include page="nav.jsp"></jsp:include>
<div class="row">
<div class="container" style="background-color: #ffffff">
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
</div>

	<%--<div class="container" style="height:25px;background-color: #ffffff;width:1170px">--%>
		<%--<div class="col-md-1">--%>
		<%--<input type="checkbox" aria-label="...">--%>
		<%--</div>--%>
		<%--<div class="col-md-1">--%>
		<%--<font size=2 face="微软雅黑">商品</font>--%>
		<%--</div>--%>
		<%--<div class="col-md-4">--%>
		<%--</div>--%>
		<%--<div class="col-md-1">--%>
		<%--<font size=2 face="微软雅黑">单价</font>--%>
		<%--</div>--%>
		<%--<div class="col-md-2">--%>
		<%--<font size=2 face="微软雅黑">数量</font>--%>
		<%--</div>--%>
		<%--<div class="col-md-1">--%>
		<%--<font size=2 face="微软雅黑">小计</font>--%>
		<%--</div>--%>
		<%--<div class="col-md-1">--%>
		<%--<font size=2 face="微软雅黑">操作</font>--%>
		<%--</div>--%>
	<%--</div>--%>

	<div class="container" style="height:30px">

	</div>
	<div class="row">
		<div class="container" style="background-color: #FFFFFF">
			<input type="checkbox" aria-label="...">
			&nbsp;
			文轩网旗舰店
		</div>
	</div>
		<%--<div class="container" style="background-color: #FFFFFF;height:15px">--%>
		<%--</div>--%>
		<%--<div class="container" style="background-color: #FFFFFF">--%>
		<%--<input type="checkbxo" aria-label="...">--%>
			<%--店铺名--%>
		<%--</div>--%>
		<div class="row">
		<div class="container" style="background-color: #FFFFFF;border:2px solid #E7E1E1">
		<%--<div class="container-fluid" style="height:30px">--%>
			<%--<a href="">文轩网旗舰店</a>--%>
			<%--</div>--%>
			<div class="col-md-1">
			<img src="picture/javabook.jpg" alt="" style="height: 70px;width:70px">
			</div>
			<diV class="col-md-2">
			<font size=2>java 编程思想第四版中文版</font>
			</diV>
			<div class="col-md-3">
			
			</div>
			<div class="col-md-1">
				<br>
			<span class="glyphicon glyphicon-yen" aria-hidden="true"></span>70.00
			</div>
			<div class="col-md-2">
			<div style="height: 20px">
			</div>
						<div class="input-group">
							<span class="input-group-btn">
							<input type="text" style="height: 22px;width: 15px">
                                <input type="text" style="height: 22px;width: 40px" class="text-center" value="1">
                                <input type="text" style="height: 22px;width: 15px" value="+" disabled="true">
								<%--<button style="width: 15px;height:22px" class="glyphicon glyphicon-plus"></button>--%>
							</span>

      <%--<span class="input-group-btn">--%>
        <%--<button class="btn btn-default" type="button" style="width: 15px;height:22px"></button>--%>
      <%--</span>--%>
							<%--<input type="text" class="form-control text-center" style="width: 45px;height:22px" value="1">--%>
							<%--<span class="input">--%>
        	<%--<button class="btn btn-default text-center" type="button" style="width: 15px;height:22px">+</button>--%>
      		<%--</span>--%>
						</div>
			</div>
			<div class="col-md-1">
				<br>
			<span class="glyphicon glyphicon-yen" aria-hidden="true"></span>70.00
			</div>
			<div class="col-md-2">
			<a href=""><font size="2" color="#A6A6A6">删除</font><br></a>
				<a href=""><font size=2 color="#A6A6A6">移到我的关注</font><br></a>
				<a href=""><font size=2 color="#A6A6A6">加到我的关注</font></a>
			</div>
		</div>
			<div class="container" style="height: 20px">
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
			</div>
			</div>
		

		
</body>
</html>
