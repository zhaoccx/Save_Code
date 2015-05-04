<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	color: #999999;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

#but_submit {
	height: 35px;
	width: 130px;
	border: #666666 solid 1px;
	font-size: 14px
}

.STYLE1 {
	font-family: "宋体";
	font-size: 14px;
	color: #000000;
	font-weight: bold;
}

.STYLE8 {
	font-size: 12px;
	color: #333333;
	font-weight: bold;
}

.STYLE9 {
	font-size: 12px;
	color: #000000
}

.STYLE10 {
	font-size: 12px;
	color: #FF0033
}

.STYLE6 {
	font-size: 12px;
	color: #CC0033
}
-->
</style>
</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td><span class="STYLE1">博奥好学网 --》编辑招聘信息</span></td>
					</tr>
				</table></td>
			<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle"></td>
			<td valign="top" bgcolor="#F7F8F9">
				<form name="form1" id="form1" method="post" action="action!toUpdateJob.do">
					<table width="800" border="0" align="left" cellpadding="0" cellspacing="0">
						<tr>
							<td height="500" align="center" valign="top">
								<p>&nbsp;</p>
								<div style="border:#CCCCCC solid 1px; width:700px;">
									<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="30" colspan="3" align="left" bgcolor="#E3E3E3">&nbsp;<span class="STYLE8">编辑招聘信息</span></td>
										</tr>
										<tr>
											<td height="30" colspan="3" align="left" valign="middle">&nbsp;<a href="action!toJob.do">返回列表</a></td>
										</tr>
										<tr>
											<td width="162" height="30" align="right" valign="top"><span class="STYLE9">招聘对象：</span></td>
											<td height="30" colspan="2" align="left" valign="top"><input name="job.subject" type="text" id="job.subject" value="${job_ENTITY.subject}" size="40" maxlength="120" /> (<span class="STYLE10">*</span> 字符长度为120)</td>
										</tr>
										<tr>
											<td height="30" align="right" valign="top" class="STYLE9">招聘人数：</td>
											<td height="30" colspan="2" align="left" valign="top"><input name="job.num" type="text" id="job.num" value="${job_ENTITY.num}" size="15" maxlength="120" /></td>
										</tr>
										<tr>
											<td height="30" align="right" valign="top" class="STYLE9">工资待遇：</td>
											<td height="30" colspan="2" align="left" valign="top"><input name="job.price" type="text" id="job.price" value="${job_ENTITY.price}" size="15" maxlength="120" /></td>
										</tr>
										<tr>
											<td height="30" align="right" valign="top" class="STYLE9">工作地点：</td>
											<td height="30" colspan="2" align="left" valign="top"><label> <input name="job.location" type="text" id="job.location" value="${job_ENTITY.location}" size="40" /> (<span class="STYLE10">*</span> 字符长度为120)
											</label></td>
										</tr>

										<tr>
											<td align="right" valign="top"><span class="STYLE9">招聘内同：</span></td>
											<td height="160" colspan="2" align="left" valign="top"><textarea name="job.context" cols="60" rows="11" id="job.context">${job_ENTITY.context}</textarea></td>
										</tr>
										<tr>
											<td align="right" valign="middle" class="STYLE9"><strong>数据修改指向：</strong></td>
											<td width="253" align="left" valign="middle"><c:if test="${job_ENTITY.encoding=='cn'}">
													<span class="STYLE10"><span class="STYLE6"> 中文</span></span>
													<input name="job.encoding" type="radio" value="cn" checked="checked" />
					&nbsp;&nbsp;<span class="STYLE6">英文</span>
													<input type="radio" name="job.encoding" value="en" />
												</c:if> <c:if test="${job_ENTITY.encoding=='en'}">
													<span class="STYLE10"><span class="STYLE6"> 中文</span></span>
													<input name="job.encoding" type="radio" value="cn" />
					&nbsp;&nbsp;<span class="STYLE6">英文</span>
													<input type="radio" name="job.encoding" value="en" checked="checked" />
												</c:if></td>
											<td width="285" align="left" valign="middle"><input name="id" type="hidden" id="id" value="${job_ENTITY.id}" /></td>
										</tr>
										<tr>
											<td height="50" align="right" valign="middle"></td>
											<td height="50" align="left" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /></td>
											<td height="50" align="left" valign="middle"></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</td>
			<td></td>
		</tr>
		<tr>
			<td valign="bottom"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
			<td><img src="images/buttom_bgs.gif" width="17" height="17" /></td>
			<td valign="bottom"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>
</body>
</html>
