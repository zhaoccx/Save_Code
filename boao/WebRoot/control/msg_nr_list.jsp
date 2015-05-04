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

.STYLE12 {
	color: #FF3333
}
-->
</style>
<script type="text/javascript">
	function onMouse(val){
		val.bgColor="#EEF2FB";
	}
	
	function onMouseOut(val){
		val.bgColor="";
	}
	
	function del(id){
	if(confirm("数据删除后将不可恢复,是否要删除这条用户留言？"))
		location.replace("action!toDeleteMsg.do?id="+id);
	else
		return;
	}
	
</script>

</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td><span class="STYLE1">所有用户未读用户留言</span></td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle"></td>
			<td valign="top" bgcolor="#F7F8F9"><table width="856" border="0" align="left" cellpadding="0" cellspacing="0">
					<tr>
						<td style="min-height:120px;">

							<table width="773" border="1" align="center" style="border-bottom:#CCCCCC solid 1px; border-left:#CCCCCC solid 1px; border-right:#CCCCCC solid 1px; border-top:#CCCCCC solid 1px;" cellpadding="0" cellspacing="0">
								<tr>
									<td width="58" height="25" align="center" bgcolor="#E4E4E4"><strong>信息ID</strong></td>
									<td width="247" height="25" align="left" bgcolor="#E4E4E4"><strong>信息标题/主题</strong></td>
									<td width="69" align="center" bgcolor="#E4E4E4"><strong>信息状态</strong></td>
									<td width="91" height="25" align="center" bgcolor="#E4E4E4"><strong>信息类型</strong></td>
									<td width="114" height="25" align="center" bgcolor="#E4E4E4"><strong>留言时间</strong></td>
									<td width="93" align="center" bgcolor="#E4E4E4"><strong>阅读信息</strong></td>
									<td width="85" align="center" bgcolor="#E4E4E4"><strong>编辑/删除</strong></td>
								</tr>

								<c:forEach var="msg" items="${MESSAGE_NR_LIST}">
									<tr onmouseout="onMouseOut(this)" onmouseover="onMouse(this)">
										<td height="25" align="center">${msg.id}</td>
										<td height="25" align="left">${msg.title}</td>
										<td align="center" width="69"><c:if test="${msg.isRead==0}">
												<a class="STYLE12">未读</a>
											</c:if> <c:if test="${msg.isRead==1}">
					已读
				</c:if></td>
										<td width="91" height="25" align="center">${msg.style}</td>
										<td height="25" align="center">${msg.pubDate}</td>
										<td align="center"><a href="action!toMsgContext.do?id=${msg.id}">查看详细</a></td>
										<td align="center"><a href="javascript:del('${msg.id}');" class="STYLE12">删除信息</a></td>
									</tr>
								</c:forEach>

								<tr>
									<td height="25" colspan="7" align="left">&nbsp;共有<strong>${MESSAGE_NR_NUM}</strong>条未读用户留言，当前是第<strong>${MESSAGE_NR_PAGENO}</strong>页，该页下有<strong>${fn:length(MESSAGE_NR_LIST)}</strong>条记录.&nbsp;&nbsp;<a href="action!toNewMsg.do?code=next">下一页</a> | <a href="action!toNewMsg.do?code=back">上一页</a></td>
								</tr>
							</table>
						</td>
					</tr>

				</table></td>
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
