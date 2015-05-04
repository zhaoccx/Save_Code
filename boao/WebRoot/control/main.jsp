<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html>
<head>
<base href="<%=basePath%>" />

<title>博奥好学网后台管理系统</title>


</head>

<frameset rows="64,*" style="frameborder:NO: border:0; framespacing:0"> 
	<frame src="admin_top.jsp" noresize="noresize" style="frameborder:NO;target:main" name="topFrame" scrolling="no" marginwidth="0" marginheight="0"  /> 
	<frameset cols="200,*" rows="560,*" id="frame"> 
		<frame src="left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" style="target:main" />
		<frame src="home.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" style="target:_self" />
		<frame src="else/button_left.html"/>
		<frame src="else/button.html"/>
	</frameset>
</frameset>

</html>
