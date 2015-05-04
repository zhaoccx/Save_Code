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

body,td,th {
	font-family: 宋体;
}

a {
	text-decoration: none;
}

li {
	line-height: 25px;
}
-->
</style>

<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
</head>
<body>
	<table class="tbl" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td class="tbl_left"></td>
			<td class="tbl_middle">${COPY_VIEW.id} | ${COPY_VIEW.subject} 的信息</td>
			<td class="tbl_right"></td>
		</tr>
		<tr>
			<td class="left">
				<!--Table Left Side-->
			</td>
			<td class="context">
				<!--Content Start-->
				<fieldset>
					<legend>企业信息</legend>
					<ul>
						<li><img src="../${COPY_VIEW.logoPath}" width="120" height="120" /></li>
						<li><h3>公司信息</h3></li>
						<li>公司名称：${COPY_VIEW.subject}</li>
						<li>公司类型：${COPY_VIEW.category} -> ${COPY_VIEW.kind}</li>
						<li>公司规模：${COPY_VIEW.num}</li>
						<li>注册日期：${COPY_VIEW.setupDate}</li>
						<li>注册资金: ${COPY_VIEW.setupPrice}/万元</li>
						<li>公司地址：${COPY_VIEW.location}</li>

						<li>${COPY_VIEW.context}</li>


						<li><h3>联系信息</h3></li>
						<li>联系人： ${COPY_VIEW.contact} / ${COPY_VIEW.gender}</li>
						<li>公司电话：${COPY_VIEW.phone}</li>
						<li>公司传真：${COPY_VIEW.fax}</li>
						<li>移动手机：${COPY_VIEW.telphone}</li>
						<li>电子邮箱:${COPY_VIEW.email}</li>
						<li>腾讯QQ:${COPY_VIEW.qq}</li>


						<li>信息状态： <c:if test="${COPY_VIEW.passed==2}">已审核</c:if> <c:if test="${COPY_VIEW.passed==0}">
								<font style="color:red;">未审核</font>
							</c:if>
						</li>
						<li>操 作： <c:if test="${COPY_VIEW.passed==2}">
								<a href="action!updateCopy.do?id=${COPY_VIEW.id}">取消审核</a>
							</c:if> <c:if test="${COPY_VIEW.passed==0}">
								<a href="action!updateCopy.do?id=${COPY_VIEW.id}">通过审核</a>
							</c:if>
						</li>
					</ul>
				</fieldset>

				<fieldset>
					<legend>用户信息</legend>
					<ul>

						<li>帐&nbsp;&nbsp;号：${COPY_VIEW.TUser.username}</li>
						<li>注册日期：${COPY_VIEW.TUser.regDate}</li>
						<li>用户状态： <c:if test="${COPY_VIEW.TUser.passed==1}">已审核</c:if> <c:if test="${COPY_VIEW.TUser.passed==0}">
								<font style="color:red;">未审核</font>
							</c:if>
						</li>
						<li><a href="action!viewUser.do?id=${COPY_VIEW.TUser.id}">点击此处转到用户信息</a></li>
					</ul>
				</fieldset> <!--Content End-->
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
