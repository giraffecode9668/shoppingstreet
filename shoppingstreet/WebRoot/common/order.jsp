<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
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
	
	

<title>购物街</title>
</head>

<body bgcolor=#DCD2D2>
<!--	<div class="container-fluid header" style="background-color: #EC1014">-->
<!--
		<div class="row"></div>
		<div class="col-md-2" style="background-color: #EC1014"><h1>购物街</h1></div>
		<div class="col-md-10">
-->
		<nav class="navbar navbar-default" style="background-color: #EC1014">
  <div class="container-fluid" style="background-color: #EC1014">
	<div class="row"></div>
	  <div class="col-md-1"></div>
		<div class="col-md-2" style="background-color: #EC1014"><h1>购物街</h1></div>
		<div class="col-md-7">
			<br>
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
<!--
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
-->

      <a class="navbar-brand" href="#"><font color="#F8F2F2">首页</font></a>
		&nbsp;
		<a class="navbar-brand" href="#"><font color="#F8F2F2">消息</font></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="#F8F2F2" size=3>社区 </font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="">个人主页</a></li>
            <li><a href="">我的活动</a></li>
            <li><a href="">我的圈子</a></li>
            <li><a href="">我的贴子</a></li>
          </ul>
        </li><li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="#F8F2F2" size=3>设置 </font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">个人信息</a></li>
            <li><a href="#">账户安全</a></li>
            <li><a href="#">我的尺码</a></li>
            <li><a href="#">账号绑定</a></li>
            <li><a href="#">收货地址</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default btn-sm" style="height: 32px">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="#F8F2F2">我的购物车</font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  </div>
		</nav>

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
						<img src="../image/衣服.jpg" alt="" style="heght:70px;width:70px">
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
