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
	min-height: 360px
}

.context_ul {
	min-height: 380px;
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
	line-height: 28px;
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
</head>
<body>
	<table class="tbl" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td class="tbl_left"></td>
			<td align="left" valign="middle" class="tbl_middle"><c:if test="${COPY_CATEGORY=='fail'}">未审核(新注册)用户列表</c:if> <c:if test="${COPY_CATEGORY=='pass'}">已通过审核（正式）用户列表</c:if></td>
			<td class="tbl_right"></td>
		</tr>
		<tr>
			<td class="left">
				<!--Table Left Side-->
			</td>
			<td class="context">
				<div class="tbl_div">
					<table border="1" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="30" colspan="6" align="left" valign="middle">&nbsp;当前共有 ：${fn:length(COPY_TOTAL_LIST)} 条记录.</td>
						</tr>
						<tr>
							<td width="50" height="30" align="center" valign="middle" bgcolor="#EAEAEA">编号Id</td>
							<td width="250" height="30" align="center" valign="middle" bgcolor="#EAEAEA">信息标题</td>
							<td width="120" height="30" align="center" valign="middle" bgcolor="#EAEAEA">信息类型</td>
							<td width="150" height="30" align="center" valign="middle" bgcolor="#EAEAEA">发布日期</td>
							<td width="130" height="30" align="center" valign="middle" bgcolor="#EAEAEA">当前状态</td>
							<td width="100" height="30" align="center" valign="middle" bgcolor="#EAEAEA">管理</td>
						</tr>

						<!--Content Start-->
						<c:forEach var="item" items="${COPY_TOTAL_LIST}">
							<tr onmouseout="onMouseOut(this)" onmouseover="onMouse(this)">
								<td width="50" height="30" align="center" valign="middle">${item.id}</td>
								<td width="250" height="30" align="center" valign="middle">${item.subject}</td>
								<td width="120" height="30" align="center" valign="middle">${item.category}</td>
								<td width="150" height="30" align="center" valign="middle">${item.pubDate}</td>
								<td width="130" height="30" align="center" valign="middle"><c:if test="${item.passed==1}">审核未通过</c:if> <c:if test="${item.passed==2}">审核通过</c:if> <c:if test="${item.passed==0}">
										<font style="color:red;">未审核</font>
									</c:if></td>
								<td width="100" height="30" align="center" valign="middle"><a href="action!viewCopy.do?id=${item.id}" class="STYLE11">查看详细</a></td>
							</tr>
						</c:forEach>
						<!--Content End-->

						<tr>
							<td height="60" colspan="6" align="left" valign="middle"></td>
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
</body>
</html>
