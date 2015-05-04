<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://ckeditor.com" prefix="ck"%>
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
	<form name="form1" method="post" enctype="multipart/form-data" action="action!toSaveVideo.do">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle">视频/媒体管理 --》 添加视频/媒体新闻</td>
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
											<td width="140" height="33" align="right" valign="middle">文章主题：</td>
											<td width="563" height="33" align="left"><input name="subject" type="text" id="subject" size="60" maxlength="155" /> <span class="STYLE2">*</span>（主题必须填写）</td>
										</tr>
										<tr>
											<td height="33" colspan="2" align="center" valign="middle"><span class="input_left">作者：<input name="author" type="text" id="author" value="博奥好学网(CSJZ)" size="20" maxlength="80" /></span> <span class="input_left">来源：<input name="source" type="text" id="source" value="http://www.csjz.com" size="20" maxlength="80" /></span> <span class="input_left">时间：<input name="date" type="text" id="date" size="20" maxlength="50" /></span></td>
										</tr>
										<tr>
											<td width="140" height="40" align="right" valign="middle">关键词：</td>
											<td height="40" align="left"><input name="tags" type="text" id="tags" value="tags1,tags2" size="30" maxlength="155" /> <span class="STYLE2">*</span>(有多个关键词时请用“,”分开)</td>
										</tr>
									</table>
								</fieldset> <br />
								<fieldset>
									<legend>视频描述</legend>
									<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="33" align="right" valign="middle"><textarea name="context" cols="80" rows="6" id="context"></textarea></td>
										</tr>
									</table>
								</fieldset> <br />
								<fieldset>
									<legend>视频内容</legend>
									<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="121" align="right" valign="middle"><strong>Flash地址</strong>：</td>
											<td width="579" align="left" valign="middle"><input name="swfUrl" type="text" id="swfUrl" size="60" maxlength="1024" /> <span class="STYLE2">*</span> (为<strong>.swf</strong>结尾的网址) <a href="video_help.html" target="_blank">点击帮助》</a></td>
										</tr>
										<tr>
											<td align="right" valign="top">&nbsp;</td>
											<td align="left" valign="top">宽(Width): <input name="width" type="text" id="width" value="480" size="5" maxlength="4" /> px&nbsp;&nbsp;&nbsp;&nbsp; 高(Height): <input name="height" type="text" id="height" value="400" size="5" maxlength="4" /> px
											</td>
										</tr>
									</table>
								</fieldset> <br />
								<fieldset>
									<legend>缩略图</legend>
									<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="140" height="33" align="right" valign="middle">视频缩略图：</td>
											<td width="591" height="33"><input name="picUrl" type="file" id="picUrl" size="30" /> (<span class="STYLE2">*</span> <strong>360</strong>x<strong>245</strong>px[像素] ）</td>
										</tr>
									</table>
								</fieldset></td>
						</tr>
						<tr>
							<td height="80" align="left" valign="top"><br />
								<fieldset>
									<legend>其它设置</legend>
									<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="134" height="33" align="right" valign="middle">是否顶置：</td>
											<td height="33" align="left" valign="middle"><input name="index" type="checkbox" id="istop" value="1" checked="checked" /> <span class="STYLE2">*</span>(默认为选中)</td>
										</tr>
									</table>
								</fieldset></td>
						</tr>
						<tr>
							<td height="50" align="center" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /> <a href="action!toVideo.do" class="cancel">取消返回</a></td>
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


