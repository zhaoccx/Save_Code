<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/control/";
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
	<form name="form1" method="post" action="../admin/doAddArticleCategory">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle">帮助/公告--》类型管理--》添加类型</td>
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
											<td width="140" height="33" align="right" valign="middle">类型名称：</td>
											<td width="563" height="33" align="left"><input name="subject" type="text" id="subject" size="55" maxlength="155" /> <span class="STYLE2">*</span>（主题必须填写）</td>
										</tr>
										<tr>
											<td width="140" height="33" align="right" valign="middle">所属种类：</td>
											<td height="33" align="left"><select name="kind">
													<option value="帮助中心">帮助中心</option>
													<option value="网站公告">网站公告</option>
													<option value="普通文章">普通文章</option>
											</select> <span class="STYLE2">*</span>（请选择当类型所需种类）</td>
										</tr>
										<tr>
											<td width="140" height="33" align="right" valign="middle">备注：</td>
											<td width="563" height="33" align="left"><input name="remark" type="text" id="remark" size="55" maxlength="155" /></td>
										</tr>
									</table>
								</fieldset></td>
						</tr>
						<tr>
							<td height="50" align="center" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /> <a href="action!index.do" class="cancel">取消返回</a></td>
						</tr>
					</table> <!--Content End-->
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


