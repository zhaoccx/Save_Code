<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />

<title></title>
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<style>
<!--
body {
	font-family: "宋体";
	font-size: 12px;
	color: #000;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

.STYLE4 {
	color: #FF0000;
	font-size: 12px;
}

.tableMenu {
	border-bottom: #CCCCCC solid 1px;
	border-left: #CCCCCC solid 1px;
	border-right: #CCCCCC solid 1px;
	border-top: #CCCCCC solid 1px;
}

#but_submit {
	height: 35px;
	width: 130px;
	border: #666666 solid 1px;
	font-size: 14px
}
</style>

</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td height="425" valign="middle"></td>
			<td align="left" valign="middle" bgcolor="#F7F8F9">

				<form action="action!toSaveAdv.do" method="post" enctype="multipart/form-data" name="form1" id="form1">
					<table width="596" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="3" align="left" valign="middle">添加企业库广告<br />
								<hr />
							</td>
						</tr>
						<tr>
							<td width="162" align="right" valign="middle">广告主题：</td>
							<td colspan="2" align="left" valign="middle"><input name="subject" type="text" id="subject" value="请填写主题" size="50" maxlength="100" /></td>
						</tr>
						<tr>
							<td width="162" align="right" valign="middle">所属类型：</td>
							<td colspan="2" align="left" valign="middle"><select name="category" id="category">
									<option value="copy" selected="selected">企业库</option>
							</select> (请选择该条目所属类型)</td>
						</tr>
						<tr>
							<td width="162" align="right" valign="middle"><span class="STYLE4">* </span>请选择图片：</td>
							<td colspan="2" align="left" valign="middle"><input type="file" name="file" /> ( 宽 <strong>940</strong> x 高<strong> 170</strong> [px]像素 )</td>
						</tr>
						<tr>
							<td width="162" align="right" valign="middle">超连接地址：</td>
							<td colspan="2" align="left" valign="middle"><input name="link" type="text" id="link" value="http://" size="30" maxlength="255" /> (请填写绝对路径带'http://')</td>
						</tr>
						<tr>
							<td width="162" align="right" valign="middle">上传时间：</td>
							<td colspan="2" align="left" valign="middle"><input name="time" type="text" id="time" value="不需要填写" size="32" maxlength="255" /></td>
						</tr>
						<tr>
							<td width="162" align="right" valign="middle">到期时间：</td>
							<td colspan="2" align="left" valign="middle"><input name="date" type="text" id="date" size="32" maxlength="255" /> <span class="STYLE4">*</span>（请填写广告到期：年-月-日）</td>
						</tr>
						<tr>
							<td height="30" colspan="3" align="center" valign="middle"><br />
								<hr /> <input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /></td>
						</tr>
					</table>
				</form>
			</td>
			<td></td>
		</tr>
		<tr>
			<td valign="bottom"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
			<td><img src="images/buttom_bgs.gif" width="17" height="17" /></td>
			<td valign="bottom"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>

</body>
</html>
