<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />

<title>！服务器出现错误（CSJZ），ERROR</title>

<style type="text/css">
<!--
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}

.STYLE2 {
	font-size: 12px;
	color: #333333;
}

.STYLE3 {
	font-size: 12px;
	color: #666666;
}

.STYLE4 {
	color: #000000
}

.STYLE5 {
	font-size: 16px
}
-->
</style>

<script type="text/javascript">

	function error_report(){
		var msg = document.getElementById("message");
		var url = "mailto:LNSTUDIO@126.COM?subject=CSJZ(系统错误报告)&amp;cc=lnstudio@163.com&amp;";
		var context = "body="+msg.value+" ";
		window.location.replace= url + context;
	}
	
</script>
</head>
<body>
	<table width="56" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td width="745" height="80"><span class="STYLE1">错误了,服务器内部错误 :（ </span></td>
		</tr>
		<tr>
			<td height="25"><label><span class="STYLE2">请您先按照下面提示进行排错,如问题依旧出现,请将错误信息<strong>复制并给我们发送</strong>，谢谢！
				</span></label></td>
		</tr>
		<tr>
			<td height="25" valign="bottom" class="STYLE3"><span class="STYLE3">1.服务器内部出现问题 <strong>请联系VPS服务商并查看详细的日志记录</strong>。
			</span></td>
		</tr>
		<tr>
			<td height="25" valign="bottom" class="STYLE3"><span class="STYLE3">2.输入、选择了错误的或者不存在的对象信息 <strong>ID(标识ID)</strong>。
			</span></td>
		</tr>
		<tr>
			<td height="25" valign="bottom" class="STYLE3">3.上传的文件超过了系统限制，出于安全和用户浏览的速度体验，<strong>单个</strong>文件的大小不得超过<strong>8/MB</strong>。
			</td>
		</tr>
		<tr>
			<td height="25" valign="bottom" class="STYLE3">4.管理员登录超时,或进行了非法（未授权的敏感文件上传），请后退重新登录。</td>
		</tr>
		<tr>
			<td height="25" align="left" valign="bottom" class="STYLE3"><br /> <a href="javascript:window.history.go(-1);">点击这里后退</a> <br /></td>
		</tr>
		<tr>
			<td height="25" align="left" valign="bottom" class="STYLE3"><strong>系统错误信息：</strong></td>
		</tr>

		<tr>
			<td height="25" valign="bottom" class="STYLE3"><textarea name="textfield" id="message" cols="86" readonly="readonly" rows="30">
Error Time:
${ERROR_TIME}
-----------------------------------------------
Error Action:
${ERROR_ACTION}
-----------------------------------------------
Error Code:
${ERROR_SUBJECT}
-----------------------------------------------
Cause:
${ERROR_DETAIL}
    </textarea></td>
		</tr>
		<tr>
			<td height="30" align="left" valign="middle" class="STYLE3">如有需要,请您将错误的系统信息和执行的操作发送至： <a href="javascript:error_report()" id="report">LNSTUDIO@163.COM</a></td>
		</tr>
	</table>
</body>
</html>
