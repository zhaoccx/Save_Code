<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
replace("admin/assistList","top",{kind:"帮助中心",limit:5,num:4});
</script>
</HEAD>
<body>
	<div id="top"></div>
	<br />
	<form action="testUpload" method="post" enctype="multipart/form-data">
		<input type="file" name="file" /><br /> <input type="submit" value="提交" />
	</form>
	<br />
	<img alt="上传后的图片" src="${PICSERVER}/${PATH}">
	<div id="map">
		<input type="hidden" id="addr" name="addr" value="深圳沙河医院" />
		<%@include file="baidumap.jsp"%>
	</div>
	<c:forEach var="item" items="${ARTICLE_KINDS }">
${item }<br>
	</c:forEach>
</body>
</HTML>