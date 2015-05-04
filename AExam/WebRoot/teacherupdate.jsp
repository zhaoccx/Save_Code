<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>修改教师信息</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<style type="text/css">
</style>
</head>

<body>
	<table width="1000" align="center">
		<thead>
			<tr>
				<td><img src="images/webtop.jpg" width="1000">
				</td>
			</tr>
		</thead>
		<tbody>
			<tr align="center">
				<td bgcolor="#6633cc">
					<div style="padding-top:50;padding-bottom: 50">
						<s:form name="myform" theme="simple" action="">
							<table width="400" height="400" border="1" bgcolor="#ffffcc">
								<tr>
									<td colspan="2" align="center" height="50" width="400">修改教师信息</td>
								</tr>
								<tr>
									<td width="21%" height="50" align="right">工号</td>
									<td>&nbsp;<s:textfield name="teacher.teachnum" /></td>
								</tr>
								<tr>
									<td width="21%" height="50" align="right">名字</td>
									<td>&nbsp;<s:textfield name="teacher.teachname" /></td>
								</tr>
								<tr>
									<td width="21%" height="50" align="right">部门号</td>
									<td>&nbsp;<s:textfield name="exDepartment.departid" /></td>
								</tr>
								<tr>
									<td width="21%" height="50" align="right">电话</td>
									<td>&nbsp;<s:textfield name="teacher.teachphone" /></td>
								</tr>
								<tr>
									<td width="21%" height="50" align="right">省份证号</td>
									<td>&nbsp;<s:textfield name="teacher.teachcardid" /></td>
								</tr>
								<tr>
									<td width="21%" height="50" align="right">email</td>
									<td>&nbsp;<s:textfield name="teacher.teachemail" /></td>
								</tr>
								<tr align="center">
									<td height="50" colspan="2"><s:reset value="清空" />&nbsp;&nbsp;&nbsp;<s:submit
											value="确认" /></td>
								</tr>
							</table>
						</s:form>
					</div>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td>
					<table>
						<tr>
							<td colspan="4"><img src="images/webfoot.jpg" /></td>
						</tr>
						<tr>
							<td><br>
							</td>
						</tr>
						<tr>
							<td align="center"><span class="style3">版***权***所***有</span>
							</td>
						</tr>
						<tr>
							<td align="center"><span class="style3">望长城工作组</span>
							</td>
						</tr>
						<tr>
							<td align="center"><span class="style3">盗版予以追究法律责任，如须授权请联系望长城工作组，联系人：<a
									href="mailto:zhaochangchun45@hotmail.com">春哥</a>||本系统属免费软件</span>
							</td>
						</tr>

					</table></td>
			</tr>

		</tfoot>
	</table>
</body>
</html>
