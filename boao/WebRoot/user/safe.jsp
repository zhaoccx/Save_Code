<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/user/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>博奥好学 | 用户中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/user.index.css" />
<script type="text/javascript" src="../js/jquery-1.6.3.js"></script>
<script type="text/javascript" src="../js/common.js"></script>

<script type="text/javascript">
$(function(){
	replace("top/","top");
	replace("header/","header");
	replace("left/","left",{current:"safe"},function(){initLeft();});
	
});
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header"></div>
	<!-- user-content start -->
	<div class="user-content">
		<div class="rightCol">
			<!-- rightBody start -->
			<div class="rightBody">

				<!--
				<span class="zhaq-icon2"> = 未验证
				<span class="zhaq-icon1"> = 已经验证
				
				<a href="#" class="zhaq-btn"><span class="btnspan">立即去设置</span></a>
			 -->
				<h1 class="zhaq-title">账户安全</h1>
				<div class="aq-jb">
					<span class="aq-jb-num">您的账户安全级别为：<strong class="aq-jb-color">高</strong></span> <span class="zhaq-green"></span>
					<div style="clear: both;"></div>
				</div>
				<div class="zhaq-con">
					<ul>
						<li>
							<div class="zhaq-li1">
								<span class="zhaq-icon1"></span><strong>设置密码</strong>
							</div>
							<div class="zhaq-li2">安全强度高的登录密码可以使账号更安全，建议您定期更换密码。</div>
							<div class="zhaq-li3">
								<a href="#">修改&gt;&gt;</a>
							</div>
						</li>
						<li>
							<div class="zhaq-li1">
								<span class="zhaq-icon1"></span><strong>邮箱认证</strong>
							</div>
							<div class="zhaq-li2">您绑定的邮箱为Huang**ding@126.com。</div>
							<div class="zhaq-li3">
								<a href="#">修改》</a>
							</div>
						</li>
						<li>
							<div class="zhaq-li1">
								<span class="zhaq-icon1"></span><strong>手机认证</strong>
							</div>
							<div class="zhaq-li2">您绑定的手机为137****2694。</div>
							<div class="zhaq-li3">
								<a href="#">修改》</a>
							</div>
						</li>
						<li>
							<div class="zhaq-li1">
								<span class="zhaq-icon1"></span><strong>身份认证</strong>
							</div>
							<div class="zhaq-li2">
								您已进行了身份认证。&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="zhaq-btn">查看详情</a>
							</div>
							<div class="zhaq-li3">已认证</div>
						</li>
						<li>
							<div class="zhaq-li1">
								<span class="zhaq-icon1"></span><strong>营业执照认证</strong>
							</div>
							<div class="zhaq-li2">
								您已进行营业执照认证。&nbsp;<a href="#" class="zhaq-btn">查看详情</a>
							</div>
							<div class="zhaq-li3">已认证</div>
						</li>
					</ul>
				</div>



			</div>
			<!-- rightBody end -->

		</div>
		<div id="left"></div>
	</div>
	<!-- 页脚 -->
	<div class="footer">2013 &copy; 博奥好学网&nbsp; POWER BY YAONIMING3000.</div>

</body>
</html>