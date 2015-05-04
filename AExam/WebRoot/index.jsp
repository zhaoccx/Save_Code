<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

</head>
<script type="text/javascript" language="javascript">
	function show2() {
		document.getElementById("div1").style.display = "none";
		document.getElementById("div3").style.display = "none";
		document.getElementById("div2").style.display = "block";
	}
	function show3() {
		debugger;
		document.getElementById("div1").style.display = "none";
		document.getElementById("div2").style.display = "none";
		document.getElementById("div3").style.display = "block";
	}
	function show1() {
		document.getElementById("div2").style.display = "none";
		document.getElementById("div3").style.display = "none";
		document.getElementById("div1").style.display = "block";
	}
</script>
<body bgcolor="#CCCCCC" MARGINWIDTH=0 MARGINHEIGHT=0>
	<br>
	<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="back">
		<thead>
			<tr>
				<td><img src="images/webtop.jpg" width="1000" /></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td background="images/login_bg.jpg" height="400" width="1000">
					<table width="261" align="center" cellpadding="0" cellspacing="0" background="images/login_bg2.jpg">
						<tr align="center">
							<td width="68"><span onClick="show1()"><img src="images/login_s.jpg"> </span></td>
							<td width="68"><span onClick="show2()"><img src="images/login_t.jpg"> </span></td>
							<td width="117"><span onClick="show3()"><img src="images/login_m.jpg"> </span></td>
						</tr>
						<tr align="center">
							<td height="107" colspan="3">
								<div id="div1">
									<form action="studentloginAction.action" method="get" name="stu">
										<table width="100%" align="center" cellpadding="0" cellspacing="0">
											<tr valign="bottom">
												<td width="100" height="40" align="center"><span>学&nbsp;&nbsp;号：</span></td>
												<td height="40" colspan="2"><input name="student.stunum" type="text" size="20" /></td>
											</tr>
											<tr valign="bottom">
												<td width="100" height="40" align="center"><span>密&nbsp;&nbsp;码：</span></td>
												<td height="40" colspan="2"><input name="student.stupass" type="password" size="20" /></td>
											</tr>
											<tr valign="bottom">
												<td width="100" height="40" align="left">&nbsp;</td>
												<td width="79" height="40"><span> <span><span><span> <input type="reset" name="res1" value="取消" />
															</span> </span> </span>
												</span></td>
												<td width="95" height="40" align="right"><span><span> <input type="submit" name="butt1" value="登录" />
													</span> </span></td>
											</tr>
										</table>
									</form>
								</div>
								<div id="div2" class="abc">
									<form name="teachform" action="teacherloginTeacherAction.action" method="post">
										<table width="100%" align="center" cellpadding="0" cellspacing="0">
											<tr valign="bottom">
												<td width="100" height="40" align="center"><span>工&nbsp;&nbsp;号：</span></td>
												<td height="40" colspan="2"><input name="teacher.teachnum" type="text" size="20" /></td>
											</tr>
											<tr valign="bottom">
												<td width="100" height="40" align="center"><span>密&nbsp;&nbsp;码：</span></td>
												<td height="40" colspan="2"><input name="teacher.teachpass" type="password" size="20" /></td>
											</tr>
											<tr valign="bottom">
												<td width="100" height="40" align="left">&nbsp;</td>
												<td width="79" height="40"><span> <span><span><span> <input type="reset" name="res1" value="取消" />
															</span> </span> </span>
												</span></td>
												<td width="95" height="40" align="right"><span><span> <input type="submit" name="butt1" value="登录" />
													</span> </span></td>
											</tr>
										</table>
									</form>
								</div>
								<div id="div3" class="abc">
									<form name="manageAct" action="managerloginAction.action" method="post">
										<table width="100%" align="center" cellpadding="0" cellspacing="0">
											<tr valign="bottom">
												<td width="100" height="40" align="center"><span>账&nbsp;&nbsp;号：</span></td>
												<td height="40" colspan="2"><input name="exManager.manuser" type="text" size="20" /></td>
											</tr>
											<tr valign="bottom">
												<td width="100" height="40" align="center"><span>密&nbsp;&nbsp;码：</span></td>
												<td height="40" colspan="2"><input name="exManager.manpass" type="password" size="20" /></td>
											</tr>
											<tr valign="bottom">
												<td width="100" height="40" align="left">&nbsp;</td>
												<td width="79" height="40"><span> <span><span><span> <input type="reset" name="res1" value="取消" />
															</span> </span> </span>
												</span></td>
												<td width="95" height="40" align="right"><span><span> <input type="submit" name="butt1" value="登录" />
													</span> </span></td>
											</tr>
										</table>
									</form>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td>
					<table>
						<tr>
							<td colspan="4"><img src="images/webfoot.jpg" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td align="center"><span class="style3">版***权***所***有</span></td>
						</tr>
						<tr>
							<td align="center"><span class="style3">望长城工作组</span></td>
						</tr>
						<tr>
							<td align="center"><span class="style3">盗版予以追究法律责任，如须授权请联系望长城工作组，联系人：<a href="mailto:zhaochangchun45@hotmail.com">春哥</a>||本系统属免费软件
							</span></td>
						</tr>
					</table>
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>

