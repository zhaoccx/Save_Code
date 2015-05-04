<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	margin-left: 20px;
}

.STYLE2 {
	color: #FF0000
}
-->
</style>
</head>
<body>
	<form name="form1" method="post" enctype="multipart/form-data" action="action!toUpdateCategory.do">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle"><c:if test="${CATEGORY_TYPE_NAME=='news'}">新闻/资讯管理中心-->修改类型</c:if> <c:if test="${CATEGORY_TYPE_NAME=='history'}">历史/文化管理-->修改类型</c:if> <c:if test="${CATEGORY_TYPE_NAME=='magic'}">玄学算术管理中心-->修改类型</c:if></td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left"><input type="hidden" name="id" value="${CATEGORY_ENTITY.id}" /> <!--Table Left Side--></td>
				<td class="context">
					<!--Content Start-->
					<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="220" align="left">
								<fieldset>
									<legend>类型主题素材</legend>
									<table width="460" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td align="center" valign="middle">
												<p>
													<img src="../${CATEGORY_ENTITY.picLarge}" width="520" height="120" border="0" /> <a href="../${CATEGORY_ENTITY.picLarge}" target="_blank">点击预览》</a>
												</p> <!-- 
											<p><a href="../${CATEGORY_ENTITY.picMiddle}" target="_blank"><img src="../${CATEGORY_ENTITY.picMiddle}" width="150" height="100" border="0"/></a></p>
										 -->
											</td>
										</tr>
									</table>
								</fieldset> <br />
								<fieldset>
									<legend>类型基本信息</legend>
									<table width="460" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width="120" height="30" align="right" valign="middle">主题名称：</td>
											<td width="450" height="30" align="left"><input name="subject" type="text" id="subject" value="${CATEGORY_ENTITY.subject}" size="25" maxlength="255" /> <span class="STYLE2">*</span>(请输入栏目/类型名称)</td>
										</tr>
										<tr>
											<td width="120" height="30" align="right" valign="middle">所属类型：</td>
											<td width="450" height="30" align="left"><strong> <c:if test="${CATEGORY_TYPE_NAME=='news'}">
														<select name="category">
															<option value="news" selected="selected">新闻/资讯</option>
														</select>
													</c:if> <c:if test="${CATEGORY_TYPE_NAME=='history'}">
														<select name="category">
															<option value="history" selected="selected">历史/文化</option>
														</select>
													</c:if> <c:if test="${CATEGORY_TYPE_NAME=='magic'}">
														<select name="category">
															<option value="magic" selected="selected">玄学/算术</option>
														</select>
													</c:if>
											</strong><span class="STYLE2">*</span>（当前类型的所属类型）</td>
										</tr>
										<tr>
											<td height="20" align="center" valign="top"></td>
											<td height="100" align="left" valign="top"><textarea name="context" cols="36" rows="6" id="context">${CATEGORY_ENTITY.context}</textarea></td>
										</tr>
									</table>
								</fieldset>
							</td>
						</tr>
						<tr>
							<td height="80" align="left" valign="top">
								<fieldset>
									<legend>条目插图</legend>
									<table width="497" border="0" align="center" cellpadding="0" cellspacing="0">
										<!-- 
                            
                              <tr>
                                <td width="120" height="30" align="right" valign="middle">主题插图：</td>
                                <td width="450" height="30" align="left"><span class="STYLE2">
                                  <input name="middle" type="file" id="middle" />
                                *</span>(<strong>360</strong>x<strong>245</strong>px[像素])</td>
                              </tr>
                               -->
										<tr>
											<td width="120" height="30" align="right" valign="middle">用于首页插图：</td>
											<td width="450" height="30" align="left"><span class="STYLE2"> <input name="large" type="file" id="large" /> *
											</span>(<strong>980</strong>x<strong>300</strong>px[像素])</td>
										</tr>
									</table>
								</fieldset> <br />
								<fieldset>
									<legend>选择语言种类</legend>
									<table width="497" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width="120" align="right" valign="middle"><span class="STYLE2">当前语言</span>：</td>
											<td width="450" align="left" valign="middle"><c:if test="${CATEGORY_ENTITY.encoding == 'cn'}">
													<span class="input_left">中文 <input type="radio" name="encoding" value="cn" checked="checked" /></span>
													<span class="input_left">英文<input type="radio" name="encoding" value="en" /></span>
												</c:if> <c:if test="${CATEGORY_ENTITY.encoding == 'en'}">
													<span class="input_left">中文 <input type="radio" name="encoding" value="cn" /></span>
													<span class="input_left">英文<input type="radio" name="encoding" value="en" checked="checked" /></span>
												</c:if></td>
										</tr>
									</table>
								</fieldset>
							</td>
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


