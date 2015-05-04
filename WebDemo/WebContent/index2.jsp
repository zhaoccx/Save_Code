<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	你好。
	<br>
	<!-- abc -->
	<%-- jsp --%>
	<%!String s = "我";

	int add(int x, int y) {
		return x + y;
	}%>
	<%
		// sfsk
		out.println("什么情况？");
		out.print(add(1, 3));
	%>
	你好啊。<%=s%><br> x+y =
	<%=add(45, 45)%><br> 九九乘法表：<br>

	<%!int chengfa(int x, int y) {
		return x * y;
	}%>

	<%
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++) {
				if (i == j) {
					out.print(i + "*" + j + "=" + chengfa(i, j) + "<br>");
				}
				else {
					out.print(i + "*" + j + "=" + chengfa(i, j) + "\t");
				}
			}
		}
	%>
	
	<br>
	<%=PageContext.APPLICATION_SCOPE %><br>
	<%=PageContext.SESSION_SCOPE %><br>
	<%=PageContext.REQUEST_SCOPE %><br>
	<%=PageContext.PAGE_SCOPE %><br>
</body>
</html>
