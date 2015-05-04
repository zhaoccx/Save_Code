<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.STYLE2 {
	color: #FF0000
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
	<form name="form1" method="post" enctype="multipart/form-data" action="action!toSavePartner.do">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle">博奥好学网 --》 添加合作伙伴</td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left">
					<!--Table Left Side-->
				</td>
				<td class="context">
					<!--Content Start-->
					<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="130" align="center">
								<fieldset>
									<legend align="left">形象LOGO</legend>
									<p>
										<img src="images/100x30.jpg" width="100" height="30" />
									</p>
									<p>上传的图片大小为:100x30px。</p>
								</fieldset>
							</td>
						</tr>
						<tr>
							<td   align="left"><fieldset>
									<legend>添加条目</legend>
									<table width="460" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width="120" height="30" align="right" valign="middle">中文主题：</td>
											<td width="450" height="30" align="left"><input name="subject" type="text" id="subject" size="35" maxlength="255" />(公司/网站CN名称)</td>
										</tr>
										<tr>
											<td width="120" height="30" align="right" valign="middle">英文主题：</td>
											<td width="450" height="30" align="left"><input name="subject2" type="text" id="subject2" size="35" maxlength="255" />(公司/网站EN名称)</td>
										</tr>
										<tr>
											<td width="120" height="30" align="right" valign="middle">条目类型：</td>
											<td width="450" height="30" align="left"><select name="category">
													<option value="0">博奥服务</option>
													<option value="1" selected="selected">友情连接</option>
											</select> (请选择类型，我方公司类型为：“博奥服务”)</td>
										</tr>
										<tr>
											<td width="120" height="30" align="right" valign="middle">连接地址：</td>
											<td width="450" height="30" align="left"><input name="link" type="text" id="link" value="http://" size="35" maxlength="255" /></td>
										</tr>
										<tr>
											<td width="120" height="30" align="right" valign="middle">形象LOGO：</td>
											<td width="450" height="30" align="left"><input name="file" type="file" size="26" /></td>
										</tr>
										<tr>
											<td height="30" colspan="2" align="center" valign="top"><textarea name="context" cols="33" rows="6" id="context"></textarea></td>
										</tr>
										<tr>
											<td height="50" colspan="2" align="center" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /></td>
										</tr>
									</table>
								</fieldset> </td>
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