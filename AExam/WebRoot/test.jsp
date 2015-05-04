<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="styles.css">


</head>
<script type="text/javascript" src="/Exam/js/jquery-1.5.2.min.js"></script>
<script type="text/javascript">
	function show() {
		location.href = "index.jsp";
	}
</script>

<script type="text/javascript" language="javascript">
	function sendAjax() {
		$.ajax({
			type : "POST",
			url : "managershowTeacherByAjaxAction.action",
			dataType : "text",
			success : function(msg) {
				alert("Data Saved: " + msg);
			}
		});

	}
</script>

<body>
	<input type="button" onclick="javascript:sendAjax()" value="点击我" />
	<table>
		<thead></thead>
		<tbody>


		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
