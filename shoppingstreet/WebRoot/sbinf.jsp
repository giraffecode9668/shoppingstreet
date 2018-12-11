<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>

<!doctype html>
<html>
<head>

	<base href="<%=basePath%>">
    <link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	 

    <!-- <meta charset="utf-8">
    <title>personal information</title>
    <script src="js/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <script src="js/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script> -->
 <!-- <link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/holder.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
      type="text/css">
<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css"> -->
        <style type="text/css">
	
		body { 
			padding-top: 75px; 
			
		}
		
	</style>
</head>

<body class="container">
<jsp:include page="nav.jsp"></jsp:include>
<div >

    <div class="jumbotron" style="background-image: url(picture/informationbackground.jpg)">
        <h1>个人信息</h1>
        <p></p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">了解更多</a></p>
    </div>
    <ul class="nav nav-pills" role="tablist">
        <li role="presentation" class="active"><a href="#">收藏夹 <span class="badge">42</span></a></li>
        <li role="presentation"><a href="#"> 关注店铺<span class="badge">2</span></a></li>
        <li role="presentation"><a href="#"> 足迹 <span class="badge">3</span></a></li>
        <li role="presentation"><a href="#"> 活动通告 <span class="badge">6</span></a></li>
        <li role="presentation"><a href="#"> 红包领取 <span class="badge">7</span></a></li>
    </ul>

    <br><br>
    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header"> Advertiesment</div>
                        <div class="card-body">
                            <blockquote class="blockquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                                    ante.</p>
                                <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source
                                    Title</cite></footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">

        <center><img alt="140x140" src="picture/truck.jpg">
            <div class="caption">
                <br>
                <p><a href="order.jsp" class="btn btn-primary" role="button">待发货</a></p>
            </div>
        </center>
    </div>

    <div class="col-md-4">


        <center><img alt="140x140" src="picture/cart.jpg">
            <div class="caption">
                <br>
                <p><a href="order.jsp" class="btn btn-primary" role="button">待收货</a></p>
            </div>
        </center>
    </div>

    <div class="col-md-4">

        <center><img alt="140x140" src="picture/comment.png">
            <br><br>

            <p><a href="order.jsp" class="btn btn-primary" role="button">评价</a></p></center>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="text-center col-md-12">
                <h1 class="">其他服务</h1>
            </div>
        </div>
        <div class="row d-flex justify-content-center text-center ">
            <div class="p-3 col-lg-3 col-md-3">
                <div class="card border-0">
                    <div class="card-body p-4"><i class="d-block fa fa-stop-circle mb-2 text-muted fa-4x"></i>
                        <h2 class="mt-3"><b><i style="">&nbsp; </i>开通会员&nbsp;<i style="">&nbsp;</i></b></h2>
                        <ul class="list-unstyled mt-4">
                            <li class="mb-1">One</li>
                            <li class="mb-1">Two</li>
                            <li class="mb-1">Three</li>
                        </ul>
                        <a class="btn mt-3 btn-primary" href="#">Let's Go</a>
                    </div>
                </div>
            </div>
            <div class="p-3 col-lg-3 col-md-3">
                <div class="card border-0">
                    <div class="card-body p-4"><i class="d-block fa fa-circle mb-2 text-muted fa-4x"></i>
                        <h2 class="mt-3"><b>&nbsp; 联系客服&nbsp;&nbsp;</b></h2>
                        <ul class="list-unstyled mt-4">
                            <li class="mb-1">Four</li>
                            <li class="mb-1">Five</li>
                            <li class="mb-1">Six</li>
                        </ul>
                        <a class="btn mt-3 btn-primary" href="#">Start now</a>
                    </div>
                </div>
            </div>
            <div class="p-3 col-lg-3 col-md-3">
                <div class="card border-0">
                    <div class="card-body p-4"><i class="d-block fa fa-circle mb-2 text-muted fa-4x"></i>
                        <h2 class="mt-3"><b>&nbsp; 申请售后&nbsp;&nbsp;</b></h2>
                        <ul class="list-unstyled mt-4">
                            <li class="mb-1">Four</li>
                            <li class="mb-1">Five</li>
                            <li class="mb-1">Six</li>
                        </ul>
                        <a class="btn mt-3 btn-primary" href="#">Start now</a>
                    </div>
                </div>
            </div>
            <div class="p-3 col-lg-3 col-md-3" style="">
                <div class="card border-0">
                    <div class="card-body p-4">
                        <i class="d-block fa fa-stop-circle-o mb-2 text-muted fa-4x"></i>
                        <h2 class="mt-3"><b>&nbsp; 亲情账号&nbsp;&nbsp;</b></h2>
                        <ul class="list-unstyled mt-4">
                            <li class="mb-1">Seven</li>
                            <li class="mb-1">Eight</li>
                            <li class="mb-1">Nine</li>
                        </ul>
                        <a class="btn mt-3 btn-primary" href="#" style="">Let's Go</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
		<br><br><br><br>
		<jsp:include page="btap.jsp"></jsp:include>
</body>
</html>
