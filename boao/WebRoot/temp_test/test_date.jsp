<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<base href="<%=basePath%>">

<script type="text/javascript" src="js/jquery-1.6.3.js"></script>
<script type="text/javascript" src="js/common.js"></script>

</HEAD>
<body>
	<div id="top"></div>
	<br />
	<form action="testDate" method="post">
		<input type="hidden" name="date" value="2013-05-04 09:14:36" /><br /> <input type="submit" value="提交" />
	</form>
	<br /> ${DATE.hours}
	<br>
	<br>
	<c:if test="${DATE.hours eq 0}">
		<fmt:formatDate value="${DATE }" pattern="yyyy-MM-dd" />
	</c:if>
	<c:if test="${DATE.hours != 0}">
		<fmt:formatDate value="${DATE }" pattern="yyyy-MM-dd HH:mm:ss" />
	</c:if>
</body>
</HTML>