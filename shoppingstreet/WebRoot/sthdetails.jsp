<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>

<!doctype html>
<html>
<head>
	<base href="<%=basePath%>">
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	
	<style type="text/css">
		body{
			padding-top: 75px; 
			background-color: #f4f4f4;
		}
		.tab-pane{
			display:none;
		 }
	</style>
</head>

<body>

<div class="container">
<jsp:include page="nav.jsp"></jsp:include>
    <div class="container">
        <div class="jumbotron" style="background-image: url(picture/10458PIC2nv_1024.jpg)">
            <h1>宜家0803</h1>

            <p><a class="btn btn-primary btn-lg" href="#" role="button">进入店铺</a></p>
        </div>

        <div class="row my-6">
            <div class="col-md-6">

                <div id="mycarousel" class="carousel slide" data-ride='carousel'>
				<!-- 幻灯片图片 -->
				<div class="carousel-inner" style="width: 500px;">
					<div class="item active" style="">
						<img src="picture/blackshoe.JPG" width="555px" height="470px">
					</div>
					<div class="item">
						<img src="picture/redshoe.JPG">
					</div>
					<div class="item">
						<img src="picture/slivershoe.JPG">
					</div>
				</div>

				<!-- 指示灯 -->
				<ol class="carousel-indicators">
					<li data-target='#mycarousel' data-slide-to='0' class="active"></li>
					<li data-target='#mycarousel' data-slide-to='1' ></li>
					<li data-target='#mycarousel' data-slide-to='2' ></li>
				</ol>

				
			</div>
			
            </div>

            <div class="col-md-6">
                <h3>
                    NIKE AIR MAX 2017 男子气垫跑步运动鞋
                </h3>
                <h3>
                    价格 <strong> &nbsp &nbsp1699</strong>
                </h3>
                <h3>尺码 &nbsp &nbsp &nbsp &nbsp
                    <div class="btn-group btn-group-lg" role="group" aria-label="...">
                        <button type="button" class="btn btn-default">40</button>
                        <button type="button" class="btn btn-default">41</button>
                        <button type="button" class="btn btn-default">42</button>
                    </div>
                </h3>
                <h3>
                    颜色分类 &nbsp &nbsp
                    <div class="btn-group btn-group-lg" role="group" aria-label="...">
                        <button type="button" class="btn btn-default">煤炭黑</button>
                        <button type="button" class="btn btn-default">哈瓦那红</button>
                        <button type="button" class="btn btn-default">金属银</button>
                    </div>
                </h3>

                <div>
                    <h3 style="float: left">
                        数量 &nbsp &nbsp
                        <div class="dropdown" style="float: right">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false">
                                1
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">&nbsp 1</a></li>
                                <li><a href="">&nbsp 2</a></li>
                                <li><a href="">&nbsp 3</a></li>
                                <li><a href="">&nbsp 4</a></li>
                                <li><a href="">自定义</a></li>
                            </ul>
                        </div>
                    </h3>
                </div>


            </div>
        </div>
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <br> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <button class="btn btn-large" type="button">加入购物车</button>
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <button class="btn btn-large" type="button">立即购买</button>
    </div>

    <br><br><br>




    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <ul class="nav nav-pills  nav-stacked">
                    <li role="presentation" class="active im-idx"><a href="" class="active nav-link" data-toggle="pill" data-target="#tabone">商品详情</a>
                    </li>
                    <li role="presentation" class="im-idx"><a class="nav-link" href="" data-toggle="pill" data-target="#tabtwo">客户评价</a>
                    </li>
                    <li role="presentation" class="im-idx"><a href="" class="nav-link" data-toggle="pill" data-target="#tabthree">专享服务</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-9">
                <div class="">
                    <div class="tab-pane " id="tabone" role="tabpanel">
                        <p class="">织物和合成材质组合成球面，兼顾柔软性和结构感<br>
			                          Flynit结构，富有弹性且支撑力出众<br>
			                          	尽在关键部位融入匠心缓震技术，塑就柔韧灵活表现</p>
                    </div>
                    <div class="tab-pane " id="tabtwo" role="tabpanel">
                        <p class=""> I am alone, and feel the charm of existence in this spot, which was created for the
                            bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense
                            of mere tranquil existence, that I neglect my talents.</p>
                    </div>
                    <div class="tab-pane " id="tabthree" role="tabpanel">
                        <p class="">此说明仅当出现价格比较时有效，具体参见《淘宝价格发布规范》。若商家单独对划线价格进行说明的，以商家的表述为准。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>



<div class="row">
    <div class="col-md-6">
        <h3>注册会员</h3>
        <p class="text-muted">December 12-8, 2018</p>
        <p class="my-3">
            注册会员享受8.8折<br>广东省广州市
        </p>
        <a class="btn btn-lg btn-primary" href="#">立即注册</a>
    </div>
    <div class="col-md-6">
        <h3>Contact us</h3>
        <form>
            <fieldset class="form-group my-3">
                <input type="email" class="form-control" id="Input Email" placeholder="Email"></fieldset>
            <fieldset class="form-group my-3">
                <input type="message" class="form-control" id="Input Message" placeholder="Message"></fieldset>
            <button type="submit" class="btn btn-outline-primary">Submit</button>
        </form>
    </div>

</div>

</div>

		<br><br><br><br>
		<jsp:include page="btap.jsp"></jsp:include>
</body>

<!-- 公告 -->
  <script>
 	$('.im-idx').click(function(){
  	$(this).addClass('active');
  	$('.im-idx').not($(this)).removeClass('active');

  	idx=$(this).index('.im-idx');
  	$('.tab-pane').eq(idx).show(100);
  	$('.tab-pane').not($('.tab-pane').eq(idx)).hide();
  });

  $('.tab-pane').eq(0).show(100);
  </script>
</html>
