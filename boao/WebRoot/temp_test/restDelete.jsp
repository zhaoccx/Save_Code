<%@ page language="java" pageEncoding="UTF-8"%>

<%@taglib prefix="sf" uri="/WEB-INF/spring-form.tld"%>

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

<script type="text/javascript">
</script>
</HEAD>
<body>
	<sf:form action="rest/123/hdr1/33265/" method="put">
		<input type="submit" value="提交" />
	</sf:form>

</body>
</HTML>