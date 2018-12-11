<%@ page language="java" import="java.util.*" pageEncoding="utf-8" buffer="none" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'btap.jsp' starting page</title>

    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style>
        .font_m {
            font-size: 20px;
        }

        .font_s {
            font-size: 12px;
        }
    </style>

</head>

<body>
<br>
<hr>
<div class="container" align="center">
    <div class="row">
        <img src="image/street.jpeg" style="">
    </div>
    <br>
    <div style="width: 700px">
        <div class="row font_m" style="size: 18px">
            <div class="col-xs-2"><a href="">关于我们</a></div>
            <div class="col-xs-2"><a href="">联系我们</a></div>
            <div class="col-xs-2"><a href="">联系客服</a></div>
            <div class="col-xs-2"><a href="">合作招商</a></div>
            <div class="col-xs-2"><a href="">商家帮助</a></div>
            <div class="col-xs-2"><a href="">营销中心</a></div>
        </div>
    </div>
    <div style="width: 1000px" class="font_s">
        <br>
        京公网安备 110000020006666号&nbsp|&nbsp京ICP证076666号&nbsp|&nbsp
        &nbsp互联网出版许可证编号新出网证(京)字150号&nbsp|&nbsp
        &nbsp出版物经营许可证
        <br>
        赞助商：华南农业大学 &nbsp 公司所有：17信管1班426寝室
        <br>
        <br>
    </div>
    <br><br>
</div>>
</body>
</html>
