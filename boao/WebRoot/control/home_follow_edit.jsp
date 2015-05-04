<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<style type="text/css">
<!--
body {
	font-family: "宋体";
	font-size: 12px;
	color: #999999;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

.STYLE1 {
	font-family: "宋体";
	font-size: 14px;
	color: #333333;
	font-weight: bold;
}

.STYLE3 {
	color: #666666
}

ul {
	margin-left: -30px;
	list-style: none;
	width: 700px;
}

li {
	border: #CCCCCC dashed 1px;
	margin-top: 5px;
	width: 680px
}

.STYLE4 {
	color: #3399CC;
	text-decoration: none;
}

#but_submit {
	height: 30px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 12px;
	margin-top: 8px;
}
-->
</style>

</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td><span class="STYLE1">社区互动信息管理(Fllow us) - 编辑/修改</span></td>
					</tr>
				</table></td>
			<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle"></td>
			<td valign="top" bgcolor="#F7F8F9">

				<table width="626" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td height="130">

							<fieldset>
								<legend>网站社区互动信息</legend>
								<center>
									<img src="../${FOLLOWUS_ENTITY.logoPath}" width="56" height="56" />
								</center>
							</fieldset>
						</td>
					</tr>
					<tr>
						<td>
							<form name="form1" id="form1" method="post" enctype="multipart/form-data" action="action!toUpdateFollowus.do">
								<table width="600" border="0" cellpadding="0" cellspacing="0">
									<tr><td>修改信息</td><td></td></tr>
									<tr>
										<td height="25" align="right" class="STYLE3"><strong>社区名称：</strong></td>
										<td height="25" align="left" valign="middle"><input name="subject" type="text" id="subject" value="${FOLLOWUS_ENTITY.subject}" size="35" maxlength="100" /> (字符最大长度为60)</td>
									</tr>
									<tr>
										<td height="25" width="113" align="right"><span class="STYLE3"><strong>社区Logo</strong>：</span></td>
										<td width="487" height="25" align="left" valign="middle"><input name="file" type="file" size="22" maxlength="255" /> (图片大小为：宽36 * 高36 像素[px])</td>
									</tr>
									<tr>
										<td height="25" align="right"><span class="STYLE3"> <strong>社区连接</strong>：
										</span></td>
										<td height="25" align="left"><input name="link" type="text" value="${FOLLOWUS_ENTITY.hrefUrl}" size="35" maxlength="255" /> (请包含'http://..') <a href="${FOLLOWUS_ENTITY.hrefUrl}" target="_blank" class="STYLE4">访问》</a></td>
									</tr>
									<tr>
										<td height="25" align="right"><span class="STYLE3"> <strong>社区标签</strong>：
										</span></td>
										<td height="25" align="left"><input name="context" type="text" value="${FOLLOWUS_ENTITY.context}" size="35" maxlength="255" /> (可以选填)</td>
									</tr>
									<tr>
										<td height="25" align="right" class="STYLE3"><input name="id" type="hidden" id="id" value="${FOLLOWUS_ENTITY.id}" /></td>
										<td height="40" align="left" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /> &nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:window.location.href='action!toFollowus.do'">取消返回</a></td>
									</tr>
								</table>
							</form> 
						</td>
					</tr>
				</table>
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
