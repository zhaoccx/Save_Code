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

<title>学生考试页面</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script type="text/javascript" src="js/js.js"></script>
<script language="javascript" type="text/javascript">
	function subs() {
		if (window.confirm("请确认是否要交卷")) {

			//location.href = "studentrecordputAction.action";
			document.myform.submit();

		}
	}
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

<body bgcolor="#CCCCCC" onLoad="showDiv_exam_kc1()">

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
									onClick="initDiv()">开始考试</span> </strong>
							</td>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="showDiv_queryResult()">成绩查询</span> </strong>
							</td>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="showDiv_updatePWD()">修改密码</span> </strong>
							</td>
							<td width="25%" height="50" align="center" bgcolor="#6633CC"><strong><span
									onClick="logOff()">安全退出</span> </strong>
							</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td colspan="4" align="right" bgcolor="#6633cc"><span
					class="style1"><font color="red">当前考生：<s:property
								value="#session.user.stuname" /> </font> </span>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<div id="div_exam">
						<table width="100%" border="1">
							<tr>
								<td height="50" align="center"><strong>考试科目</strong>
								</td>
							</tr>
							<s:iterator id="cor" value="#session.score">
								<tr>
									<td height="50" align="center"><span
										onClick="showDiv_exam_kc1()"><s:property
												value="#cor.exSyllabus.syllname" /> </span>
									</td>
								</tr>
							</s:iterator>
							<tr>
								<td><br> <br> <br> <br> <br>
								</td>
							</tr>
						</table>
					</div>
					<form action="studentrecordputAction.action" name="myform"
						method="get">
						<div id="div_exam_kc">
							<table width="100%">
								<tr>
									<td width="21%" valign="top">
										<div id="div_exam_kc_tx">
											<table width="100%" border="1">
												<tr>
													<td height="50" align="center"><span
														onClick="showDiv_exam_kc_tx_choose()">选择题</span>
													</td>
												</tr>
												<tr>
													<td height="50" align="center"><span
														onClick="showDiv_exam_kc_tx_judge()">判断题</span>
													</td>
												</tr>
												<tr>
													<td height="50" align="center"><span
														onClick="showDiv_exam_kc_tx_fill()">填空题</span>
													</td>
												</tr>
												<tr>
													<td height="50" align="center"><span
														onClick="showDiv_exam_kc_tx_question()">问答题</span>
													</td>
												</tr>
											</table>
										</div></td>
									<td width="79%" valign="top">
										<!-- 选择题层 -->
										<div id="div_exam_tx_choose">
											<table width="811">
												<tr>
													<td width="791"><strong>一、选择题:从下列选项中选择一个正确的答案(2/20)</strong>
													</td>
												</tr>
												<s:iterator  id="choice" value="#session.choice"
													status="rowstatus">
													<tr>
														<td align="left"><s:property value="#rowstatus.count" />、<s:property
																value="#choice.chquest" /></td>
													</tr>
													<tr>
														<td align="left">A<s:property value="#choice.cha" />
														</td>
													</tr>
													<tr>
														<td align="left">B <s:property value="#choice.chb" />
														</td>
													</tr>
													<tr>
														<td align="left">C <s:property value="#choice.chc" />
														</td>
													</tr>
													<tr>
														<td align="left">D <s:property value="#choice.chd" />
														</td>
													</tr>
													<tr>
														<td>&nbsp;&nbsp;&nbsp;</td>
													</tr>
												</s:iterator>
												<s:textfield label="答题区，请在下面答题，请将答案对号写入【】中" size="100"
													labelposition="top" name="record.recchvalue"
													value="1,[ ]2,[ ]3,[ ]4,[ ]5,[ ]6,[ ]7,[ ]8,[ ]9,[ ]10,[ ]"></s:textfield>
											</table>
										</div>

										<!-- 判断题层 -->
										<div id="div_exam_tx_judge">
											<table width="809">
												<tr align="left">
													<td height="14" colspan="2"><strong>二、判断题:判断下列题目是否正确T代表正确，F代表错误(2/20)</strong>
													</td>
												</tr>
												<s:iterator id="torf" value="#session.torf"
													status="rowstatus">
													<tr>
														<td width="809" height="26"><s:property
																value="#rowstatus.count" />、<s:property
																value="#torf.torfquest" /></td>
													</tr>
													<tr>
														<td>&nbsp;&nbsp;&nbsp;</td>
													</tr>
												</s:iterator>
												<s:textfield label="答题区，请在下面答题，请将答案对号写入【】中" size="100"
													labelposition="top" name="record.rectorfvalue"
													value="1,[ ]2,[ ]3,[ ]4,[ ]5,[ ]6,[ ]7,[ ]8,[ ]9,[ ]10,[ ]"></s:textfield>

											</table>
										</div>


										<!-- 填空题层 -->
										<div id="div_exam_tx_fill">
											<table width="809">
												<tr>
													<td width="799"><strong>三、填空题:在下列空中填写正确的答案(2/20)</strong>
													</td>
												</tr>

												<s:iterator id="completion" value="#session.completion"
													status="rowstatus">
													<tr>
														<td><s:property value="#rowstatus.count" />、<s:property
																value="#completion.comquest" /></td>
													</tr>
													<tr>
														<td>&nbsp;&nbsp;&nbsp;</td>
													</tr>
												</s:iterator>
												<s:textfield label="答题区，请在下面答题，请将答案对号写入【】中" size="100"
													labelposition="top" name="record.reccomvalue"
													value="1,[ ]2,[ ]3,[ ]4,[ ]5,[ ]6,[ ]7,[ ]8,[ ]9,[ ]10,[ ]"></s:textfield>

											</table>
										</div>


										<!-- 问答题层 -->
										<div id="div_exam_tx_question">
											<table width="809">
												<tr>
													<td width="799"><strong>四、问答题:用简述的语言回答下列问题(10/40)</strong>
													</td>
												</tr>
												<s:iterator id="quest" value="#session.question"
													status="rowstatus">
													<tr>
														<td><s:property value="#rowstatus.count" />、<s:property
																value="#quest.questquest" />
														</td>
													</tr>
													<tr>
														<td>&nbsp;&nbsp;&nbsp;</td>
													</tr>
												</s:iterator>
												<s:textarea label="答题区，请在下面答题，请将答案对号写入【】中" cols="60" rows="20"
													labelposition="top" name="record.recquvalue"
													value="1,[ ]2,[ ]3,[ ]4,[ ]"></s:textarea>
											</table>
										</div></td>
								</tr>
								<tr align="right">

									<td height="50" colspan="2"><input type="hidden"
										name="syllabus.syllname"
										value="<s:property value="#session.question.exSyllabus.syllname" /> " /><input
										type="hidden" name="student.stuid"
										value="<s:property value="#session.user.stuid" />" /><input
										type="button" value="提交试卷" onclick="subs()" />
									</td>
								</tr>
							</table>
						</div>
					</form></td>
			</tr>

		</tbody>
		<tfoot>
			<tr>
				<td colspan="4"><img src="images/webfoot.jpg" />
				</td>
			</tr>
			<tr>
				<td><br>
				</td>
			</tr>
			<tr>
				<td align="center"><span class="style3">版***权***所***有</span>
				</td>
			</tr>
			<tr>
				<td align="center"><span class="style3">望长城工作组</span>
				</td>
			</tr>
			<tr>
				<td align="center"><span class="style3">盗版予以追究法律责任，如须授权请联系望长城工作组，联系人：<a href="mailto:zhaochangchun45@hotmail.com">春哥</a>||本系统属免费软件</span>
				</td>
			</tr>
		</tfoot>
	</table>

</body>
</html>


