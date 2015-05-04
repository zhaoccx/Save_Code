<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'studentscore.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

<script language="javascript" type="text/javascript">
	function showDiv_queryResult() {
		document.getElementById("div_queryResult").style.display = "block";
		document.getElementById("div_exam").style.display = "none";
		document.getElementById("div_exam_kc").style.display = "none";
		document.getElementById("div_updatePWD").style.display = "none";
	}
	function showDiv_updatePWD() {
		document.getElementById("div_updatePWD").style.display = "block";
		document.getElementById("div_queryResult").style.display = "none";
		document.getElementById("div_exam").style.display = "none";
		document.getElementById("div_exam_kc").style.display = "none";

	}

	function logOff() {
		if (window.confirm("确认退出？")) {

			//location.href = "studentrecordputAction.action";
			location.href="managerExitWorkAction.action";

		}
	}
</script>


</head>

<body bgcolor="#CCCCCC" onLoad="showDiv_queryResult()">
	<table width="1000" border="0" align="center" cellpadding="0"
		cellspacing="0" class="back">
		<thead>
			<tr>
				<td colspan="4"><img src="images/webtop.jpg" width="1000" /></td>
			</tr>
		</thead>
		<tbody>
			<tr bgcolor="#6633FF">
				<td colspan="2">
					<table width="100%">
						<tr>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong>
									<span>开始考试</span> </strong></td>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="showDiv_queryResult()">成绩查询</span> </strong></td>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="showDiv_updatePWD()">修改密码</span> </strong></td>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="logOff()">安全退出</span> </strong></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" bgcolor="#6633cc"><span
					class="style1"><font color="red">当前考生：<s:property
								value="#session.user.stuname" /> </font> </span></td>
			</tr>
			<tr>
				<td colspan="4">
					<div id="div_exam">
						<table width="100%" border="1">
							<tr>
								<td height="50" align="center"><strong>考试科目</strong></td>

								<s:iterator id="cor" value="#session.syllabus">
									<tr>
										<td height="50" align="center"><a
											href="studentexamquestAction.action?syllabus.syllid=<s:property value="#cor.syllid" />&syllabus.syllname=<s:property value="#cor.syllname" />&student.stuid=<s:property value="#session.user.stuid" />"><s:property
													value="#cor.syllname" /> </a></td>
									</tr>
								</s:iterator>
							<tr>
								<td><br> <br> <br> <br> <br></td>
							</tr>
						</table>
					</div>
					<div id="div_queryResult">
						<table width="100%" border="1">
							<tr align="center">
								<td>科目</td>
								<td>选择题得分</td>
								<td>判断题得分</td>
								<td>填空题得分</td>
								<td>问答题得分</td>
								<td>总分</td>
							</tr>
							<s:iterator id="scrd" value="#session.scored">
								<tr align="center">
									<td height="50">&nbsp;<s:property
											value="#scrd.exSyllabus.syllname" /></td>
									<td height="50">&nbsp;<s:property value="#scrd.scorech" />
									</td>
									<td height="50">&nbsp;<s:property value="#scrd.scoretorf" />
									</td>
									<td height="50">&nbsp;<s:property value="#scrd.scorecom" />
									</td>
									<td height="50">&nbsp;<s:property value="#scrd.scorequest" />
									</td>
									<td height="50">&nbsp;<s:property value="#scrd.scoretotal" />
									</td>
								</tr>
							</s:iterator>



						</table>
						<br> <br> <br> <br> <br>
					</div>

					<div id="div_updatePWD">
						<table width="246" align="center">
							<tr align="center">
								<td colspan="2"><strong>密码修改</strong>
								</td>
							</tr>
							<tr align="center">
								<td>学&nbsp;&nbsp;号</td>
								<td><input name="stunum" type="text"></td>
							</tr>
							<tr align="center">
								<td>原密码</td>
								<td><input name="pwd1" type="password"></td>
							</tr>
							<tr align="center">
								<td>新密码</td>
								<td><input name="pwd2" type="password"></td>
							</tr>
							<tr align="center">
								<td colspan="2"><input name="submit" type="submit"
									value="确定"> <input name="submit" type="button"
									value="返回"></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>

		</tbody>
		<tfoot>
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
				<td align="center"><span class="style3">盗版予以追究法律责任，如须授权请联系望长城工作组，联系人：<a
						href="mailto:zhaochangchun45@hotmail.com">春哥</a>||本系统属免费软件</span></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>


