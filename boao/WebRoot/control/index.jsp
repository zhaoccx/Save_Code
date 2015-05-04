<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>博奥好学-后台管理登录</title>
<link href="css/skin.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #ccc;
}

.STYLE5 {
	color: #FFFFFF;
	font-size: 12px;
}

.STYLE6 {
	color: #FF3366
}

.STYLE7 {
	font-size: 14px;
	font-weight: bold;
}
</style>
</head>


<body>
	<table style="width:100%;height:166; border:0; cellpadding:0: cellspacing:0">
		<tr>
			<td style="height:42; valign:top">
				<table style="width:100%; height:42; border:0; cellpadding:0; cellspacing:0" class="login_top_bg">
					<tr>
						<td width="1%" height="21"></td>
						<td height="42"></td>
						<td width="17%"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="valign:top">
				<table style="width:100%; height:532; border:0; cellpadding:0; cellspacing:0" class="login_bg">
					<tr>
						<td style="width:49%; align:right">
							<table style="width:91%; height:532; border:0; cellpadding:0; cellspacing:0" class="login_bg2">
								<tr>
									<td height="138" valign="top">
										<table style="width:89%; height:427; border:0; cellpadding:0; cellspacing:0">
											<tr>
												<td height="149"></td>
											</tr>
											<tr>
												<td style="height:80; align:right; valign:top"><img src="images/logo.png" />&nbsp; &nbsp;</td>
											</tr>
											<tr>
												<td height="198" align="right" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td height="25" colspan="3" align="right" class="left_txt">1.您好这里是博奥好学后台管理登录页面。&nbsp;</td>
														</tr>
														<tr>
															<td height="25" colspan="3" align="right" class="left_txt">2.如果您不是管理员或因误进入改页面,请您自觉离开。&nbsp;</td>
														</tr>
														<tr>
															<td height="25" colspan="3" align="right" class="left_txt">3.如有其它问题,请您点击‘返回首页’获取联系方式。&nbsp;</td>
														</tr>
														<tr>
															<td width="35%"></td>
															<td width="37%" height="40" align="right"><img src="images/icon-demo.gif" width="16" height="16" /><a href="http://www.csjz.org" class="left_txt3"> 返回首页</a></td>
															<td width="28%" align="right"><img src="images/icon-login-seaver.gif" width="16" height="16" /><a href="http://www.csjz.org" class="left_txt3"> 联系我们 </a>&nbsp; &nbsp;</td>
														</tr>
													</table></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td width="1%"></td>
						<td width="50%" valign="bottom">
							<table style="width:100%; height:59; border:0; cellpadding:0; cellspacing:0">
								<tr>
									<td width="4%"></td>
									<td width="96%" height="38"><span class="login_txt_bt STYLE6">${ADMIN_LOGIN_MSG} </span></td>
								</tr>
								<tr>
									<td></td>
									<td height="21"><table style="width:100%; height:328; border:0; cellpadding:0; cellspacing:0" id="table211">
											<tr>
												<td height="164" colspan="2" align="left"><span class="STYLE7">博奥好学网站后台管理登录</span>

													<form id="你睇Hi啊" name="myform" method="post" action="../admin/login">
														<table style="width:100%; height:116; border:0; cellpadding:0; cellspacing:0" id="table212">
															<tr>
																<td width="13%" height="38" class="top_hui_text" colspan="2"><span class="error">${LOGIN_ERROR }&nbsp; </span></td>
															</tr>
															<tr>
																<td width="13%" height="38" class="top_hui_text"><span class="login_txt">管理员：&nbsp; &nbsp; </span></td>
																<td height="38" colspan="2" class="top_hui_text"><input name="username" value="hdr" class="editbox4" size="20" maxlength="12" /></td>
															</tr>
															<tr>
																<td width="13%" class="top_hui_text"><span class="login_txt"> 密 码： &nbsp; &nbsp; </span></td>
																<td colspan="2" class="top_hui_text"><input name="password" value="a33265" type="password" value="" class="editbox4" size="21" maxlength="12" /></td>
															</tr>
															<tr>
																<td></td>
																<td width="15%"><input name="Submit" type="submit" class="button" id="Submit" value="登 陆" /></td>
																<td width="72%" class="top_hui_text"><input type="reset" class="button" id="cs" onclick="javascript:window.close()" value="取 消" /></td>
															</tr>
														</table>
													</form></td>
											</tr>
											<tr>
												<td width="433" height="164" align="right" valign="bottom"><img src="images/login-wel.gif" width="242" height="138" /></td>
												<td width="57" align="right" valign="bottom"></td>
											</tr>
										</table></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
					<tr>
						<td align="center" valign="bottom"><span class="STYLE5">Copyright &copy; 2012 博奥好学http://www.boaohaoxue.com</span></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>

</html>
