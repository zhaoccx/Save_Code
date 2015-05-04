<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
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

.tbl {
	margin-top: 2%;
	margin-left: 3%;
	float: left;
	width: 95%
}

.left {
	width: 17px;
	background: url(/control/images/mail_leftbg.gif) repeat-y 0 0;
}

.right {
	width: 17px;
	background: url(/control/images/mail_rightbg.gif) repeat-y 0 0;
}

.tbl_left {
	width: 15px;
	height: 29px;
	background: url(/control/images/left-top-right.gif) repeat-x 0 0;
}

.tbl_middle {
	line-height: 29px;
	font-size: 12px;
	color: #000000;
	background: url(/control/images/content-bg.gif) repeat-x 0 0;
}

.tbl_right {
	width: 15px;
	height: 29px;
	background-image: url(/control/images/nav-right-bg.gif)
}

.tbl_but_left {
	width: 17px;
	height: 17px;
	vertical-align: bottom;
	background: url(/control/images/mail_leftbg.gif) repeat-x 0 0;
}

.tbl_but_middle {
	line-height: 17px;
	vertical-align: bottom;
	font-size: 13px;
	color: #000000;
	font-weight: bold;
	background: url(/control/images/buttom_bgs.gif) repeat-x 0 0;
}

.tbl_but_right {
	width: 15px;
	height: 17px;
	vertical-align: bottom;
	background-image: url(/control/images/mail_rightbg.gif)
}

.cancel {
	color: #006699;
	text-decoration: none;
	margin-left: 30px;
}

#but_submit {
	height: 30px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 12px
}

.input_left {
	margin-left: 16px;
}

input {
	font-size: 12px;
	color: #666
}

.STYLE2 {
	color: #FF0000
}
-->
</style>
</head>
<body>
	<form name="form1" method="post" action="/admin/editGrade">
		<input type="hidden" name="id" value="${obj.id }" />
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle">科目/年级--》年级管理--》编辑年级</td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left">
					<!--Table Left Side-->
				</td>
				<td class="context">
					<!--Content Start-->
					<table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="220" align="left"><br />
								<fieldset>
									<legend>基本信息</legend>
									<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="140" height="33" align="right" valign="middle">年级名称：</td>
											<td width="563" height="33" align="left"><input name="subject" type="text" value="${obj.subject}" id="subject" size="55" maxlength="155" /> <span class="STYLE2">*</span>（名称必须填写）</td>
										</tr>
										<tr>
											<td width="140" height="33" align="right" valign="middle">所属类型：</td>
											<td height="33" align="left"><select name="category">
													<c:forEach var="item" items="${GRADE_CATEGORIES}">
														<option value="${item}" <c:if test="${item eq obj.category }"> selected</c:if>>${item}</option>
													</c:forEach>
											</select> <span class="STYLE2">*</span>（请选择当前年级所属类型）</td>
										</tr>
									</table>
								</fieldset></td>
						</tr>
						<tr>
							<td height="50" align="center" valign="middle"><input type="submit" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /> <a href="action!index.do" class="cancel">取消返回</a></td>
						</tr>
					</table> <!--Content End-->
				</td>
				<td class="right">
					<!--Table Right Side-->
				</td>
			</tr>
			<tr>
				<td class="tbl_but_left"><img src="/control/images/buttom_left2.gif" /></td>
				<td class="tbl_but_middle"><img src="/control/images/buttom_bgs.gif" /></td>
				<td class="tbl_but_right"><img src="/control/images/buttom_right2.gif" /></td>
			</tr>
		</table>
	</form>
</body>
</html>


