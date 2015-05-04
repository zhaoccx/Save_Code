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
		replace("header/", "header");
		replace("left/", "left", {
			current : "balance"
		});
		replace("balanceList/", "body-content");
	});
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header"></div>
	<!-- user-content start -->
	<div class="user-content">
		<div id="body-content"></div>
		<div id="left"></div>
	</div>
	<!-- 页脚 -->
	<div class="footer">2013 &copy; 博奥好学网&nbsp; POWER BY YAONIMING3000.</div>

</body>
</html>