<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8" buffer="none"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+request.getServletPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    <title>Login</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/loginStyle.css">
    <script src="js/login.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.js"></script>

</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>

<div id="content">
    <div class="login-wrap">
        <div class="w">
            <div class="login-form">
                <div class="tips-wrapper">
                    <div class="tips-inner">
                        <div class="cont-wrapper">
                            <i class="icon-tips"></i>
                            <p>购物街不会以任何理由要求您转账汇款，谨防诈骗。</p>
                        </div>
                    </div>
                </div>
                <div onclick="login_l()" class="login-tab login-tab-l">
                    <a href="#" >扫码登录</a>
                </div>
                <div onclick="login_r()" class="login-tab login-tab-r">
                    <a href="#" >账户登录</a>
                </div>
                <div class="login-box">
                    <div class="mt tab-h">
                    </div>
                    <div class="msg-wrap">
                        <div class="msg-error hide"><b></b></div>
                    </div>
                    <div class="mc">
                        <div class="form">
                            <form id="formlogin" method="post" action="login">
                                <div class="item item-fore1">
                                    <label for="loginname" class="login-label name-label"></label>
                                    <input id="loginname" type="text" class="itxt" name="loginname" tabindex="1"
                                           autocomplete="off"
                                           value=""
                                           placeholder="邮箱/用户名/已验证手机"/>
                                    <span class="clear-btn"></span>
                                </div>

                                <div id="entry" class="item item-fore2">
                                    <label class="login-label pwd-label" for="nloginpwd"></label>
                                    <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error"
                                           tabindex="2" autocomplete="off" placeholder="密码"/>
                                    <span class="clear-btn"></span>
                                    <span class="capslock"><b></b>大小写锁定已打开</span>
                                </div>

                                <div class="item item-fore4">
                                    <div class="safe">
                                        <span>
                                        </span>
                                        <span class="forget-pw-safe">
											<a>忘记密码</a>
										</span>
                                    </div>
                                </div>

                                <div class="item item-fore5">
                                    <div class="login-btn">
                                        <input type="submit" class="btn-img" value="登&nbsp;&nbsp;&nbsp;&nbsp;录"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="qrcode-login">
                    <div class="mc">
                        <div class="qrcode-main">
                            <div class="qrcode-img" align = "center">
                                <img src="image/ercode.png" alt="">
                            </div>
                        </div>
                        <div class="qrcode-panel">
                            <ul>
                                <li class="fore1">
                                    <span>打开</span>
                                    <a href="about:blank" target="_blank">
                                        <span class="red">手机购物街</span></a>
                                </li>
                                <li>扫描二维码</li>
                            </ul>
                        </div>
                        <div class="coagent qr-coagent" id="qrCoagent">
                            <ul>
                                <li><b></b><em>免输入</em></li>
                                <li><b class="faster"></b><em>更快</em></li>
                                <li><b class="more-safe"></b><em>更安全</em></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="coagent" id="kbCoagent">
                    <ul>
                        <li>
                            <b></b>
                            <a href="about:blank" class="pdl"><b
                                    class="QQ-icon"></b><span>QQ</span></a>
                            <span class="line">|</span>
                        </li>
                        <li>
                            <a href="about:blank" class="pdl"><b
                                    class="weixin-icon"></b><span>微信</span></a>
                        </li>
                        <li class="extra-r">
                            <div>
                                <div class="regist-link"><a
                                        href="reg.jsp"
                                        clstag="pageclick|keycount|login_pc_201804112|5"
                                        target="_blank"><b></b>立即注册</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="login-banner" clstag="pageclick|keycount|20150112ABD|46">
            <div class="w">
                <div class="i-inner" clstag="pageclick|keycount|20150112ABD|46" id="banner-bg"
                     style="background: #53a9f4 url(./image/fa83fc144f93b9f2.jpg) no-repeat 0 0;">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>