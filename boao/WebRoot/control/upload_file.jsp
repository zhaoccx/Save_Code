<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<title>博奥好学网(CSJZ)-本地图片上传</title>
<style type="text/css">
<!--
body {
	font-size: 12px;
	color: #666666;
	font-family: "微软雅黑";
}
-->
</style>
</head>
<!-- 
	
		#but_submit{height:35px;width:130px;border: #666666 solid 1px;font-size:14px}
		
		<script type="text/javascript" src="js/common.js" charset="utf-8" ></script>
		
		<input type="button" name="but_submit" id="but_submit" onclick="sign_submit" value="保存修改" />
		
	 -->
<body>

	<form id="UploadForm" name="UploadForm" method="post" enctype="multipart/form-data" action="../upload!toUploadFile.do" target="lnstudio">

		<iframe name="lnstudio" width="0" height="0" frameborder="0" style="display: none"></iframe>

		<div style="width:500px; border:#CCCCCC solid 2px; margin-top:5px;margin-left:5px;">
			<table width="500" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" colspan="2" bgcolor="#CCCCCC"><strong>上传文件至服务器</strong></td>
				</tr>
				<tr>
					<td width="145" align="right">*请选择要上传文件：</td>
					<td width="355" align="left"><input name="file" type="file" size="35" /></td>
				</tr>
				<tr>
					<td align="center"></td>
					<td align="left"><input type="submit" name="Submit" value="上传" /></td>
				</tr>
			</table>
		</div>
	</form>

	<input type="hidden" name="return_url" id="return_url" value="${FILE_RETURN_URL}" />
	<script type="text/javascript">
	var result = document.getElementById("return_url").value;
	if(result!=""){
		window.returnValue = result;
			alert("图片上传成功! \n你可在左边输入宽和高指定图片大小，\n 或在点击'确定'后在文本编辑器里选中图片拉伸/缩放/移动图片。");
		window.close();
	}	
</script>
</body>
</html>