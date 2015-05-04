<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<base href="<%=basePath%>" />

<title></title>
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

.STYLE1 {
	font-family: "宋体";
	font-size: 14px;
	color: #333333;
	font-weight: bold;
}

.STYLE14 {
	color: #FF3366
}

.STYLE15 {
	color: #0066CC
}

.STYLE16 {
	font-size: 14px
}

li {
	line-height: 30px;
	font-size: 13px;
	color: #333333;
	border-bottom: #CCCCCC dashed 1px;
	width: 620px;
}

.STYLE18 {
	color: #FF6600;
}
-->
</style>
<script type="text/javascript">
	function onMouse(val) {
		val.bgColor = "#EEF2FB";
	}
	function onMouseOut(val) {
		val.bgColor = "";
	}
	function del(id) {
		if (confirm("数据删除后将不可恢复,是否要删除这条用户留言？"))
			location.replace("action!toDeleteMsg.do?id=" + id);
		else
			return;
	}
</script>

<!-- 
	
		#but_submit{height:35px;width:130px;border: #666666 solid 1px;font-size:14px}
		
		<input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" />
		
		
	<script type="text/javascript" src="js/common.js" charset="utf-8" ></script>
	<script type="text/javascript">
		function del(id){
			var result= confirm("数据删除后将不能恢复，确定删除吗？");
			if(result){
				window.location.replace("action!toDeletePartner.do?id="+id);
			}
			return;
		}
	</script>
	 -->
</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td><span class="STYLE1">用户留言 : ${MESSAGE_ITEM.title}</span></td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td height="439" valign="middle"></td>
			<td style="valign:top; bgcolor:#F7F8F9">
				<table style="width:782; height:550; border:0; align:left; cellpadding:0; cellspacing:0">
					<tr>
						<td style="min-height:120px;align:left; valign:middle">


							<table style="width:687; height:461; border:1; align:center; cellpadding:0; cellspacing:0">
								<tr>
									<td width="510" align="left" bgcolor="#EEEEEE"><span class="STYLE16"><strong>留言标题/主题</strong>：${MESSAGE_ITEM.title}</span></td>
									<td width="85" align="center" bgcolor="#EEEEEE"><c:if test="${MESSAGE_ITEM.isRead==0}">
											<a href="action!toUpdateMessage.do?id=${MESSAGE_ITEM.id}" class="STYLE15">标记为已读</a>
										</c:if> <c:if test="${MESSAGE_ITEM.isRead==1}">
											<a href="action!toUpdateMessage.do?id=${MESSAGE_ITEM.id}" class="STYLE18">标记为未读</a>
										</c:if></td>
									<td width="87" align="center" bgcolor="#EEEEEE"><a href="javascript:del('${MESSAGE_ITEM.id}')" class="STYLE14">删除这条信息</a></td>
								</tr>
								<tr>
									<td colspan="3">
										<ul>
											<li><c:if test="${MESSAGE_ITEM.isRead==0}">状态:&nbsp;&nbsp;<a class="STYLE12">未读</a>
												</c:if> <c:if test="${MESSAGE_ITEM.isRead==1}">状态:&nbsp;&nbsp;<a class="STYLE12">已读</a>
												</c:if></li>
											<li>留言时间:&nbsp;&nbsp;${MESSAGE_ITEM.pubDate}</li>
											<li>主题:&nbsp;&nbsp;${MESSAGE_ITEM.title}</li>
											<li>类型:&nbsp;&nbsp;${MESSAGE_ITEM.style}</li>
											<li style="min-height:160px; list-style:none"><textarea name="textfield" readonly="readonly" cols="75" rows="10">留言内容：
${MESSAGE_ITEM.context}</textarea></li>
											<li>称呼:&nbsp;&nbsp;${MESSAGE_ITEM.firstName}&nbsp;,${Message.lastName}</li>
											<li>性别:&nbsp;&nbsp;${MESSAGE_ITEM.gender}</li>
											<li>电话:&nbsp;&nbsp;${MESSAGE_ITEM.phone}</li>
											<li>邮箱:&nbsp;&nbsp;<a href="mailto:${MESSAGE_ITEM.email}" target="_blank">${MESSAGE_ITEM.email}</a></li>
											<li>地址:&nbsp;&nbsp;${MESSAGE_ITEM.location}</li>
											<li style="list-style:none"><a href="action!toReturnMsg.do">返回用户留言列表</a></li>
										</ul>
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
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
