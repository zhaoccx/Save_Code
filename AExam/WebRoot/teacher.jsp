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

<title>My JSP 'teacher.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/styles.css">

<script language="javascript" type="text/javascript">
	function Question_check() {
		document.getElementById("question_check").style.display = "block";
		document.getElementById("question_manage").style.display = "none";
		document.getElementById("score_manage").style.display = "none";
	}

	function Question_manage() {
		document.getElementById("question_check").style.display = "none";
		document.getElementById("question_manage").style.display = "block";
		document.getElementById("score_manage").style.display = "none";
		document.getElementById("add_Choose").style.display = "block";
		document.getElementById("add_Judge").style.display = "none";
		document.getElementById("add_Fill").style.display = "none";
		document.getElementById("add_Question").style.display = "none";

	}

	function Score_manage() {
		document.getElementById("question_check").style.display = "none";
		document.getElementById("question_manage").style.display = "none";
		document.getElementById("score_manage").style.display = "block";
	}

	function Add_Choose() {
		document.getElementById("add_Choose").style.display = "block";
		document.getElementById("add_Judge").style.display = "none";
		document.getElementById("add_Fill").style.display = "none";
		document.getElementById("add_Question").style.display = "none";
	}
	function Add_Judge() {
		document.getElementById("add_Choose").style.display = "none";
		document.getElementById("add_Judge").style.display = "block";
		document.getElementById("add_Fill").style.display = "none";
		document.getElementById("add_Question").style.display = "none";
	}
	function Add_Fill() {
		document.getElementById("add_Choose").style.display = "none";
		document.getElementById("add_Judge").style.display = "none";
		document.getElementById("add_Fill").style.display = "block";
		document.getElementById("add_Question").style.display = "none";
	}
	function Add_Question() {
		document.getElementById("add_Choose").style.display = "none";
		document.getElementById("add_Judge").style.display = "none";
		document.getElementById("add_Fill").style.display = "none";
		document.getElementById("add_Question").style.display = "block";
	}

	function logOff() {
		if (window.confirm("确认退出？")) {

			//location.href = "studentrecordputAction.action";
			location.href = "managerExitWorkAction.action";

		}
	}
</script>
</head>

<body bgcolor="#CCCCCC" onLoad="Question_check()">

	<table width="1000" border="0" align="center" cellpadding="0"
		cellspacing="0" class="back">

		<thead>
			<tr>
				<td><img src="images/webtop.jpg" width="1000"></td>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td><table width="1000" height="412" border="0" cellpadding="0"
						cellspacing="0">
						<tr align="center" bgcolor="#6633cc">
							<td width="240" height="48"><span class="style5"
								onClick="Question_check()">阅 卷</span></td>
							<td width="240"><span class="style5"
								onClick="Question_manage()">试题管理</span></td>
							<td width="240"><span class="style5"
								onClick="Score_manage()">成绩管理</span></td>
							<td width="240"><span class="style5" onclick="logOff()">安全退出</span>
							</td>
						</tr>
						<tr>
							<td colspan="4" align="right" bgcolor="#6633cc"><span
								class="style1"><font color="red">当前老师：<s:property
											value="#session.user.teachname" /> </font> </span></td>
						</tr>
						<tr>
							<td height="356" colspan="4">
								<div id="question_check">
									<table width="1000" height="412-48" border="0" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="242">
												<table width="242" height="412-48" bgcolor="#6666CC">
													<s:iterator id="cor" value="#session.syllabus">
														<tr>
															<td height="50" align="center"><a
																href="studentexamquestAction.action?syllabus.syllid=<s:property value="#cor.syllid" />&syllabus.syllname=<s:property value="#cor.syllname" />&student.stuid=<s:property value="#session.user.stuid" />"><s:property
																		value="#cor.syllname" /> </a>
															</td>
														</tr>
													</s:iterator>
												</table>
											</td>
											<td width="738">
												<table width="743" height="409" cellpadding="0"
													cellspacing="0">

													<tr>
														<td width="735" height="400">
															<table width="735" height="398" cellpadding="0"
																cellspacing="0">
																<tr>
																	<td width="70" height="60" align="right" valign="top">题目</td>
																	<td width="20" height="60">&nbsp;</td>
																	<td height="60" colspan="3" align="left" valign="top">1、你家在哪里？</td>
																</tr>
																<tr>
																	<td width="70" height="120" align="right" valign="top">标准答案</td>
																	<td width="20" height="120">&nbsp;</td>
																	<td height="120" colspan="3" align="left" valign="top">长沙</td>
																</tr>
																<tr>
																	<td width="70" height="120" align="right" valign="top">考生答案</td>
																	<td width="20" height="120">&nbsp;</td>
																	<td height="120" colspan="3" align="left" valign="top">北京</td>
																</tr>
																<tr>
																	<td width="70" height="30" align="right" valign="top">打分</td>
																	<td width="20" height="30"></td>
																	<td width="400" height="30"><input type="text"
																		name="textfield"> <input type="submit"
																		name="Submit" value="下一题"> <input
																		type="submit" name="Submit" value="上一题"></td>
																	<td width="112"><input type="submit" name="Submit"
																		value="上份试卷"></td>
																	<td width="115"><input type="submit" name="Submit"
																		value="下份试卷"></td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
								<div id="question_manage">
									<table width="100%" border="1" height="100%">
										<tr>
											<td width="238" height="410">
												<table width="100%" height="400">
													<tr>
														<td height="40"><div align="center">
																科目： <select name="select" size="1">
																	<option value="请选择">请选择</option>
																	<option value="科目1">科目1</option>
																	<option value="科目2">科目2</option>
																</select>
															</div></td>
													</tr>
													<tr>
														<td height="90"><div align="center">
																<span onClick="Add_Choose()">选择题</span>
															</div></td>
													</tr>
													<tr>
														<td height="90"><div align="center">
																<span onClick="Add_Judge()">判断题</span>
															</div></td>
													</tr>
													<tr>
														<td height="90"><div align="center">
																<span onClick="Add_Fill()">填空题</span>
															</div></td>
													</tr>
													<tr>
														<td height="90"><div align="center">
																<span onClick="Add_Question()">问答题</span>
															</div></td>
													</tr>
												</table>
											</td>
											<td width="750" height="410">
												<div id="add_Choose">
													<table width="100%" height="400">
														<tr>
															<td width="100" height="64"><div align="center">输入题目：</div>
															</td>
															<td height="64"><textarea name="textarea" cols="50"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100" height="64"><div align="center">A选项：</div>
															</td>
															<td height="64"><textarea name="textarea" cols="30"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100" height="64"><div align="center">B选项：</div>
															</td>
															<td height="64"><textarea name="textarea" cols="30"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100" height="64"><div align="center">C选项：</div>
															</td>
															<td height="64"><textarea name="textarea" cols="30"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100" height="64"><div align="center">D选项：</div>
															</td>
															<td height="64"><textarea name="textarea" cols="30"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100" height="25"><div align="center">答案：</div>
															</td>
															<td height="25">A <input type="checkbox"
																name="checkbox" value="checkbox"> B <input
																type="checkbox" name="checkbox" value="checkbox">
																C <input type="checkbox" name="checkbox"
																value="checkbox"> D <input type="checkbox"
																name="checkbox" value="checkbox"></td>
														</tr>
														<tr>
															<td width="100" height="35"><div align="center">
																</div></td>
															<td height="35"><input name="quding" type="button"
																value="确定添加"></td>
														</tr>
													</table>
												</div>
												<div id="add_Judge">
													<table width="100%" height="80%">
														<tr>
															<td width="100" align="center">题目：</td>
															<td><textarea name="textarea" cols="50"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100" align="center">答案：</td>
															<td>对 <input type="radio" name="radiobutton"
																value="radiobutton"> 错 <input type="radio"
																name="radiobutton" value="radiobutton"></td>
														</tr>
														<tr>
															<td></td>
															<td><input type="submit" name="Submit" value="确定添加">
															</td>
														</tr>
													</table>
												</div>
												<div id="add_Fill">
													<table width="100%" height="100%">
														<tr>
															<td></td>
															<td>注意：填空题的空请用括号代替</td>
														</tr>
														<tr>
															<td width="100">题目：</td>
															<td><textarea name="textarea" cols="50"></textarea>
															</td>
														</tr>
														<tr>
															<td>答案1：</td>
															<td><input name="textfield" type="text" size="50">
															</td>
														</tr>
														<tr>
															<td>答案2：</td>
															<td><input name="textfield" type="text" size="50">
															</td>
														</tr>
														<tr>
															<td>答案3：</td>
															<td><input name="textfield" type="text" size="50">
															</td>
														</tr>
														<tr>
															<td>答案4：</td>
															<td><input name="textfield" type="text" size="50">
															</td>
														</tr>
														<tr>
															<td></td>
															<td><input type="submit" name="Submit" value="确定添加">
															</td>
														</tr>
													</table>
												</div>
												<div id="add_Question">
													<table width="100%" height="100%">
														<tr valign="top">
															<td width="100">题目：</td>
															<td><textarea name="textarea" cols="50" rows="10"></textarea>
															</td>
														</tr>
														<tr valign="top">
															<td width="100">答案：</td>
															<td><textarea name="textarea" cols="50" rows="10"></textarea>
															</td>
														</tr>
														<tr>
															<td width="100">&nbsp;</td>
															<td><input type="submit" name="Submit" value="确定添加">
															</td>
														</tr>
													</table>
												</div>
											</td>
										</tr>
									</table>
								</div>
								<div id="score_manage">
									<table width="100%" border="1">
										<tr>
											<td height="50" bgcolor="#6666CC">学号</td>
											<td height="50">姓名</td>
											<td height="50">科目1</td>
											<td height="50">科目2</td>
											<td height="50">科目3</td>
											<td height="50">科目4</td>
											<td height="50">总分</td>
										</tr>
										<tr>
											<td height="50" bgcolor="#6666CC">1001070301</td>
											<td height="50">小刚</td>
											<td height="50">88</td>
											<td height="50">77</td>
											<td height="50">99</td>
											<td height="50">100</td>
											<td height="50">364</td>
										</tr>
										<tr>
											<td height="50" bgcolor="#6666CC">1001070301</td>
											<td height="50">小刚</td>
											<td height="50">88</td>
											<td height="50">77</td>
											<td height="50">99</td>
											<td height="50">100</td>
											<td height="50">364</td>
										</tr>
										<tr>
											<td height="50" bgcolor="#6666CC">1001070301</td>
											<td height="50">小刚</td>
											<td height="50">88</td>
											<td height="50">77</td>
											<td height="50">99</td>
											<td height="50">100</td>
											<td height="50">364</td>
										</tr>
										<tr>
											<td height="50" bgcolor="#6666CC">1001070301</td>
											<td height="50">小刚</td>
											<td height="50">88</td>
											<td height="50">77</td>
											<td height="50">99</td>
											<td height="50">100</td>
											<td height="50">364</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
		</tbody>


		<tfoot>
			<tr>
				<td>
					<table>
						<tr>
							<td colspan="4"><img src="images/webfoot.jpg" /></td>
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
							<td align="center"><span class="style3">盗版予以追究法律责任，如须授权请联系望长城工作组，联系人：<a
									href="mailto:zhaochangchun45@hotmail.com">春哥</a>||本系统属免费软件</span>
							</td>
						</tr>

					</table></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>
