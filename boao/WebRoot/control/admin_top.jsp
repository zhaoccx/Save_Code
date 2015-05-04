<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<link href="css/skin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function logout() {
		var result = confirm("您确定要退出");
		if (result) {
			parent.location.replace("../admin/logout");
		}
	}
</script>
</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
		<tr>
			<td width="61%" height="64"><img src="images/logo.gif" width="262" height="64" /></td>
			<td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="74%" height="38" class="admin_txt">管理员: ${ADMIN.username } 您好！上一次登录时间为:<fmt:formatDate value="${ADMIN.lastLoginDate }" pattern="yyyy-MM-dd hh:mm:ss" /> <a href="javascript:logout();"><span style="color:#FFFFFF">退出</span></a>
						</td>
						<td width="22%"></td>
						<td width="4%"></td>
					</tr>
					<tr>
						<td height="19" colspan="3"></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
