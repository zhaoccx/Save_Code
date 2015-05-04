<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<style type="text/css">
<!--
body {
	font-family: "宋体";
	font-size: 12px;
	color: #000;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

.STYLE4 {
	color: #FF0000;
	font-size: 12px;
}

.tableMenu {
	border-top: #CCCCCC solid 1px;
	border-bottom: #CCCCCC solid 1px;
	border-left: #CCCCCC solid 1px;
	border-right: #CCCCCC solid 1px;
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
	<form name="form1" id="form1" method="post" enctype="multipart/form-data" action="action!toUpdateBanner.do">
		<table width="596" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="3" align="left" valign="middle">修改一条首页大照片条目 <a href="action!toBanner.do?encoding=${BANNER_ENTITY.encoding}">取消并返回</a></td>
			</tr>
			<tr>
				<td   colspan="3" align="center" valign="middle"><img src="../${BANNER_ENTITY.picUrl}" width="680" height="460" /><br /> <!-- <a href="../${BANNER_ENTITY.picUrl}" target="_blank">浏览该图</a> -->
					<hr /></td>
			</tr>
			<tr>
				<td width="162" align="right" valign="middle">大照主题(Subject) :</td>
				<td colspan="2" align="left" valign="middle"><input name="subject" type="text" value="${BANNER_ENTITY.subject}" size="30" maxlength="100" /></td>
			</tr>
			<tr>
				<td width="162" align="right" valign="middle">所属类型(Category):</td>
				<td colspan="2" align="left" valign="middle"><select name="category">
						<option value="${BANNER_ENTITY.category}" selected="selected">${BANNER_ENTITY.category}</option>
						<option value="博奥名人">博奥名人</option>
						<option value="其它">其它</option>
				</select> (请选择该条目所属类型)</td>
			</tr>
			<tr>
				<td width="162" align="right" valign="middle"><span class="STYLE4">* </span>请选择图片(images):</td>
				<td colspan="2" align="left" valign="middle"><input type="file" name="file" /> (宽680 x 高460 [px]像素)</td>
			</tr>
			<tr>
				<td width="162" align="right" valign="middle">超连接地址(href):</td>
				<td colspan="2" align="left" valign="middle"><input name="link" type="text" value="${BANNER_ENTITY.hrefUrl}" size="32" maxlength="255" /> (请填写绝对路径/带'http')</td>
			</tr>
			<tr>
				<td width="162" align="right" valign="middle">所属语种(<span class="STYLE4">Encoding</span>):
				</td>
				<td colspan="2" align="left" valign="middle"><c:if test="${BANNER_ENTITY.encoding =='cn'}">
			  中文<input type="radio" name="encoding" value="cn" checked="checked" />&nbsp;&nbsp;&nbsp;&nbsp;
			  英文<input type="radio" name="encoding" value="en" /> 
			  ( 该条目所属语种类型 ) 	
		  </c:if> <c:if test="${BANNER_ENTITY.encoding =='en'}">
			  中文<input type="radio" name="encoding" value="cn" />&nbsp;&nbsp;&nbsp;&nbsp;
			  英文<input type="radio" name="encoding" value="en" checked="checked" /> 
			  ( 该条目所属语种类型 ) 	  
		  </c:if></td>
			</tr>
			<tr>
				<td colspan="3" align="center" valign="middle">
					<hr /> <input name="id" type="hidden" value="${BANNER_ENTITY.id}" /> <input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>