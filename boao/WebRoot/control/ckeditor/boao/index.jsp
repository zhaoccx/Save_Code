<%@ page language="java" import="com.boao.util.AppConfig" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<title>boao | CKEditor FileUpload</title>
<script type='text/javascript' src='<%=path==""?path:path+"/" %>dwr/engine.js'></script>
<script type='text/javascript' src='<%=path==""?path:path+"/" %>dwr/util.js'></script>
<script type='text/javascript' src='<%=path==""?path:path+"/" %>dwr/interface/dwrUploadUtil.js'></script>
<script type='text/javascript'>
		dwr.engine.setActiveReverseAjax(true); 
		function SubmitUpload(){
			var path = "<%="/"+AppConfig.readValue("dir.ck.pic")+"/"%>";
			var file = dwr.util.getValue("upload_file");
			dwrUploadUtil.upload(file,path,CBack);
		}function CBack(result){
			if(result!="FAIL"){
				window.returnValue = result;
			}else{
				alert("图片上传失败,图片大小和尺寸不合法！");
			}
			window.close();
		}
		
	</script>
<style type="text/css">
<!--
* {
	margin: 0 auto;
	padding: 0;
}

label {
	font-size: 12px;
	font-family: "微软雅黑";
	color: #999;
	margin-left: 34px;
	line-height: 28px
}

ul {
	list-style: none;
	border: #CCC dashed 1px;
	width: 446px;
	height: 128px;
	overflow: hidden;
	float: left;
}

ul li {
	width: 440px;
	float: left;
	height: 38px;
}

#upload_file {
	width: 380px;
	float: left;
	height: 28px;
	line-height: 38px;
	border: #CCC solid 1px;
	margin-left: 30px;
}

#submit_file {
	float: left;
	border: #CCC solid 1px;
	font-size: 12px;
	margin-left: 30px;
	width: 100px;
	height: 32px;
	line-height: 26px;
}

#upload_status {
	color: #6699CC;
	font-size: 12px;
	margin-left: 30px;
}
-->
</style>
</head>
<body>
	<form name="FileUploadForm" id="FileUploadForm" method="post" enctype="multipart/form-data" action="">
		<ul>
			<li><label>请选择上传文件：</label></li>
			<li><input type="file" name="upload_file" id="upload_file" /></li>
			<li><input type="button" name="submit_file" id="submit_file" value=" 开始上传 " onclick="SubmitUpload()" /><label>上传期间请勿关闭或刷新页面</label></li>
		</ul>
	</form>
</body>
</html>
