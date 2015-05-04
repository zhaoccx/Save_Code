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

li {
	font-size: 14px;
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
			<td class="tbl_middle">${VIEW_USER.id} | ${VIEW_USER.username} 的信息</td>
			<td class="tbl_right"></td>
		</tr>
		<tr>
			<td class="left">
				<!--Table Left Side-->
			</td>
			<td class="context">
				<!--Content Start-->
				<fieldset>
					<legend>帐号信息</legend>
					<ul>
						<li><img src="../${VIEW_USER_INFO.userPhoto}" width="100" height="100" /></li>
						<li>登录帐号：${VIEW_USER.username}</li>
						<li>登录密码：${VIEW_USER.password}</li>
						<li>注册时间：${VIEW_USER.regDate}</li>
						<li>最后登录:${VIEW_USER_INFO.finalLoginDate}</li>
						<li>用户状态： <c:if test="${VIEW_USER.passed==1}">已审核</c:if> <c:if test="${VIEW_USER.passed==0}">
								<font style="color:red;">未审核</font>
							</c:if>
						</li>
						<li>操 作： <c:if test="${VIEW_USER.passed==1}">
								<a href="action!updateUser.do?id=${VIEW_USER.id}">取消审核</a>
							</c:if> <c:if test="${VIEW_USER.passed==0}">
								<a href="action!updateUser.do?id=${VIEW_USER.id}">通过审核</a>
							</c:if>
						</li>
					</ul>
				</fieldset>

				<fieldset>
					<legend>个人资料</legend>
					<ul>

						<li>生&nbsp;&nbsp;日：${VIEW_USER_INFO.birthday}</li>
						<li>性&nbsp;&nbsp;别：${VIEW_USER_INFO.gender}</li>
						<li>电&nbsp;&nbsp;话：${VIEW_USER_INFO.phone}</li>
						<li>手&nbsp;&nbsp;机：${VIEW_USER_INFO.telphone}</li>
						<li>邮&nbsp;&nbsp;箱：${VIEW_USER_INFO.email}</li>
						<li>腾&nbsp;&nbsp;讯：${VIEW_USER_INFO.qq}</li>
						<li>网&nbsp;&nbsp;址：${VIEW_USER_INFO.website}</li>
					</ul>
				</fieldset>


				<fieldset>
					<legend>${VIEW_USER.username} 发布的企业信息</legend>
					<ul>
						<c:forEach var="item" items="${VIEW_USER_COPY_LIST}">
							<li>名称：${item.subject} | 类型：${item.category} ${item.kind} | 发布日期：${item.pubDate} | 状态： <c:if test="${item.passed==2}">已审核</c:if> <c:if test="${item.passed==0}">
									<font style="color:red;">未审核</font>
								</c:if> | <a href="action!viewCopy.do?id=${item.id}">转到信息</a>
							</li>

						</c:forEach>
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
