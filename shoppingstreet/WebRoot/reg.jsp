<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8" buffer="none"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    <title>Reg</title>
	<link href="css/reg.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	<style>
		body {
			padding-top: 30px
		}
	</style>
</head>
<body>

<div class="reg-bd" id="reg-bd">
	<div class="common-w">
		<div class="wrap clearfix">
			<div class="common-form">
				<h4 class="form-title">Register</h4>
				<form class="form-container" id="regFrmId" action="UsersAction" method="post">
					<input id="uid" name="eptUser.uid" type="hidden" value="d1b1ac52-ef7c-4477-a05b-f076c4710acc" />
					<input name="ReturnUrl" type="hidden" value="https://www.joybuy.com" />
					<input name="eid" type="hidden" value="" />
					<input name="fp" type="hidden" value="" />
					<input name="res" type="hidden" value="" />
					<input id="takId" name="takId" type="hidden" value="" />

					<div class="autocomplete-box">
						<div class="form-line">
							<div class="form-label"><i class="i-account"></i></div>
							<div class="form-info autocomplete-container" style="height: 36px;">
								<input autocomplete="off" class="form-input autocomplete-input" id="name" maxlength="50" name="eptUser.email" style="width: 422px; height: 18px;" tabindex="1" type="text"  placeholder="账号" />
							</div>
						</div><div class="msg-tip"><i class="i-tip"></i><em></em></div>
						<div class="proposal-box" style="width: 440px; top: 38px;"></div>
					</div>
					<div class="pwd-box">
						<div class="form-line">
							<div class="form-label"><i class="i-pwd"></i></div>
							<div class="form-info">
								<input class="form-input" id="pwdId" maxlength="16" name="eptUser.password" tabindex="2" type="password" placeholder="密码" />
							</div>
						</div>
						<div class="note-tip" id="login_err1"><i class="i-note"></i>
							<label>6-16 字符, 只能为字母，数字和下划线</label></div>
					</div>

					<div class="pwd-box">

						<div class="form-line">
							<div class="form-label"><i class="i-pwd"></i></div>
							<div class="form-info">
								<input class="form-input" id="pwdId2" maxlength="16" name="pwdRepeat" tabindex="3" type="password"  placeholder="请再次输入密码" />
							</div>
						</div>
					</div>

					<div class="form-line border-none mt30">
						<input type="submit" class="btn-common btn-submit btn-disabled" href="#none" id="login-btn" tabindex="5" value="Register"/></div>

					<div class="form-line bb-none">
						<label>已有账号？</label><a href="login.jsp">登录</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>