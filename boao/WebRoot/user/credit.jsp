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
	$(function() {
		replace("top/", "top");
		replace("header/","header");
		replace("left/","left",{current:"credit"});
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
				<!-- user-points start -->
				<div class="user-points">
					<div class="cur-points">
						我的信用值：<span>9999</span>
					</div>

					<div class="use-points">
						&nbsp;&nbsp;博奥信用说明:<br /> <a href="#" target="_blank">什么是博奥信用？</a> <a href="#" target="_blank">如何获得博奥平台的信用？</a>
					</div>
				</div>
				<div class="lmc-cond">
					<ul>
						<li class="current"><a href="#">信用记录</a></li>
					</ul>
				</div>
				<div class="rightfoot">
					<div class="fenye">
						<div class="pg"></div>
					</div>
				</div>
				<div class="money-detail">
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="money-table">
						<tbody>
							<tr>
								<th width="20%"><strong>日期</strong></th>
								<th width="10%"><strong>信用变化</strong></th>
								<th width="70%"><strong>详情</strong></th>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red">+999</span></td>
								<td>身份证认证</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red">+999</span></td>
								<td>手机认证</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red">+999</span></td>
								<td>邮箱认证</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red">+999</span></td>
								<td>实名认证</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red">+999</span></td>
								<td>工商营业执照认证</td>
							</tr>
						</tbody>
					</table>
					<div class="rightfoot">
						<div class="fenye">
							<div class="pg"></div>
						</div>
					</div>
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