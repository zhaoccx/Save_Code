<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<title>修改登录口令</title>
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<style type="text/css">
<!--
body {
	font-family: "宋体";
	font-size: 12px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
	vertical-align: middle;
}

span {
	margin-left: 10px;
}

#submit {
	height: 35px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 14px
}

.context {
	background-color: #F7F8F9
}

.context_ul {
	min-height: 320px;
}

ul {
	list-style: none;
	margin: 0 auto;
	padding: 0;
}

li {
	line-height: 25px;
	width: 360px;
	border-bottom: #CCCCCC dashed 1px;
	margin-top: 2px;
	text-align: left;
}

.tbl {
	margin-top: 2%;
	margin-left: 3%;
	float: left;
	width: 95%
}

.left {
	width: 17px;
	background: url(images/mail_leftbg.gif) repeat-y 0 0;
}

.right {
	width: 17px;
	background: url(images/mail_rightbg.gif) repeat-y 0 0;
}

.tbl_left {
	width: 15px;
	height: 29px;
	background: url(images/left-top-right.gif) repeat-x 0 0;
}

.tbl_middle {
	line-height: 29px;
	font-size: 12px;
	color: #000000;
	background: url(images/content-bg.gif) repeat-x 0 0;
}

.tbl_right {
	width: 15px;
	height: 29px;
	background-image: url(images/nav-right-bg.gif)
}

.tbl_but_left {
	width: 17px;
	height: 17px;
	vertical-align: bottom;
	background: url(images/mail_leftbg.gif) repeat-x 0 0;
}

.tbl_but_middle {
	line-height: 17px;
	vertical-align: bottom;
	font-size: 13px;
	color: #000000;
	font-weight: bold;
	background: url(images/buttom_bgs.gif) repeat-x 0 0;
}

.tbl_but_right {
	width: 15px;
	height: 17px;
	vertical-align: bottom;
	background-image: url(images/mail_rightbg.gif)
}

.STYLE2 {
	color: #FF0000
}

#but_submit {
	height: 30px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 12px
}

.cancel {
	color: #006699;
	text-decoration: none;
	margin-left: 30px;
}
-->
</style>
</head>

<body>
	<form name="form1" id="form1" method="post" action="action!toUpdateAdministrator.do" onsubmit="return checkSubmit()">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle">网站常规管理 --》 修改管理员信息</td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left">
					<!--Table Left Side-->
				</td>
				<td height="430" class="context">
					<table width="460" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="120" align="left">
								<fieldset>
									<legend>当前管理员信息</legend>
									<ul>
											<li>用户名:&nbsp;${ADMINISTRATOR_ENTITY.username}</li>
											<li>密&nbsp;&nbsp;码:&nbsp;${ADMINISTRATOR_ENTITY.password}</li>
											<li>安全邮箱:&nbsp;${ADMINISTRATOR_ENTITY.securityEmail}&nbsp; <a href="#">帮助？</a></li>
											<li>上一次登录时间：:&nbsp;${ADMINISTRATOR_ENTITY.lastLoginTime}</li>
									</ul>
								</fieldset>
							</td>
						</tr>
						<tr>
							<td align="left" height="250">
								<fieldset>
									<legend>修改管理员登录口令</legend>
									<table width="437" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width="109" height="32" align="right">登录名：</td>
											<td width="328" height="32" align="left"><input name="username" value="${ADMINISTRATOR_ENTITY.username}" type="text" id="username" size="24" maxlength="20" /> <span class="STYLE2">*</span>(请输入登录/用户名)</td>
										</tr>
										<tr>
											<td width="109" height="32" align="right">新密码：</td>
											<td height="32" align="left"><input name="password" type="password" id="password" size="25" value="${ADMINISTRATOR_ENTITY.password}" maxlength="25" /> <span class="STYLE2">*</span>(请输入新密码)</td>
										</tr>
										<tr>
											<td width="109" height="32" align="right">再次输入密码：</td>
											<td height="32" align="left"><input name="password2" type="password" id="password2" size="25" maxlength="25" /> <span class="STYLE2">*</span>(请重复输入新密码)</td>
										</tr>
										<tr>
											<td width="109" height="32" align="right">管理员邮箱：</td>
											<td height="32"><input name="email" type="text" id="email" size="24" maxlength="25" value="${ADMINISTRATOR_ENTITY.securityEmail}" /> <span class="STYLE2">*</span>(系统管理员邮箱地址)</td>
										</tr>
										<tr>
											<td height="50" colspan="2" align="center" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /> <a href="action!index.do" class="cancel">取消修改</a></td>
										</tr>
									</table>
								</fieldset>
							</td>
						</tr>
					</table>
				</td>
				<td class="right"><input type="hidden" name="id" id="userId" value="${ADMINISTRATOR_ENTITY.id}" /></td>
			</tr>
			<tr>
				<td class="tbl_but_left"><img src="images/buttom_left2.gif" /></td>
				<td class="tbl_but_middle"><img src="images/buttom_bgs.gif" /></td>
				<td class="tbl_but_right"><img src="images/buttom_right2.gif" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
