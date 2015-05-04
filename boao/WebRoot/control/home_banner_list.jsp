<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title></title>

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

a {
	text-decoration: none
}

#submit {
	height: 35px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 14px
}

.context {
	background-color: #F7F8F9;
	min-height: 350px
}

.context_ul {
	min-height: 320px;
}

.tbl {
	margin-top: 2%;
	margin-left: 3%;
	float: left;
	width: 95%;
	min-height: 400px;
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

.tbl_div {
	width: 800px;
	border: #CCCCCC solid 1px;
	margin: 0 auto
}

.STYLE1 {
	color: #FF0000
}

.STYLE2 {
	color: #0099FF
}
-->
</style>

<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<script type="text/javascript">
		function del(url){
			var result= confirm("数据删除后将不能恢复，确定删除吗？");
			if(result){
				window.location.replace(url);
			}
			return;
		}
	</script>

</head>

<body>
	<form name="form1" method="post" enctype="multipart/form-data" action="../action!toSavePerson.do">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td align="left" valign="middle" class="tbl_middle">网站常规管理--》首页--》大照片</td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left">
					<!--Table Left Side-->
				</td>
				<td class="context">
					<div class="tbl_div">
						<table width="800" border="1" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td height="30" colspan="6" align="left" valign="middle"><span class="STYLE4">当前数据语言：</span><strong>${ENCODING}</strong> <c:if test="${BANNER_ENCODING == 'cn'}">
										<select name="encoding" onchange="SendRedirect(this.value);">
											<option value="action!toBanner.do?encoding=cn" selected="selected">中文[CN]</option>
											<option value="action!toBanner.do?encoding=en">英文[EN]</option>
										</select>
									</c:if> <c:if test="${BANNER_ENCODING == 'en'}">
										<select name="encoding" onchange="SendRedirect(this.value);">
											<option value="action!toBanner.do?encoding=en" selected="selected">英文[EN]</option>
											<option value="action!toBanner.do?encoding=cn">中文[CN]</option>
										</select>
									</c:if></td>
							</tr>
							<tr>
								<td width="50" height="30" align="center" valign="middle" bgcolor="#EAEAEA">编号Id</td>
								<td width="200" height="30" align="center" valign="middle" bgcolor="#EAEAEA">主题（Subject）</td>
								<td width="120" height="30" align="center" valign="middle" bgcolor="#EAEAEA">类型(Category)</td>
								<td width="240" height="30" align="center" valign="middle" bgcolor="#EAEAEA">超链接(Href)</td>
								<td width="160" height="30" align="center" valign="middle" bgcolor="#EAEAEA">发表时间(time)</td>
								<td width="100" height="30" align="center" valign="middle" bgcolor="#EAEAEA">编辑 / 管理</td>
							</tr>

							<!--Content Start-->
							<c:forEach var="banner" items="${BANNER_LIST}">
								<tr onmouseout="onMouseOut(this)" onmouseover="onMouse(this)">
									<td width="50" height="30" align="center" valign="middle">${banner.id}</td>
									<td width="200" height="30" align="center" valign="middle">${banner.subject}</td>
									<td width="120" height="30" align="center" valign="middle">${banner.category}</td>
									<td height="30" align="center" valign="middle"><a href="${banner.hrefUrl}" target="_blank">${banner.hrefUrl}</a></td>
									<td width="160" height="30" align="center" valign="middle">${banner.time}</td>
									<td width="100" height="30" align="center" valign="middle"><a href="action!toBanner.do?id=${banner.id}" class="STYLE11">编辑</a>&nbsp;|&nbsp; <a href="javascript:del('../action!toDeleteBanner.do?id=${banner.id}&encoding=${BANNER_ENCODING}');" class="STYLE10">删除</a></td>
								</tr>
							</c:forEach>
							<!--Content End-->

							<tr>
								<td height="60" colspan="6" align="left" valign="middle">

									<p>
										&nbsp;当前语种下&nbsp;当前是第<strong>${BANNER_PAGENO}</strong>页，该页下有<strong>${fn:length(BANNER_LIST)}</strong>条记录.
									</p>
									<p>
										&nbsp;<a href="../action!toBanner.do?encoding=${BANNER_ENCODING}&code=back">上一页</a> &nbsp;|&nbsp;<a href="../action!toBanner.do?encoding=${BANNER_ENCODING}&code=next">下一页</a>
									</p>

								</td>
							</tr>
						</table>
					</div>
				</td>
				<td class="right">
					<!--Table Right Side-->
				</td>
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
