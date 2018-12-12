<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" buffer="none"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'nav.jsp' starting page</title>
	<link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript">
  function w_load() {
  var name = request.getServletPath();
	System.out.println(name);
	if(name.eq(index.jsp)){
		$('.nav_in').eq(0).addClass('active');
	}else{
		$('.nav_in').removeClass('active');
	}
  }
	
  </script>
  </head>
  
  <body onload="w_load()">
 	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand " href="index.jsp" >购物街</a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active nav_in"><a href="index.jsp">首页<span class="sr-only">(current)</span></a></li>
	        <li class="nav_in"><a href="#">热销商品</a></li>
	        <li class="dropdown nav_in">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">地址<span class="caret"></span></a>
	          <ul class="dropdown-menu" aria-labelledby="positionMenu">
	            <li role="presentation"><a href="#">广州</a></li>
	            <li role="presentation"><a href="#">深圳</a></li>
	            <li role="presentation"><a href="#">上海</a></li>
                <li role="presentation"><a href="#">杭州</a></li>
                <li role="presentation"><a href="#">天津</a></li>
                <li role="presentation"><a href="#">成都</a></li>
	            <li role="separator" class="divider"></li>
	            <li role="presentation"><a href="#">其他城市</a></li>
	            <li role="separator" class="divider"></li>
	            <li role="presentation"><a href="#">定位我的位置</a></li>
	          </ul>
	        </li>
	      </ul>
    		<form class="navbar-form navbar-left" pothed="post" action="search.jsp">
				 <div class="input-group btn-group-lg">
				  <input type="text" class="form-control" placeholder="搜索商品">
				        <span class="input-group-btn">
				    <button class="btn btn-danger " type="submit"><span class="glyphicon glyphicon-search"></span></button>
				  </span>
				</div>
			</form>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="login.jsp" >登录</a></li>
	        <li><a href="sbinf.jsp" >Zhangsan</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">购物车<span class="caret"></span></a>
  	          <ul class="dropdown-menu">
	            <li><a href="#">$788&nbsp;&nbsp;AOC显示屏</a></li>
	            <li><a href="#">$96&nbsp;&nbsp;&nbsp;&nbsp;良品铺子</a></li>
	            <li><a href="#">$128&nbsp;&nbsp;文轩书店</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="cart.jsp">打开我的购物车</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
  </body>
  
</html>
