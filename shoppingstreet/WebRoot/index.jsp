<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<base href="<%=basePath%>">
	<title>index</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	<style>
		
		body { 
			padding-top: 75px; 
			background-color: #f4f4f4;
		}
		
		.me{
			color: red;
		}

		.navbar-left{
			margin-left: 3%;
		}
		
		.im-row{
			display: none;
			font-size: 12px;
		}
		
		.row.no-gutter {
            margin-left: 0;
            margin-right: 0;
        }

        .row.no-gutter > [class*='col-'] {
            padding-right: 0;
            padding-left: 0;
        }

        .inwhite{
        	color: white;
        }

		.msbackground{
			width: 50px;
			height: 50px;
			background:url('image/msbackground.png');
			padding: 5px 5px;
			font-family: 微软雅黑;
			font-size: 22px;
			color: white;
		}
		
		.ms_new_price{
			background-color: #e6382f;
			border: solid #e6382f 1px;
			padding:2px 12px;
			width:100px;
			heigth:20px;
			color:white;
		}
		
		.ms_old_price{
			border: solid #e6382f 1px;
			color: gray;
			padding:2px 12px;
			width:80px;
			heigth:20px;
		}

		.item,.carousel-caption{
			width: 100%;
		}
		.carousel-caption{
			left: 0;
			top: 0;
			padding: 0;
		}

		.smallfaded{
			color: #99b3cd;
			font-size: 14px;
			padding-left: 10px;
			padding-top: 5px;
		}

		a.titlehead{
			text-decoration: none;
			color: #666;
		}

		.tab_head {
		    height: 34px;
		    line-height: 34px;
		    text-align: center;
		    background: #f7f7f7;
		}

		.tab_head_item{
			float: left;
			width: 70px;
			cursor: pointer;
			white-space: nowrap;
			overflow: hidden;
			font-size: 12px;
			text-overflow: ellipsis;
		}

		a.tab_active{
			text-decoration: none;
			color: #e83632;	
		}

		.im-hpb-div{
			margin-top: 15px;
		}

		.media-left{
			padding-left: 15px;
			padding-right: 20px;
		}

		.media-body{
			padding-top: 15px;
			padding-right: 15px;
		}

		.media-heading{
			font-size: 10px;
			margin-top: 8px;
		}

		.im-phb-div{
			margin-top: 15px;
			display: none;
		}

		.top_item_rank{
			float:left;
			padding-right: 15px;
			font-family: 'impact', sans-serif;
			font-size: 32px;
		}

		.ticket{
			padding-top:15px;
			padding-bottom: 15px;
			margin-left: 15px;
			margin-right: 15px;
			margin-bottom: 5px;
			height: 114px;
		}

	</style>
</head>
 <body class="container">
<jsp:include page="nav.jsp"></jsp:include>
	
	<div class="row">
		<div class="col-xs-3 col-md-2">
			<div class="panel panel-danger">
				  <div class="panel-heading"><h4>商品分类</h4></div>
				   <!-- List group -->
				  <ul class="list-group">
				    <li class="list-group-item"><a href="">家用电器</a></li>
				    <li class="list-group-item"><a href="">手机</a>/<a href="">数码</a>/<a href="">运营商</a></li>
				    <li class="list-group-item"><a href="">电脑</a>/<a href="">办公</a></li>
				    <li class="list-group-item"><a href="">家居</a>/<a href="">家具</a>/<a href="">家装</a>/<a href="">厨具</a></li>
				    <li class="list-group-item"><a href="">男装</a>/<a href="">女装</a>/<a href="">童装</a>/<a href="">内衣</a></li>
				    <li class="list-group-item"><a href="">美妆</a>/<a href="">个护清洁</a>/<a href="">宠物</a></li>
				    <li class="list-group-item"><a href="">女鞋</a>/<a href="">箱包</a>/<a href="">钟表</a>/<a href="">珠宝</a></li>
				    <li class="list-group-item"><a href="">男鞋</a>/<a href="">运动</a>/<a href="">户外</a></li>
				    <li class="list-group-item"><a href="">房产</a>/<a href="">汽车</a>/<a href="">汽车用品</a></li>
				    <li class="list-group-item"><a href="">母婴</a>/<a href="">玩具乐器</a></li>
				  </ul>
			</div>
	

		</div>
		<div class="col-xs-7 col-md-6">
			<div id="mycarousel" class="carousel slide" data-ride='carousel'>
				<!-- 幻灯片图片 -->
				<div class="carousel-inner" style="width: 900px;">
					<div class="item active" style="">
						<img src="picture//gg1.jpg"  width="555px" height="470px">
					</div>
					<div class="item">
						<img src="picture//gg2.jpg">
					</div>
					<div class="item">
						<img src="picture//gg3.jpg">
					</div>
				</div>

				<!-- 指示灯 -->
				<ol class="carousel-indicators">
					<li data-target='#mycarousel' data-slide-to='0' class="active"></li>
					<li data-target='#mycarousel' data-slide-to='1' ></li>
					<li data-target='#mycarousel' data-slide-to='2' ></li>
				</ol>

				<!-- 左右控制 -->
				<a href="#mycarousel" class="left carousel-control" data-slide='prev'>
					<span class='glyphicon glyphicon-chevron-left'></span>
				</a>
				<a href="#mycarousel" class="right carousel-control" data-slide='next'>
					<span class='glyphicon glyphicon-chevron-right'></span>
				</a>
			</div>
		</div>
		<div class="col-xs-2 col-md-2">
			<div class="list-group">
				 <a href="#" class="thumbnail ">
				 	<img src="picture//gg4.jpg">
				 </a>
 				 <a href="#" class="thumbnail">
				 	<img src="picture//gg5.jpg" class="bj" >
				 </a>
				 <a href="#" class="thumbnail">
				 	<img src="picture//gg6.jpg" class="bj">
				 </a>
			</div>
		</div>
		<div class="col-xs-12 col-md-2">
			<div class="panel panel-default" >
			  <div class="panel-body"  style="text-align: center">
			  	<br>
				<img src="picture//tou.jpg" height="80px" width="80px" alt="头像" class="img-circle" >
				<p style="font-size: 14px;font-family: 楷体;margin-top: 15px"><a href="#">用户名</a>-欢迎您</p>
				<a href="login.jsp"><button class="btn btn-danger btn-sm" >登录</button></a>
				<a href="reg.jsp"><button class="btn btn-warning btn-sm">注册</button></a>
				<br><br>
				<ul class="nav nav-tabs nav-justified" style="font-size:12px">
					<li class="active im-idx"><a href="">公告</a></li>
					<li class="im-idx"><a href="">规则</a></li>
					<li class="im-idx"><a href="">安全</a></li>

				</ul>

				<div class="im-row">
					<a href="">希望未来中国500个好公司有200个CEO来自阿里 </a><br>
					<a href="">张勇：让生意更简单</a><br>
					<a href="">上购物街购物：安全实惠</a><br>
				</div>

				<div class="im-row">
					<a href="">新增《购物街禁售商品管理规范》 </a><br>
					<a href="">关于《购物街规则》不当使用他人权利规则变更公示通知</a><br>
					<a href="">新增《区域零售服务标准》公示通知</a><br>
				</div>

				<div class="im-row">
					<a href="">卖家注意：风险通报</a><br>
					<a href="">售假获刑又起诉</a><br>
				</div>

			  </div>
			</div>
		</div>

	</div>

	<hr>

	<!-- 秒杀 -->
	<div class="row"  style="text-align: center">
		<div class="col-xs-12" >
			<!-- 特惠秒杀 -->
			<div class="col-xs-2 col-md-2" style=" border: 2px;height: 250px;width: 180px;background-color: #e83632;">
				<h2 class="inwhite" style="padding-top: 15px;text-align: center">特惠秒杀</h2>
				<h4 style="color:#f49b99;text-align: center;">FLASH&nbsp;DEALS</h4>
				<h2 class="inwhite" style="text-align: center;"><span class="glyphicon glyphicon-flash" ></span></h2>
				<h4 class="inwhite" >本场距离结束还剩</h4>
				<div align="center" style="background-picture/: bs/picture//msbackground.png">
					<font class="msbackground" id="">00</font>
					<font class="msbackground" id="">40</font>
					<font class="msbackground" id="">08</font>
					
				</div>
			</div>

			<!-- 商品 -->
			<div class="col-xs-12 col-md-8" style="text-align: center">
				<div id="msshop" class="carousel slide">
					<div class="carousel-inner" style="width: 700px;margin-left: 15px">
						<!-- 第一组图片 -->
						<div class="item active" style="height: 300px">
							<div class="">
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms1.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>99</span><span class="ms_old_price"><s><i>￥</i>159</s></span>
								</div>
								</a>
								
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms2.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>2699</span><span class="ms_old_price"><s><i>￥</i>2999</s></span>
								</div>
								</a>
								
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms3.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>459</span><span class="ms_old_price"><s><i>￥</i>499</s></span>
								</div>
								</a>
								
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms4.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>159</span><span class="ms_old_price"><s><i>￥</i>199</s></span>
								</div>
								</a>
							</div>
						</div>
 
						<!-- 第二组图片 -->
						<div class="item " style="height: 300px">
							<div class="" >
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms5.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>2559</span><span class="ms_old_price"><s><i>￥</i>2599</s></span>
								</div>
								</a>
								
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms6.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>1099</span><span class="ms_old_price"><s><i>￥</i>1199</s></span>
								</div>
								</a>
								
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms7.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>509</span><span class="ms_old_price"><s><i>￥</i>559</s></span>
								</div>
								</a>
								
								<a href="">
								<div class="panel" style="width: 170px;height: 250px;float:left;margin-left: 5px">
									<div class="row">
										<img style="display: inline-block;margin-top: 35px;"  width="100px" height="150px" src="picture//ms8.jpg" ><br>
									</div><br>
									<span class="ms_new_price"><i>￥</i>1099</span><span class="ms_old_price"><s><i>￥</i>1159</s></span>
								</div>
								</a>
							</div>
						</div>

					</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="carousel-control" href="#msshop"  role="button" style="left:-55px;top: -65px" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>
						    <span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control" href="#msshop" style="left: 675px;top: -65px" role="button" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						</a>
				</div>
			</div>

			<a href="">
			<div class="col-xs-2 col-md-2" style="left:-15px" ><img  width="170px" height="250px"  src="picture//ms9.png" /></div>
			</a>
		</div>
	</div>

	<hr>

	<div class="row ">
		<div class="col-xs-6 col-md-4">
			<div class="panel" style="height: 420px">
			<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">排行榜&nbsp;<span class="glyphicon glyphicon-equalizer" style="color: #e83632"></span></font><font class="smallfaded">专属你的购物指南</font></p></a>
			
				<div class="tab_head " >
					<div class="tab_head_item  ">
						<a href="" class="titlehead im-phb tab_active">手机通讯</a>
					</div>
					<div class="tab_head_item ">
						<a href="" class="titlehead  im-phb">电脑配件</a>
					</div>					
					<div class="tab_head_item ">
						<a href="" class="titlehead  im-phb">方便食品</a>
					</div>					
					<div class="tab_head_item ">
						<a href="" class="titlehead  im-phb">文具/耗材</a>
					</div>					
					<div class="tab_head_item ">
						<a href="" class="titlehead  im-phb">清洁纸品</a>
					</div>
				</div>

			<!-- 手机 -->
			<div class="im-phb-div">
				<div class="media ">
				 <a href="#" >
				  <div class="media-left">
				      <img class="media-object" width="80px" height="80px" src="picture//phbsj1.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  	<span class="top_item_rank" style="color: #e74240">1</span>
				  	 <h4 class="media-heading">Apple iPhone X（A1865）64GB 深空灰色移动联通电信4G手机</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbsj2.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #ed713d">2</span>
				     <h4 class="media-heading">小米红米6ProAl美颜双摄3GB+32GB曜石黑全网通4G手机双卡双待</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				    
				      <img class="media-object"  width="80px" height="80px" src="picture//phbsj3.jpg"alt="...">
				    
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #feb185">3</span>
				     <h4 class="media-heading">荣耀V10高配版6GB+64GB极光蓝移动联通电信4G全面屏游戏手机双卡双待</h4>
				  </div>
				  </a>
				</div>
			</div>

			<!-- 电脑配件 -->
			<div class="im-phb-div">
				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object" width="80px" height="80px" src="picture//phbdn1.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #e74240">1</span>
				    <h4 class="media-heading">三星（SAMSUNG）ssd固态硬盘970EVO/PRO M.2 NVME ssd固态硬盘等可</h4>
				  </div>
				   </a>
				</div>

				<div class="media">
				 <a href="#">
				  <div class="media-left">
				      <img class="media-object" width="80px" height="80px" src="picture//phbdn2.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #ed713d">2</span>
				   <h4 class="media-heading">三星笔记本/台式机内存条DDR3/DDR44G/8G/16G笔记本DDR424004G</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object" width="80px" height="80px" src="picture//phbdn3.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #feb185">3</span>
				  	<h4 class="media-heading">西部数据（WD）蓝盘 1TB SATA6Gb/s7200转64MB 台式机械硬盘（WD10EZEX）</h4>
				  </div>
				  </a>
				</div>
			</div>

			
			<!-- 方便食品 -->
			<div class="im-phb-div">
				<div class="media">
				<a href="#">
				  <div class="media-left">
				    
				      <img class="media-object" width="80px" height="80px" src="picture//phbfb1.jpg" alt="...">
				   
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #e74240">1</span>
				    <h4 class="media-heading">康师傅方便面（KSF）西红柿鸡蛋打卤桶面12桶泡面整箱装</h4>
				  </div>
			   	  </a>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object" width="80px" height="80px" src="picture//phbfb2.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #ed713d">2</span>
				     <h4 class="media-heading">康师傅方便面（KSF）锅煮拉面原汁牛肉煮面袋装泡面五连包</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object" width="80px" height="80px" src="picture//phbfb3.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #feb185">3</span>
				    <h4 class="media-heading">今麦郎光华粉丝馆鸡汤粉丝原味桶装94g</h4>
				  </div>
				  </a>
				</div>
			</div>
			
			<!-- 文具/耗材 -->
			<div class="im-phb-div">
				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbwj1.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #e74240">1</span>
				    <h4 class="media-heading">得力（deli）省力型订书机轻松装订适用24/6及26/6订书针（12#）黑色0368</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				 <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbwj2.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #ed713d">2</span>
				    <h4 class="media-heading">得力（deli）12本A5/58张无线胶装软抄本办公记事本文具笔记本子7984-12</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbwj3.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #feb185">3</span>
				     <h4 class="media-heading">得力（deli）莱茵河1包装70gA4复印纸500张/包</h4>
				  </div>
				</a>
				</div>
			</div>

			<!-- 清洁纸品 -->
			<div class="im-phb-div">
			<a href="#">
				<div class="media">
				  <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbzj1.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #e74240">1</span>
				    <h4 class="media-heading">黑白猪湿纸巾成人80片带盖抽纸巾清洁消</h4>
				  </div>
				</div>

				<div class="media">
				<a href="#">
				  <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbzj2.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #ed713d">2</span>
				 	  <h4 class="media-heading">维达（Vinda）卷纸厨房用纸75节*2卷水滴花纹</h4>
				  </div>
				  </a>
				</div>

				<div class="media">
				<a href="#">
				 <div class="media-left">
				      <img class="media-object"  width="80px" height="80px" src="picture//phbzj3.jpg" alt="...">
				  </div>
				  <div class="media-body">
				  <span class="top_item_rank" style="color: #feb185">3</span>
				    <h4 class="media-heading">维达（Vinda）抽纸超韧3层130抽软抽*24包纸巾（小规格）整箱销售</h4>
				  </div>
				  </a>
				</div>
			</a>
			</div>

		</div>


	
			
		</div>

		<!-- 会买专辑 -->
		<div class="col-xs-6 col-md-4">
			<div class="panel" style="height: 420px">
				<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">会买专辑&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">甄选优秀好物</font></p></a>
			
				<!-- 商品 -->
				<div id="hmshop" class="carousel slide" >
					<div class="carousel-inner" style="width: 365px;">
					<!-- 第一组图片 -->
					<div class="item active" style="text-align: center" >
						<a href="" ><img src="picture//hm1-1.png" style="margin-bottom: 10px;margin-left: 32px;margin-right: 32px" width="300px" height="120px"></a>
						<a href="">
						<div class="row" style="margin-left: 15px;margin-right: 15px">
							<div class="col-xs-4">
								<img width="80px" height="120px" src="picture//hm1-2.jpg">
							</div>
							<div class="col-xs-4">
								<img width="80px" height="120px" src="picture//hm1-3.jpg">
							</div>
							<div class="col-xs-4">
								<img width="80px" height="120px" src="picture//hm1-4.jpg">
							</div>
						</div>
						
						<p style="margin-top: 10px"><b>“表”中乾坤，流转腕间睿智磁场</b></p>
						<p style="padding-left:15px;padding-right:15px;">男士本身衣物风格差别不大，但是又想要与众不同，这时候就需要来一个时尚有型的手表来拯救你单一的</p>
						</a>
					</div>

					<!-- 第二组图片 -->
					<div class="item " style="text-align: center"  >
						<a href="" ><img src="picture//hm2-1.jpg" style="margin-bottom: 10px;margin-left: 32px;margin-right: 32px" width="300px" height="120px"></a>
						<a href="">
						<div class="row" style="margin-left: 15px;margin-right: 15px">
							<div class="col-xs-4">
								<img width="80px" height="120px" src="picture//hm2-2.jpg">
							</div>
							<div class="col-xs-4">
								<img width="80px" height="120px" src="picture//hm2-3.jpg">
							</div>
							<div class="col-xs-4">
								<img width="80px" height="120px" src="picture//hm2-4.jpg">
							</div>
						</div>
						
						<p style="margin-top: 10px"><b>长相普通，妆得美才吸引男生注意</b></p>
						<p style="padding-left:15px;padding-right:15px;">告诉大家一个真相吧，其实很多很受欢迎的女生都是妆出来的。她们索颜的样子其实也蛮普通的。所以，</p>
						</a>
					</div>
					</div>

					<!-- 指示灯 -->
					<ol class="carousel-indicators" style="bottom:-16px;">
						<li data-target='#hmshop' data-slide-to='0' class="active"></li>
						<li data-target='#hmshop' data-slide-to='1' ></li>
					</ol>
						
					<!-- 指示灯 -->
					<a class="carousel-control" href="#hmshop"  role="button" style="left:-15px" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>
					    <span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control" href="#hmshop" style="left: 324px" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		

		<!-- 领劵中心 -->
		<div class="col-xs-6 col-md-4">
			<div class="panel" style="height: 420px">
				<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">领劵中心&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">前往领劵中心</font></p></a>
				<a href="">
				<div class="panel ticket" style="background-color: #f6f6f6;">
					<div  style="margin-right: 30px;margin-left: 15px;float:left;width: 270px">
						<img src="picture//lj1.png" height="80px" width="80px"  style="float:left" class="img-circle">
						<span class="" style="color: #e74240;margin-left: 15px">￥</span>
						<span class="top_item_rank" style="color: #e74240;float: none">5</span><br>
						<span class="smallfaded" style="margin-left: 5px">满105元可用</span><br>
						<span style="margin-left: 15px;color:#5c5b5a">全品类通用券(除特殊商品...</span>
					</div>
					<div style="float:left;width: 10px;height:85px;font-size: 8px;">
						更<br>多<br>精<br>选<br>好<br>券
					</div>
				</div>
				</a>

				<a href="">
				<div class="panel ticket" style="background-color: #eeefed;">
					<div  style="margin-right: 30px;margin-left: 15px;float:left;width: 270px">
						<img src="picture//lj2.jpg" height="80px" width="80px"  style="float:left" class="img-circle">
						<span class="" style="color: #e74240;margin-left: 15px">￥</span>
						<span class="top_item_rank" style="color: #e74240;float: none">400</span><br>
						<span class="smallfaded" style="margin-left: 5px">满6500元可用</span><br>
						<span style="margin-left: 15px;color:#5c5b5a">购买指定iPhone商品</span>
					</div>
					<div style="float:left;width: 10px;height:85px;font-size: 8px">
						更<br>多<br>数<br>码<br>好<br>券
					</div>
				</div>
				</a>

				<a href="">
				<div class="panel ticket" style="background-color: #f6f6f6;">
					<div  style="margin-right: 30px;margin-left: 15px;float:left;width: 270px">
						<img src="picture//lj3.jpg" height="80px" width="80px"  style="float:left" class="img-circle">
						<span class="" style="color: #e74240;margin-left: 15px">￥</span>
						<span class="top_item_rank" style="color: #e74240;float: none">10</span><br>
						<span class="smallfaded" style="margin-left: 5px">满109元可用</span><br>
						<span style="margin-left: 15px;color:#5c5b5a">水饮部分商品</span>
					</div>
					<div style="float:left;width: 10px;height:85px;font-size: 8px">
						更<br>多<br>食<br>品<br>好<br>券
					</div>
				</div>
				</a>
			</ul>

			</div>
			
		</div>
	</div>

	<div class="row" style="padding-top: 30px">
		<!-- 觅me -->
		<div class="col-xs-6 col-md-4">
			<div class="panel" style="height: 420px">
				<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">觅me&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">探索生活</font></p></a>

				<!-- 商品 -->
				<div id="mmshop" class="carousel slide" style="text-align: center">
					<div class="carousel-inner" style="width: 365px;">
					<!-- 第一组图片 -->
					<div class="item active"  >
						<a href="" ><img width="300px" height="250px" src="picture//mm1.jpg" style="margin-bottom: 10px;margin-left: 30px">
						
						<p style="margin-top: 10px"><b>别让你的生活，毁在了“不耐烦"上</b></p>
						<p style="padding-left:15px;padding-right:15px;">没有谁不喜欢丰子恺先生的画作。白描，简洁，却极多趣味，都是熟悉的生活事众生相。</p>
						</a>
					</div>

					<!-- 第二组图片 -->
					<div class="item " >
						<a href="" ><img width="300px" height="250px" src="picture//mm2.jpg" style="margin-bottom: 10px;margin-left: 30px">
						
						<p style="margin-top: 10px"><b>性价比超高的纸尿裤，众多妈妈的选择</b></p>
						<p style="padding-left:15px;padding-right:15px;">家里诞生了小小新成员，各位妈妈在开心之余，也增添了一些烦恼。宝宝这么娇嫩，该如何给宝宝选购适</p>
						</a>
					</div>

					<!-- 第三组图片 -->
					<div class="item " >
						<a href="" ><img width="300px" height="250px" src="picture//mm3.png" style="margin-bottom: 10px;margin-left: 30px">
						
						<p style="margin-top: 10px"><b>好奇铂金纸尿裤，众多宝妈的一致选择  </b></p>
						<p style="padding-left:15px;padding-right:15px;">最近家里有了宝宝，给宝宝添置各种生活用品让我这个新手宝妈焦头烂额。尤其是纸尿裤这种宝宝要贴身</p>
						</a>
					</div>
					</div>

					<!-- 指示灯 -->
					<ol class="carousel-indicators" style="bottom:-16px;">
						<li data-target='#mmshop' data-slide-to='0' class="active"></li>
						<li data-target='#mmshop' data-slide-to='1' ></li>
						<li data-target='#mmshop' data-slide-to='2' ></li>
					</ol>
						
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control" href="#mmshop"  role="button" style="left:-15px;top: -25px" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>
					    <span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control" href="#mmshop" style="left: 324px;top: -25px" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>

		<!-- 发现好货 -->
		<div class="col-xs-6 col-md-4">
			<div class="panel" style="height: 420px">
				<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">发现好货&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">发现品质好货</font></p></a>
				<div style="margin:15px 15px">
					<div class="row">
						<div class="col-xs-6">
							<a href="">
								<img src="picture//fx1.jpg" width="140px" height="120px">
								<font style="padding-left: 15px;font-size: 14px;font-family: &#39;华软雅黑&#39; color: #3e8c96">神画家用无屏投影机</font>
								<p style="font-size: 12px">Ta搭载了隔空触控技术…</p>
							</a>
						</div>
						<div class="col-xs-6">
							<a href="">
								<img src="picture//fx2.jpg" width="140px" height="120px">
								<font style="padding-left: 15px;font-size: 14px;font-family:&#39;华软雅黑&#39; color: #3e8c96">美达施香橙膳食纤维</font>
								<p style="font-size: 12px">天然的洋车前子可以帮…</p>
							</a>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-6">
							<a href="">
								<img src="picture//fx3.png" width="140px" height="120px">
								<font style="padding-left: 15px;font-size: 14px;font-family:&#39;华软雅黑&#39; color:#3e8c96">耐克飞人减震运动鞋</font>
								<p style="font-size: 12px">本款鞋不仅将元年鞋款后…</p>
							</a>
						</div>
						<div class="col-xs-6">
							<a href="">
								<img src="picture//fx4.jpg" width="140px" height="120px">
								<font style="padding-left: 15px;font-size: 14px;font-family: &#39;华软雅黑&#39; color: #3e8c96">维斯低帮帆布鞋</font>
								<p style="font-size: 12px">采用帆布材质构成的鞋…</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 会逛 -->
		<div class="col-xs-6 col-md-4" >
			<div class="panel" style="height: 420px">
				<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">会逛&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">你想逛的都在这里</font></p></a>
				<div style="text-align: center">
					<div style="margin:25px 20px 10px 20px;">
						<a href="">
						<img width="315px" height="200px" src="picture//hg1.jpg">	
						</a>
					</div>
					<div >
						<a href=""><img width="100px" height="120px" src="picture//hg2.jpg"></a>
						<a href=""><img width="100px" height="120px" src="picture//hg4.jpg"></a>
						<a href=""><img width="100px" height="120px" src="picture//hg3.jpg"></a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
	<hr>
		<!-- 职能先锋 -->
		<div style="text-align: center">
			<span style="font-size: 28px;">——&nbsp;智能先锋&nbsp;——</span>
		</div>
		<div class="row"><br><br>
		<!-- 手机频道 -->
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">手机频道&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">一个极客的诞生</font></p></a>
					<div class="row" style="margin: 15px">
						<div class="col-xs-6"><a href=""><img width="134px" height="150px" src="picture//sjpd1.jpg"></a></div>
						<div class="col-xs-6"><a href=""><img width="134px" height="150px" src="picture//sjpd2.jpg"></a></div>
					</div>
					<div class="row" >
						<div class="col-xs-12" >
						<div align="center">
							<table border="1" style="border-color: green">
							<tr>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd3.jpg"></a></td>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd4.jpg"></a></td>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd5.jpg"></a></td>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd6.jpg"></a></td>
							</tr>
							<tr>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd7.jpg"></a></td>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd8.jpg"></a></td>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd9.jpg"></a></td>
							<td><a href=""><img width="75px" height="75px" src="picture//sjpd10.jpg"></a></td>
							</tr>
							</table>
						</div>
						</div>
					</div>
				</div>
			</div>
			
		<!-- 新品首发 -->
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">新品首发&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">李副官，去查清楚</font></p></a>
				
					<div style="text-align: center">
						<a href=""><img width="350px" height="350px" src="picture//xpsf1.png"></a>
					</div>
				</div>
			</div>

			<div class="col-xs-4" style="height:400px">
				<a href=""><img src="picture//znxf1.jpg" width="350px" height="400px" style="z-index: 2;position: relative"></a>
				<div class="" style="height:400px;border: solid 4px #000000;position: relative;z-index: 1;left:20px;top: -370px">
				</div>
			</div>
		</div>
		<div class="row"><br><br>
			<div class="col-xs-4" style="height:400px">
				<a href=""><img src="picture//znxf2.jpg" width="350px" height="200px" style="z-index: 2;position: relative;left:15px"></a>
				<a href=""><img src="picture//znxf3.jpg" width="350px" height="200px" style="z-index: 2;position: relative;margin-top: 15px;left:15px"></a>
				<div class="" style="height:420px;border: solid 4px #000000;position: relative;z-index: 1;left:-15px;top: -390px">
				</div>
			</div>
			
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">极客桌面&nbsp;·</font><font class="smallfaded">极客桌面</font></p></a>
					
					<div style="text-align: center">
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//jk1.jpg"></a>
					</div>
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//jk2.jpg"></a>
					</div>
					</div>
					
					<hr>
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 50px"><font style="font-size: 24px;">影音娱乐&nbsp;·</font><font class="smallfaded">开启high唱</font></p></a>
					
					<div style="text-align: center">
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//yy1.jpg"></a>
					</div>
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//yy2.jpg"></a>
					</div>
					</div>
				</div>
			</div>

			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">电脑办公&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">职能潮货&nbsp;嗨购不停</font></p></a>			

					<div style="text-align: center">
						<a href=""><img width="325px" height="150px" src="picture//dnbg1.jpg" style="margin-top: 15px"></a>
						<a href=""><img width="325px" height="150px" src="picture//dnbg2.jpg" style="margin-top: 15px"></a>
					</div>
				</div>
			</div>
		</div>
		
		<hr>
		<!-- 时尚达人 -->
		<div style="text-align: center">
			<span style="font-size: 28px;">——&nbsp;时尚达人&nbsp;——</span>
		</div>
		<div class="row"><br><br>
			<div class="col-xs-4">
					<!-- 运动户外 -->
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">运动户外&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">玩所未玩</font></p></a>		

					<div style="text-align: center" style="margin-top: 25px">
						<a href=""><img width="325px" height="150px" src="picture//ydhw1.jpg"></a>
						<div style="padding: 15px">
						<a href=""><img width="150px" height="150px" src="picture//ydhw2.jpg" style="margin-right: 15px;"></a>
						<a href=""><img width="150px" height="150px" src="picture//ydhw3.jpg" style=""></a>
						</div>
						
					</div>
				</div>
			</div>
			
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
				<!-- 魅力装扮 -->
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">魅力装扮&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">精致生活</font></p></a>		

					<div style="text-align: center" style="margin-top: 25px">
						<a href=""><img width="325px" height="150px" src="picture//mlzb1.jpg"></a>
						<div style="padding: 15px">
						<a href=""><img width="150px" height="150px" src="picture//mlzb2.jpg" style="margin-right: 15px;"></a>
						<a href=""><img width="150px" height="150px" src="picture//mlzb3.jpg" style=""></a>
						</div>
						
					</div>
				</div>
				</div>
			</div>

			<div class="col-xs-4" style="height:400px">
				<a href=""><img width="350px" height="400px" src="picture//ss1.jpg" style="z-index: 2;position: relative"></a>
				<div class="" style="height:400px;border: solid 4px #000000;position: relative;z-index: 1;left:20px;top: -370px">
				</div>
			</div>
		</div>
		<div class="row"><br><br>
			<div class="col-xs-4" style="height:400px">
				<a href=""><img width="350px" height="400px" src="picture//ss2.jpg" style="z-index: 2;position: relative;left:15px"></a>
				<div class="" style="height:400px;border: solid 4px #000000;position: relative;z-index: 1;left:-15px;top: -370px">
				</div>
			</div>
			
			<div class="col-xs-4">
				
				<div class="panel" style="height:420px">

					<!-- 奢华香氛 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">奢华香氛&nbsp;·</font><font class="smallfaded">初闻定情</font></p></a>
					
					<div style="text-align: center">
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//sh1.jpg"></a>
					</div>
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//sh2.jpg"></a>
					</div>
					</div>
					
					<!-- 商务型男 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 50px"><font style="font-size: 24px;">商务型男&nbsp;·</font><font class="smallfaded">精英男士穿戴</font></p></a>
					
					<div style="text-align: center">
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px"  src="picture//sw1.jpg"></a>
					</div>
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px"  src="picture//sw2.jpg"></a>
					</div>
					</div>
					
					<hr>
				</div>
			</div>

			<div class="col-xs-4">
				<!-- 知我药妆 -->
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">知我药妆&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">知我药妆美妆旗舰店</font></p></a>
				<div style="text-align: center">
					<div style="margin:25px 20px 10px 20px;">
						<a href="">
						<img width="315px" height="200px" src="picture//zw1.jpg">	
						</a>
					</div>
					<div >
						<a href=""><img width="100px" height="120px" src="picture//zw2.jpg"></a>
						<a href=""><img width="100px" height="120px" src="picture//zw3.jpg"></a>
						<a href=""><img width="100px" height="120px" src="picture//zw4.jpg"></a>
					</div>
					
				</div>
				</div>
			</div>
		</div>
		<div class="row"><br><br>
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<!-- 引领时尚 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">引领时尚&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">尽享时尚生活</font></p></a>
					<div style="text-align: center">
						<div style="margin:25px 20px 10px 20px;">
							<a href="">
							<img width="315px" height="200px" src="picture//ylss1.jpg">	
							</a>
						</div>
						<div >
							<a href=""><img width="100px" height="120px" src="picture//ylss2.jpg"></a>
							<a href=""><img width="100px" height="120px" src="picture//ylss3.jpg"></a>
							<a href=""><img width="100px" height="120px" src="picture//ylss4.jpg"></a>
						</div>
					
				</div>
				</div>
			</div>
			
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
				<!-- 我型我塑 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">我型我塑&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">时尚有我&nbsp;品质衣橱</font></p></a>		

					<div style="text-align: center" style="margin-top: 25px">
						<a href=""><img width="325px" height="150px" src="picture//wswx1.jpg"></a>
						<div style="padding: 16px">
						<a href=""><img width="150px" height="150px" src="picture//wswx2.jpg" style="margin-right: 15px"></a>
						<a href=""><img width="150px" height="150px" src="picture//wswx3.jpg"></a>
						</div>
						
					</div>
				</div>
			</div>

			<div class="col-xs-4" style="height:400px">
				<a href=""><img width="350px" height="200px" src="picture//ss3.jpg" style="z-index: 2;position: relative"></a>
				<a href=""><img width="350px" height="200px" src="picture//ss4.jpg" style="z-index: 2;position: relative;margin-top: 15px"></a>
				<div class="" style="height:420px;border: solid 4px #000000;position: relative;z-index: 1;left:20px;top: -400px">
				</div>
			</div>
		</div>
	
		<hr>
		<div style="text-align: center">
			<span style="font-size: 28px;">——&nbsp;生活百货&nbsp;——</span>
		</div>
		<div class="row"><br><br>
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<!-- 购物超市 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">购物超市&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">精选超值好物</font></p></a>		

					<div style="text-align: center" style="margin-top: 25px">
						<a href=""><img width="325px" height="150px" src="picture//cs1.jpg"></a>
						<div style="padding: 15px">
						<a href=""><img width="150px" height="150px" src="picture//cs2.jpg" style="margin-right: 15px;"></a>
						<a href=""><img width="150px" height="150px" src="picture//cs3.jpg" style=""></a>
						</div>
						
					</div>
				</div>
			</div>
			
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<!-- 远安馆 -->
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">远安馆&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">中国好吃的特产</font></p></a>
				<div style="text-align: center">
					<div style="margin:25px 20px 10px 20px;">
						<a href="">
						<img width="315px" height="200px" src="picture//ya1.jpg">	
						</a>
					</div>
					<div >
						<a href=""><img width="100px" height="120px" src="picture//ya2.jpg"></a>
						<a href=""><img width="100px" height="120px" src="picture//ya3.jpg"></a>
						<a href=""><img width="100px" height="120px" src="picture//ya4.jpg"></a>
					</div>
					
				</div>
				</div>
				</div>
			</div>

			<div class="col-xs-4" style="height:400px">
				<!-- 食品饮料 -->
				<a href=""><img width="350px" height="400px" src="picture//shbh1.jpg" style="z-index: 2;position: relative"></a>
				<div class="" style="height:400px;border: solid 4px #000000;position: relative;z-index: 1;left:20px;top: -370px">
				</div>


			</div>
		</div>
		<div class="row"><br><br>
			<div class="col-xs-4" style="height:400px">
				<a href=""><img width="350px" height="200px" src="picture//shbh2.jpg" style="z-index: 2;position: relative;left:15px"></a>
				<a href=""><img width="350px" height="200px" src="picture//shbh3.jpg" style="z-index: 2;position: relative;margin-top: 15px;left:15px"></a>
				<div class="" style="height:420px;border: solid 4px #000000;position: relative;z-index: 1;left:-15px;top: -390px">
				</div>
			</div>
			
			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<!-- 好吃零食 -->
				<div class="panel" style="height:420px">
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">好吃零食&nbsp;·</font><font class="smallfaded">好吃大满足</font></p></a>
					
					<div style="text-align: center">
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//hcls1.jpg"></a>
					</div>
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//hcls2.jpg"></a>
					</div>
					</div>
					
					<hr>
					<!-- 宝宝睡眠 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 50px"><font style="font-size: 24px;">宝宝睡眠&nbsp;·<//font><font class="smallfaded">睡个好觉</font></p></a>
					
					<div style="text-align: center">
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//bbsm1.jpg"></a>
					</div>
					<div class="col-xs-6">
						<a href=""><img width="134px" height="150px" src="picture//bbsm2.jpg"></a>
					</div>
					</div>
				</div>
				</div>
			</div>

			<div class="col-xs-4">
				<div class="panel" style="height:420px">
					<!-- 吃喝玩乐 -->
					<a href="" class="titlehead"><p style="padding-left: 24px;padding-top: 15px"><font style="font-size: 24px;">吃喝玩乐&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">为你挑选最好的</font></p></a>			

					<div style="text-align: center" style="margin-top: 25px">
						<a href=""><img width="325px" height="150px" src="picture//chwl1.jpg"></a>
						<div style="padding: 15px">
						<a href=""><img width="150px" height="150px" src="picture//chwl2.jpg" style="margin-right: 15px;"></a>
						<a href=""><img width="150px" height="150px" src="picture//chwl3.jpg" style=""></a>
						</div>
						
					</div>
				</div>
			</div>
		</div>

		<hr>
		<div style="text-align: center">
			<span style="font-size: 28px;">——&nbsp;特色推荐&nbsp;——</span>
		</div>
		<div class="row"><br><br>

				<!-- 商品 -->
				<div id="tsshop" class="carousel slide" style="text-align: center">
					<div class="carousel-inner" style="width: 1170px;">
					<!-- 第一组图片 -->
					<div class=" item active" align="center">
					<div class="col-xs-4">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">设计师推荐&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">全球设计精选</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj1.jpg"></a>
						</div>
						</div>
					</div>
					<div class="col-xs-4 ">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;"">陪伴宝宝&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">0元试打牌</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj2.jpg"></a>
						</div>
						</div>
					</div>
					<div class="col-xs-4 ">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">品牌特卖&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">品牌限时特卖</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj3.jpg"></a>
						</div>
						</div>
					</div>

					</div>

					<!-- 第二组图片 -->
					<div class="item " align="center" >
					<div class="col-xs-4">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">环球时尚&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">环球名品，奢华精选</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj4.jpg"></a>
						</div>
						</div>
					</div>
					<div class="col-xs-4 ">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">企业采购&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">9.9元抢户外设备</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj5.jpg"></a>
						</div>
						</div>
					</div>
					<div class="col-xs-4 ">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">旅行计划&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">开心旅行</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj6.jpg"></a>
						</div>
						</div>
					</div>
					</div>

					<!-- 第三组图片 -->
					<div class="item" align="center">
					<div class="col-xs-4">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">购物扶贫&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">买特产、帮扶贫</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj7.jpg"></a>
						</div>
						</div>
					</div>
					<div class="col-xs-4 ">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">购物白条&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">最高12期免息</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj8.jpg"></a>
						</div>
						</div>
					</div>
					<div class="col-xs-4 ">
						<div class="panel" style="height:400px;width: 300px">
						<a href="" class="titlehead"><p style="padding-left: 0px;padding-top: 15px"><font style="font-size: 24px;">司法拍卖&nbsp;<span class="glyphicon glyphicon-play-circle" style="color: #e83632"></span></font><font class="smallfaded">法院好货，公开拍卖</font></p></a>
						<div style="text-align: center">
							<a href=""><img width="250" height="300px" src="picture//tstj9.jpg"></a>
						</div>
						</div>
					</div>
					</div>
					<!-- 指示灯 -->
					<ol class="carousel-indicators" style="bottom:-16px;">
						<li data-target='#tsshop' data-slide-to='0' class="active"></li>
						<li data-target='#tsshop' data-slide-to='1' ></li>
						<li data-target='#tsshop' data-slide-to='2' ></li>
					</ol>
						
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control" href="#tsshop"  role="button" style="left:-80px;top: -25px" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>
					    <span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control" href="#tsshop" style="left: 1075px;top: -25px" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					</a>
				</div>
		</div><br><br>

	<hr><br><br>
	<div class="container"  style="text-align: center">
		<div class="row">
			<img src="image/street.jpeg" style="margin-top:-30px">
		</div><br>
		<div style="" >
			<div class="row" >
				<div class="col-xs-2"><a href="">关于我们</a></div>
				<div class="col-xs-2"><a href="">联系我们</a></div>
				<div class="col-xs-2"><a href="">联系客服</a></div>
				<div class="col-xs-2"><a href="">合作招商</a></div>
				<div class="col-xs-2"><a href="">商家帮助</a></div>
				<div class="col-xs-2"><a href="">营销中心</a></div>
			</div>
		</div>
		<div style="width: 1000px;font-size: 8px">
			<br>
			京公网安备 110000020006666号&nbsp;|&nbsp;京ICP证076666号&nbsp;|&nbsp;
			&nbsp;互联网出版许可证编号新出网证(京)字150号&nbsp;|&nbsp;
			&nbsp;出版物经营许可证
			<br>
			赞助商：华南农业大学 &nbsp;; 公司所有：17信管1班426寝室
			<br>
			<br>
		</div>
	</div><br><br>

  </body>

<!-- 公告 -->
  <script>
  $('.im-idx').mouseenter(function(){
  	$(this).addClass('active');
  	$('.im-idx').not($(this)).removeClass('active');

  	idx=$(this).index('.im-idx');
  	$('.im-row').eq(idx).show(100);
  	$('.im-row').not($('.im-row').eq(idx)).hide();
  });

  $('.im-row').eq(0).show(100);
  </script>

<!-- 秒杀脚本 -->
	<script type="text/javascript">
	$(document).ready(function(){
    $('#msshop').carousel()
   	})
	</script>

<!-- 排行榜 -->
  <script>
  $('.im-phb').mouseenter(function(){
  	$(this).addClass('tab_active');
  	$('.im-phb').not($(this)).removeClass('tab_active');

  	phb=$(this).index('.im-phb');

  	$('.im-phb-div').eq(phb).show(100);
  	$('.im-phb-div').not($('.im-phb-div').eq(phb)).hide();
  });

  $('.im-phb-div').eq(0).show();
  </script>

<!-- 会买脚本 -->
	<script type="text/javascript">
	$(document).ready(function(){
    $('#hmshop').carousel()
   	})
	</script>

	<!-- 会买脚本 -->
	<script type="text/javascript">
	$(document).ready(function(){
    $('#mmshop').carousel()
   	})
	</script>

	<!-- 特色脚本 -->
	<script type="text/javascript">
	$(document).ready(function(){
    $('#tsshop').carousel()
   	})
	</script>


</html>
