<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'dogin.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<h1>登录页面</h1>
	<form action="dologin.jsp" name="loginName" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input name="username" type="text"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input name="password" type="password"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input type="checkbox" name="fav" value="电脑">电脑
					<input type="checkbox" name="fav" value="电话">电脑
					<input type="checkbox" name="fav" value="手机">电脑
					<input type="checkbox" name="fav" value="电影">电脑
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交一下吧。"></td>
			</tr>
		</table>

	</form>
	
	<br>
	<br>
	
	<a href="dologin.jsp?username=你好。" >URL传统</a>
</body>
</html>
