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
	height: 30px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 12px;
	margin-top: 8px;
}

.STYLE1 {
	font-family: "宋体";
	font-size: 14px;
	color: #333333;
	font-weight: bold;
}

.STYLE3 {
	color: #666666
}

ul {
	margin-left: -30px;
	list-style: none;
	width: 700px;
}

li {
	border: #CCCCCC dashed 1px;
	margin-top: 5px;
	width: 680px
}

.STYLE7 {
	color: #FF3333
}

.STYLE4 {
	color: #3399CC;
	text-decoration: none;
}
-->
</style>
<script type="text/javascript">
	function del(id)	{
		if(confirm("确定要删除这条Follow信息，删除后将不可回复？"))
			window.location.replace("action!toDeleteFollowus.do?id="+id);
		else
			return;
	}

</script>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td><span class="STYLE1">社区互动信息管理(Fllow us)</span></td>
					</tr>
				</table></td>
			<td width="16" valign="top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle"></td>
			<td valign="top" bgcolor="#F7F8F9">

				<table width="727" border="0" align="center" cellpadding="0" cellspacing="0">

					<tr>
						<td width="800"  >

							<table width="700" border="1" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td height="25" colspan="5" align="left" bgcolor="#E3E3E3">&nbsp;<span class="STYLE3">网站社区互动信息</span></td>
								</tr>
								<tr>
									<td colspan="5">
										<ul>
											<c:forEach var="follow" items="${FOLLOWUS_LIST}">
												<li>
													<div style="width:680px;height:40px;" id="div_${follow.id}" onmouseout="mousOut(this)" onmouseover="mousOver(this)">
														<div style="float:left;width:48px;margin-top:2px;">
															<center>
																<img src="../${follow.logoPath}" width="36" height="36" />
															</center>
														</div>
														<div style="float:left;width:200px;line-height:40px">
															<strong>名称：</strong>${follow.subject}
														</div>
														<div style="float:left;width:360px;line-height:40px">
															<strong>地址URL:</strong> ${follow.hrefUrl}<a href="${follow.hrefUrl}" target="_blank" class="STYLE4">访问》</a>
														</div>
														<div style="float:left;line-height:40px;">
															<a href="action!toFollowus.do?id=${follow.id}" class="STYLE4">编辑</a> | <a href="javascript:del('${follow.id}')" class="STYLE7">删除</a>
														</div>
													</div>
												</li>
											</c:forEach>
										</ul>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="middle"><br />

							<form name="form1" id="form1" method="post" enctype="multipart/form-data" action="action!toSaveFollowus.do">
								<fieldset>
									<legend>添加新互动站点</legend>
									<table width="695"   border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td height="25" width="106" align="right"><span class="STYLE3"><strong>社区Logo</strong>：</span></td>
											<td width="589" height="25" align="left" valign="middle"><input name="file" type="file" size="30" maxlength="255" /> (图片大小为：宽36 * 高36 像素[px])</td>
										</tr>
										<tr>
											<td height="25" align="right" class="STYLE3"><strong>社区名称：</strong></td>
											<td height="25" align="left" valign="middle"><input name="subject" type="text" id="subject" size="40" maxlength="100" value="新良微博" /> (例如:新浪微博\腾讯微博)</td>
										</tr>
										<tr>
											<td height="25" align="right"><span class="STYLE3"> <strong>社区连接</strong>：
											</span></td>
											<td height="25" align="left"><input name="link" type="text" size="40" maxlength="255" value="http://" /> (请包含'http://....')</td>
										</tr>
										<tr>
											<td height="25" align="right"><span class="STYLE3"> <strong>社区标签</strong>：
											</span></td>
											<td height="25" align="left"><input name="context" value="CSJZ" type="text" size="40" maxlength="255" /> (选填)</td>
										</tr>
										<tr>
											<td height="25" align="right" class="STYLE3"></td>
											<td height="40" align="left" valign="middle"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /></td>
										</tr>
									</table>
								</fieldset>
							</form>
							<br /></td>
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
