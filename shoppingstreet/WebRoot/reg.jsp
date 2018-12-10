<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
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
				<form class="form-container" id="regFrmId">
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
								<input autocomplete="off" class="form-input autocomplete-input" id="emailId" maxlength="50" name="eptUser.email" style="width: 422px; height: 18px;" tabindex="1" type="text" msg-emailCheckExistError="Email verification failed. Please try again later." msg-emailFormat="Please enter a valid email address" msg-emailEmpty="Please enter your email address" msg-emailLen="Maximum 50 characters" placeholder="账号" />
							</div>
						</div><div class="msg-tip"><i class="i-tip"></i><em></em></div>
						<div class="proposal-box" style="width: 440px; top: 38px;"></div>
					</div>
					<div class="pwd-box">
						<div class="form-line">
							<div class="form-label"><i class="i-pwd"></i></div>
							<div class="form-info">
								<input class="form-input" id="pwdId" maxlength="16" name="eptUser.password" tabindex="2" type="password" msg-pwdEnTips="Password must be a combination of English letters, numbers, and special characters." msg-pwdStrengthOrdinary="Medium" msg-pwdStreng="Password must be a combination of letters, numbers, and special characters" msg-pwdStrengthEasy="Weak" msg-pwdStrengthSimple="Password is too weak, please do not use continuous numbers or letters.  " msg-pwdStrengthSecrecy="Strong" msg-pwdLen="Enter 6-16 characters" msg-pwdEmpty="Please enter password" placeholder="密码" />
							</div>
						</div>
						<div class="note-tip" id="login_err1"><i class="i-note"></i>
							<label>6-16 字符, containing at least two characters from the following categories: letters, numbers, special characters</label></div>
					</div>

					<div class="pwd-box">

						<div class="form-line">
							<div class="form-label"><i class="i-pwd"></i></div>
							<div class="form-info">
								<input class="form-input" id="pwdId2" maxlength="16" name="pwdRepeat" tabindex="3" type="password" msg-confirmPwdEmpty="Re-enter password" msg-pwdStrengthOrdinary="Medium" msg-pwdStreng="Password must be a combination of letters, numbers, and special characters" msg-pwdStrengthEasy="Weak" msg-pwdStrengthSimple="Password is too weak, please do not use continuous numbers or letters.  " msg-pwdStrengthSecrecy="Strong" msg-pwdLen="Enter 6-16 characters" msg-pwdEmpty="Please enter password" msg-confirmPwdDif="Passwords do not match" placeholder="请再次输入密码" />
							</div>
						</div>
					</div>

					<div class="form-line border-none mt30">
						<a class="btn-common btn-submit btn-disabled" href="#none" id="login-btn" tabindex="5">Register</a></div>

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