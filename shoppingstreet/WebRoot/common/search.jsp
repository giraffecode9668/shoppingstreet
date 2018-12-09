<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<base href="<%=basePath%>">
	<title>search</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/holder.js"></script>

	<style>
		body{
			padding-top: 15px;
		}
		.inred{
			color: red;
		}

		li.active{
			border-top: none;
		}

		.linered{
			border-top:solid 2px red;
			width: 100%!important;
			/*border-style: red;*/
			/*border:solid 2px red;*/
		}

		li.active{
			/*margin: 0 0 0 0 !important;*/
		}

	

		img{
			padding-top:30px; 
		}

		/*筛选*/
		.clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
		.clearfix{display:inline-table;}
		*html .clearfix{height:1%;}
		.clearfix{display:block;}
		*+html .clearfix{min-height:1%;}
		/* siftbox */
		.siftbox{padding:10px 0 10px 36px;background:#F2F2F2;border-bottom:solid 1px #CCCCCC;}
		.siftbox .label{float:left;margin-top:2px;font-size:14px;font-weight:800;color: black}
		.siftbox #condition{float:left;}
		/*.siftbox .inbtn,.siftbox .inbtn span{background:url(images/closelabel.png) no-repeat;cursor:pointer;}*/
		.siftbox .inbtn{display:inline-block;height:17px;line-height:17px;overflow:hidden;margin:4px 8px 0 0;float:left;background-position:0 0;padding:0 0 0 20px;}
		.siftbox .inbtn span{background-position:100% 0;display:block;float:left;padding:0 5px 0 0;}
		/*.siftbox .inbtn:hover{background-position:0 -17px;text-decoration:none;}*/
		.siftbox .inbtn:hover span{background-position:100% -17px;color:#5e5e5e;text-decoration:none;}
		/* sortbox */
		.sortbox{border-width:1px 1px 0px 1px;border-color:#cccccc #cccccc #cccccc #cccccc;border-style:solid;margin:10px auto 0 auto;}
		.sortbox dl{padding:0 0 15px 110px;border-bottom:solid 1px #cccccc;vertical-align:bottom;}
		.sortbox dl dt{float:left;width:110px;margin:15px 0 0 -110px;text-align:right;line-height:16px;display:inline;font-weight:800;font-size:14px;color:#404040;}
		.sortbox dl dd{float:left;margin:12px 18px 0 0;display:inline;}
		.sortbox dl dd a{cursor:pointer;white-space:nowrap;}
		.sortbox dl dd a.seling{background-color:#005AA0;color:#FFFFFF;}
		.sortbox dl dd a.seled{background-color:#005AA0;color:#FFFFFF;}

	</style>
</head>
<body >
	<!-- 行头 -->
	<div class="row">
		<div class="col-xs-3 col-md-2 col-xs-offset-1 col-md-offset-1"><h2 class="inred">购物街</h2></div>
		<div class="col-xs-5 col-md-6 ">
			<form class="">
				 <div class="input-group " style="padding-top: 20px">
				  <input type="text" class="form-control" placeholder="搜索商品">

			        <span class="input-group-btn">
			        	<!-- <button class="btn btn-default border='0px'"><span class="glyphicon glyphicon-camera"></span></button> -->
			        	
					    <button class="btn btn-danger" type="button">&nbsp&nbsp搜索&nbsp&nbsp</button>
				  </span>
				</div>
			</form>
		</div>
		<div class="col-xs-3 col-md-2" style="padding-top: 20px; ">
			<div class="dropdown"  >
			  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><font style="color:red">我的购物车&nbsp
			  	<span class="glyphicon glyphicon-shopping-cart"></span></font>

			  </button>
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
					    <li><a href="#">Action</a></li>
					    <li><a href="#">Another action</a></li>
					    <li><a href="#">Something else here</a></li>
					    <li role="separator" class="divider"></li>
					    <li><a href="#">Separated link</a></li>
					  </ul>
				</div>
		</div>
	</div><br><br>

	<!-- 导航 -->
	<div class="container" >
		<ul class="nav nav-pills">
			  <li role="presentation" class="active"><div style="background-color: red;color:white;padding:10px 45px;">全部商品分类</div></li>

			  <li role="presentation" style="padding: 0px 10px"><a href="#">购物街</a></li>
			  <li role="presentation" style="padding: 0px 10px"><a href="#">热销商品</a></li>	
	    </ul>	
	</div>
	<div class="linered"></div>

	<!-- 筛选 -->
	<div class="container">
		
		<div class="sortbox">	
			
			<div class="siftbox clearfix">
				<span class="label">已选条件:</span>
				<div id="condition"></div>
			</div>
			
			<div id="filter">
				<dl class="clearfix">
					<dt>品牌：</dt>
					<dd><div><a>全部</a></div></dd>
					<dd><div><a>惠普(hp)</a></div></dd>
					<dd><div><a>联想(Lenovo)</a></div></dd>
					<dd><div><a>联想(ThinkPad)</a></div></dd>
					<dd><div><a>宏基(acer)</a></div></dd>
					<dd><div><a>华硕</a></div></dd>
					<dd><div><a>戴尔</a></div></dd>
					<dd><div><a>三星</a></div></dd>
					<dd><div><a>索尼</a></div></dd>
					<dd><div><a>东芝</a></div></dd>
					<dd><div><a>Gateway</a></div></dd>
					<dd><div><a>微星</a></div></dd>
					<dd><div><a>海尔</a></div></dd>
					<dd><div><a>清华同方</a></div></dd>
					<dd><div><a>富士通</a></div></dd>
					<dd><div><a>苹果(Apple)</a></div></dd>
					<dd><div><a>神舟</a></div></dd>
					<dd><div><a>方正</a></div></dd>
					<dd><div><a>优雅</a></div></dd>
				</dl>
				<dl class="clearfix">
					<dt>价格：</dt>
					<dd><div><a>全部</a></div></dd>
					<dd><div><a>1000-2999</a></div></dd>
					<dd><div><a>3000-3499</a></div></dd>
					<dd><div><a>3500-3999</a></div></dd>
					<dd><div><a>4000-4499</a></div></dd>
					<dd><div><a>4500-4999</a></div></dd>
					<dd><div><a>5000-5999</a></div></dd>
					<dd><div><a>6000-6999</a></div></dd>
					<dd><div><a>7000-9999</a></div></dd>
					<dd><div><a>10000以上</a></div></dd>
				</dl>
				<dl class="clearfix">
					<dt>尺寸：</dt>
					<dd><div><a>全部</a></div></dd>
					<dd><div><a>8.9英寸及以下</a></div></dd>
					<dd><div><a>11英寸</a></div></dd>
					<dd><div><a>12英寸</a></div></dd>
					<dd><div><a>13英寸</a></div></dd>
					<dd><div><a>14英寸</a></div></dd>
					<dd><div><a>15英寸</a></div></dd>
					<dd><div><a>16英寸-17英寸</a></div></dd>
				</dl>
				<dl class="clearfix">
					<dt>平台：</dt>
					<dd><div><a>全部</a></div></dd>
					<dd><div><a>AMD Brazos APU平台</a></div></dd>
					<dd><div><a>Intel Sandy Bridge平台</a></div></dd>
					<dd><div><a>Intel平台</a></div></dd>
					<dd><div><a>AMD平台</a></div></dd>
				</dl>
				<dl class="clearfix">
					<dt>显卡：</dt>
					<dd><div><a>全部</a></div></dd>
					<dd><div><a>独立显卡</a></div></dd>
					<dd><div><a>集成显卡</a></div></dd>
					<dd><div><a>核芯显卡</a></div></dd>
				</dl>
			</div>
			
		</div>
	<hr></div>
	
	<!-- 排序 -->
	<div class="container">
	<div class="btn-group ">
		<button type="button" class="btn btn-default active sortshop">综合&nbsp<span class="glyphicon glyphicon-arrow-down"></span></button>
		<button type="button" class="btn btn-default sortshop">销量&nbsp<span class="glyphicon glyphicon-arrow-down"></span></button>
		<button type="button" class="btn btn-default sortshop">评论数&nbsp<span class="glyphicon glyphicon-arrow-down"></span></button>
		<button type="button" class="btn btn-default sortshop">新品&nbsp<span class="glyphicon glyphicon-arrow-down"></span></button>
		<button type="button" class="btn btn-default sortshop">价格&nbsp<span class="glyphicon glyphicon-resize-vertical"></span></button>
	</div>
	</div>


	<!-- 商品列表 -->
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
			<div class="col-sm-6 col-md-3"><img src="holder.js/263x300"></div>
		</div>
	</div><br><br><br><br>

	<!-- 翻页 -->
	<div class="container" >

		<div  align="center">
			<div class="btn-group">
				<button class="btn btn-default disabled "><span class="glyphicon glyphicon-chevron-left"></span>&nbsp上一页</button>
			</div>
			<div class="btn-group ">
				<button class="btn btn-default active">1</button>
				<button class="btn btn-default">2</button>
				<button class="btn btn-default">3</button>
				<button class="btn btn-default">4</button>
				<button class="btn btn-default">5</button>
				<button class="btn btn-default">6</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-default">下一页&nbsp<span class="glyphicon glyphicon-chevron-right"></span></button>
			</div>
		</div>
	</div><br><br>

	<hr>
	<div class="container" style="" align="center">
		<div class="row">
			<img src="../image/street.jpeg" style="margin-top:-30px">
		</div><br>
		<div  style="width: 700px">
			<div class="row">
				<div class="col-xs-2"><a href="">关于我们</a></div>
				<div class="col-xs-2"><a href="">联系我们</a></div>
				<div class="col-xs-2"><a href="">联系客服</a></div>
				<div class="col-xs-2"><a href="">合作招商</a></div>
				<div class="col-xs-2"><a href="">商家帮助</a></div>
				<div class="col-xs-2"><a href="">营销中心</a></div>
			</div>
		</div>
		<div style="width: 1000px"></div>
			<br>
			京公网安备 110000020006666号&nbsp|&nbsp京ICP证076666号&nbsp|&nbsp
			&nbsp互联网出版许可证编号新出网证(京)字150号&nbsp|&nbsp
			&nbsp出版物经营许可证
			<br>
			赞助商：华南农业大学 &nbsp 公司所有：17信管1班426寝室
			<br>
			<br>
		</div>
	</div><br><br>

</body>

		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
		//筛选框
		var abc = [];

		$(function(){
			
			//选中filter下的所有a标签，为其添加hover方法，该方法有两个参数，分别是鼠标移上和移开所执行的函数。
			$("#filter a").hover(function(){
				$(this).addClass("seling");
			},function(){
				$(this).removeClass("seling");
			});

			//选中filter下所有的dt标签，并且为dt标签后面的第一个dd标签下的a标签添加样式seled。(感叹jquery的强大)
			$("#filter dt+dd a").attr("class", "seled"); /*注意：这儿应该是设置(attr)样式，而不是添加样式(addClass)，
			不然后面通过$("#filter a[class='seled']")访问不到class样式为seled的a标签。*/       

			//为filter下的所有a标签添加单击事件
			$("#filter a").click(function(){
				$(this).parents("dl").children("dd").each(function(){
					$(this).children("div").children("a").removeClass("seled");
				});
			
				$(this).attr("class", "seled");
				var needhide = $(this);
				needhide.parentsUntil("dl").parent().hide();
				abc.push(needhide);
				var val = $(this).html().replace(/ /g, "kongge");
				var condition = '<a class="inbtn pzbtn" rel="'+$(this).html()+'"><span onclick=deleteC("'+val+'")>'+$(this).html()+'</span></a>';
				$("#condition").append(condition);
				// alert(RetSelecteds()); //返回选中结果
			});
		// alert(RetSelecteds()); //返回选中结果
		});

		function deleteC(v){
			var val = v.replace(/kongge/g, " ");
			$("#condition").find("a[rel='"+val+"']").remove();
			for(var i = 0; i<abc.length; i++){
				if(abc[i].html() == val){
					abc[i].parentsUntil("dl").parent().show();
					abc.splice(i, 1);
					i--;
				}else{
					abc[i].parentsUntil("dl").parent().hide();
				}
			}
		}

		function RetSelecteds(){
			var result = "";
			$("#filter a[class='seled']").each(function(){
				result += $(this).html()+"\n";
			});
			return result;
		}
		</script>

		<script>
		// 商品排序
			$('.sortshop').click(function(){
			$(this).addClass('active');
			$('.sortshop').not($(this)).removeClass('active');
		});
		</script>
</html>
