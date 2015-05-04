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

<title>My JSP 'student.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

<script language="javascript" type="text/javascript">
	function initDiv() {
		document.getElementById("div_exam").style.display = "block";
		document.getElementById("div_queryResult").style.display = "none";
		document.getElementById("div_exam_kc").style.display = "none";
		document.getElementById("div_updatePWD").style.display = "none";
	}

	function showDiv_exam_kc1() {
		document.getElementById("div_exam").style.display = "none";
		document.getElementById("div_exam_kc").style.display = "block";

		document.getElementById("div_exam_tx_choose").style.display = "block";
		document.getElementById("div_exam_tx_judge").style.display = "none";
		document.getElementById("div_exam_tx_fill").style.display = "none";
		document.getElementById("div_exam_tx_question").style.display = "none";
	}
	function showDiv_queryResult() {
		document.getElementById("div_queryResult").style.display = "block";
		document.getElementById("div_exam").style.display = "none";
		document.getElementById("div_exam_kc").style.display = "none";
		document.getElementById("div_updatePWD").style.display = "none";
	}
	function showDiv_updatePWD() {
		document.getElementById("div_queryResult").style.display = "none";
		document.getElementById("div_exam").style.display = "none";
		document.getElementById("div_exam_kc").style.display = "none";
		document.getElementById("div_updatePWD").style.display = "block";
	}
	function showDiv_exam_kc_tx_choose() {
		document.getElementById("div_exam_tx_choose").style.display = "block";
		document.getElementById("div_exam_tx_judge").style.display = "none";
		document.getElementById("div_exam_tx_fill").style.display = "none";
		document.getElementById("div_exam_tx_question").style.display = "none";
	}
	function showDiv_exam_kc_tx_judge() {
		document.getElementById("div_exam_tx_choose").style.display = "none";
		document.getElementById("div_exam_tx_judge").style.display = "block";
		document.getElementById("div_exam_tx_fill").style.display = "none";
		document.getElementById("div_exam_tx_question").style.display = "none";
	}
	function showDiv_exam_kc_tx_fill() {
		document.getElementById("div_exam_tx_choose").style.display = "none";
		document.getElementById("div_exam_tx_judge").style.display = "none";
		document.getElementById("div_exam_tx_fill").style.display = "block";
		document.getElementById("div_exam_tx_question").style.display = "none";
	}
	function showDiv_exam_kc_tx_question() {
		document.getElementById("div_exam_tx_choose").style.display = "none";
		document.getElementById("div_exam_tx_judge").style.display = "none";
		document.getElementById("div_exam_tx_fill").style.display = "none";
		document.getElementById("div_exam_tx_question").style.display = "block";
	}
	function logOff() {
		if (window.confirm("确认退出？")) {

			//location.href = "studentrecordputAction.action";
			location.href="managerExitWorkAction.action";

		}
	}
</script>


</head>

<body bgcolor="#CCCCCC" onLoad="initDiv()">
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
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="initDiv()">开始考试</span> </strong></td>
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
							</tr>
							<tr>
								<td height="50" align="center"><a
									href="javascript:showDiv_exam_kc1()">数据结构</a></td>
							</tr>
							<tr>
								<td height="50" align="center"><span
									onClick="showDiv_exam_kc1()">高等数学</span></td>
							</tr>
							<tr>
								<td height="50" align="center"><span
									onClick="showDiv_exam_kc1()">Java编程</span></td>
							</tr>
							<tr>
								<td height="50" align="center"><span
									onClick="showDiv_exam_kc1()">计算机网络</span></td>
							</tr>
							<s:iterator id="cor" value="#session.score">
								<tr>
									<td height="50" align="center"><span
										onClick="showDiv_exam_kc1()"><s:property
												value="#cor.exSyllabus.syllname" /> </span></td>
								</tr>
							</s:iterator>
							<tr>
								<td><br> <br> <br> <br> <br></td>
							</tr>
						</table>
					</div>
					<div id="div_exam_kc">
						<table width="100%">
							<tr>
								<td width="21%" valign="top">
									<div id="div_exam_kc_tx">
										<table width="100%" border="1">
											<tr>
												<td height="50" align="center"><span
													onClick="showDiv_exam_kc_tx_choose()">选择题</span></td>
											</tr>
											<tr>
												<td height="50" align="center"><span
													onClick="showDiv_exam_kc_tx_judge()">判断题</span></td>
											</tr>
											<tr>
												<td height="50" align="center"><span
													onClick="showDiv_exam_kc_tx_fill()">填空题</span></td>
											</tr>
											<tr>
												<td height="50" align="center"><span
													onClick="showDiv_exam_kc_tx_question()">问答题</span></td>
											</tr>
										</table>
									</div>
								</td>
								<td width="79%" valign="top">
									<div id="div_exam_tx_choose">
										<table width="811">
											<tr>
												<td width="791"><strong>一、选择题:从下列选项中选择一个正确的答案</strong>
												</td>
											</tr>
											<tr>
												<td align="left">1.你的爱好是?</td>
											</tr>
											<tr>
												<td align="left"><input type="radio" name="radiobutton"
													value="radiobutton"> A 篮球</td>
											</tr>
											<tr>
												<td align="left"><input type="radio" name="radiobutton"
													value="radiobutton"> B 看书</td>
											</tr>
											<tr>
												<td align="left"><input type="radio" name="radiobutton"
													value="radiobutton"> C 敲代码</td>
											</tr>
											<tr>
												<td align="left"><input type="radio" name="radiobutton"
													value="radiobutton"> D 打架</td>
											</tr>

										</table>
									</div>
									<div id="div_exam_tx_judge">
										<table width="809">
											<tr align="left">
												<td height="14" colspan="2"><strong>二、判断题:判断下列题目是否正确T代表正确，F代表错误</strong>
												</td>
											</tr>
											<tr>
												<td width="131" height="26">1.1+1=2?</td>
												<td width="662"><input type="radio" name="radiobutton"
													value="radiobutton"> T &nbsp;&nbsp;&nbsp; <input
													type="radio" name="radiobutton" value="radiobutton">
													F</td>
											</tr>
										</table>
									</div>
									<div id="div_exam_tx_fill">
										<table width="809">
											<tr>
												<td width="799"><strong>三、填空题:在下列空中填写正确的答案</strong></td>
											</tr>
											<tr>
												<td>1.你的名字_______</td>
											</tr>
										</table>
									</div>
									<div id="div_exam_tx_question">
										<table width="809">
											<tr>
												<td width="799"><strong>四、问答题:用简述的语言回答下列问题</strong></td>
											</tr>
											<tr>
												<td>1.Java是什么?</td>
											</tr>
											<tr>
												<td>java是J a v a</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr align="right">
								<td height="50" colspan="2"><input type="submit"
									name="submit" value="提交试卷">
								</td>
							</tr>
						</table>
					</div>
					<div id="div_queryResult">
						<table width="100%" border="1">
							<tr>
								<td>科目</td>
								<td>选择题得分</td>
								<td>判断题得分</td>
								<td>填空题得分</td>
								<td>问答题得分</td>
								<td>总分</td>
							</tr>
							<tr>
								<td height="50">数据结构</td>
								<td height="50">40</td>
								<td height="50">10</td>
								<td height="50">20</td>
								<td height="50">30</td>
								<td height="50">100</td>
							</tr>
							<tr>
								<td height="50">高等数学</td>
								<td height="50">40</td>
								<td height="50">10</td>
								<td height="50">20</td>
								<td height="50">30</td>
								<td height="50">100</td>
							</tr>
							<tr>
								<td height="50">计算机网络</td>
								<td>40</td>
								<td>10</td>
								<td>20</td>
								<td>30</td>
								<td>100</td>
							</tr>
							<tr>
								<td height="50">计算机基础</td>
								<td>40</td>
								<td>10</td>
								<td>20</td>
								<td>30</td>
								<td>100</td>
							</tr>
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


