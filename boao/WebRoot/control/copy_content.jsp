<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://ckeditor.com" prefix="ck"%>
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

<title></title>

<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<script type="text/javascript">
	function sendRedirect(obj) {
		var encoding = obj.value;
		var category = document.getElementById("category").value;
		location.replace("action!toContent.do?category=" + category + "&amp;encoding=" + encoding);
	}
</script>

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

li {
	line-height: 30px;
	font-size: 13px;
	color: #333333;
	border-bottom: #CCCCCC dashed 1px;
	width: 620px;
}

.STYLE1 {
	font-family: "宋体";
	font-size: 14px;
	color: #333333;
	font-weight: bold;
}

.STYLE22 {
	color: #FF0033;
	line-height: 40px;
	margin-left: 10px;
}

.STYLE27 {
	font-size: 12px;
	color: #333333;
	font-family: "宋体";
}

#but_submit {
	height: 35px;
	width: 130px;
	border: #666666 solid 1px;
	font-size: 14px
}
-->
</style>

</head>

<body>
	<form name="form1" id="form1" method="post" enctype="multipart/form-data" action="action!toUpdateContent.do">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
				<td valign="top">
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td><span class="STYLE1">博奥好学网 --> ${CONTENT_ITEM.category}</span></td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
			</tr>
			<tr>
				<td height="439" valign="middle"></td>
				<td align="left" valign="middle" bgcolor="#F7F8F9"><table width="877" border="0" align="left" cellpadding="0" cellspacing="0">
						<tr>
							<td width="773" align="center" valign="middle"><table width="545" border="0" style="border-bottom:#CCCCCC solid 1px;border-left:#CCCCCC solid 1px;border-right:#CCCCCC solid 1px;border-top:#CCCCCC solid 1px;" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td height="45" align="left" valign="middle" bgcolor="#EBEBEB"><c:if test="${CONTENT_ITEM.encoding=='cn'}">
												<span class="STYLE27">当前语言种类</span>：
				<span class="STYLE22">中文<input name="encoding" type="radio" value="cn" checked="checked" onclick="sendRedirect(this)" /></span>
												<span class="STYLE22">英文<input name="encoding" type="radio" value="en" onclick="sendRedirect(this)" /></span>
											</c:if> <c:if test="${CONTENT_ITEM.encoding=='en'}">
												<span class="STYLE27">当前语言种类</span>：
				<span class="STYLE22">中文<input name="encoding" type="radio" value="cn" onclick="sendRedirect(this)" /></span>
												<span class="STYLE22">英文<input name="encoding" type="radio" value="en" checked="checked" onclick="sendRedirect(this)" /></span>
											</c:if></td>
									</tr>


									<tr>
										<td align="left" valign="middle"><textarea rows="35" name="context" cols="60">${CONTENT_ITEM.context}</textarea> <ck:replace replace="context" basePath="../ckeditor/"></ck:replace></td>
									</tr>
									<tr>
										<td height="80" valign="middle" valign="top">
											<hr /> <input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="保存修改" />
										</td>
									</tr>
									<tr>
										<td height="10" align="left" valign="middle"><input name="id" id="cid" type="hidden" value="${CONTENT_ITEM.id}" /> <input name="category" id="category" type="hidden" value="${CONTENT_ITEM.category}" /></td>
									</tr>


								</table></td>
						</tr>
					</table></td>
				<td></td>
			</tr>
			<tr>
				<td valign="bottom"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
				<td><img src="images/buttom_bgs.gif" width="17" height="17" /></td>
				<td valign="bottom"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
			</tr>
		</table>
	</form>

</body>
</html>