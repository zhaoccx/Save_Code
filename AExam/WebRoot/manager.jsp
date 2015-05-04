<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>管理员</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script type="text/javascript" src="/js/jquery-1.5.2.min.js"></script>
<script type="text/javascript" language="javascript">
	function show(d1) {
		if (document.getElementById(d1).style.display == "none") {
			document.getElementById(d1).style.display = "block";

		} else {
			document.getElementById(d1).style.display = "none";
		}
	}
	function show1_add() {
		document.getElementById("student_add").style.display = "block";
		document.getElementById("student_delete").style.display = "none";
		document.getElementById("student_query").style.display = "none";

		document.getElementById("teacher_add").style.display = "none";
		document.getElementById("teacher_delete").style.display = "none";
		document.getElementById("teacher_query").style.display = "none";

	}
	function show1_delete() {
		document.getElementById("student_delete").style.display = "block";
		document.getElementById("student_add").style.display = "none";
		document.getElementById("student_query").style.display = "none";

		document.getElementById("teacher_add").style.display = "none";
		document.getElementById("teacher_delete").style.display = "none";
		document.getElementById("teacher_query").style.display = "none";
	}
	function show1_query() {
		document.getElementById("student_delete").style.display = "none";
		document.getElementById("student_add").style.display = "none";
		document.getElementById("student_query").style.display = "block";

		document.getElementById("teacher_add").style.display = "none";
		document.getElementById("teacher_delete").style.display = "none";
		document.getElementById("teacher_query").style.display = "none";
	}
	function show2_add() {
		document.getElementById("teacher_add").style.display = "block";
		document.getElementById("teacher_delete").style.display = "none";
		document.getElementById("teacher_query").style.display = "none";

		document.getElementById("student_add").style.display = "none";
		document.getElementById("student_delete").style.display = "none";
		document.getElementById("student_query").style.display = "none";

	}
	function show2_delete() {
		document.getElementById("teacher_delete").style.display = "block";
		document.getElementById("teacher_add").style.display = "none";
		document.getElementById("teacher_query").style.display = "none";

		document.getElementById("student_add").style.display = "none";
		document.getElementById("student_delete").style.display = "none";
		document.getElementById("student_query").style.display = "none";
	}
	function show2_query() {
		document.getElementById("teacher_delete").style.display = "none";
		document.getElementById("teacher_add").style.display = "none";
		document.getElementById("teacher_query").style.display = "block";

		document.getElementById("student_add").style.display = "none";
		document.getElementById("student_delete").style.display = "none";
		document.getElementById("student_query").style.display = "none";
	}
</script>

</head>

<body bgcolor="#CCCCCC"  MARGINWIDTH=0
	MARGINHEIGHT=0>
	<br>
	<table width="1000" border="0" align="center" cellpadding="0"
		cellspacing="0" class="back">
		<thead>
			<tr>

				<td><img src="images/webtop.jpg" width="1000" />
				</td>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td height="500" width="100%">
					<table width="100%" height="100%">
						<tr>
							<td width="21%" height="100%" align="left" valign="top">
								<div style="padding-left:30; padding-top:30">

									<div>
										<a href="javascript: onClick=show('1')"><img
											src="images/z-4.jpg" border="0">学生管理</a>
									</div>

									<div id="1" style="display:none;padding-left:15px;">

										<a href="javascript:onClick=show1_add()"><img
											src="images/z-top.gif" border="0">添加学生</a><br> <a
											href="javascript:onClick=show1_delete()"><img
											src="images/z-top.gif" border="0">删除学生</a><br> <a
											href="managershowStudentAction.action"><img
											src="images/z-end.gif" border="0">查询学生信息</a>
									</div>

									<div>
										<a href="javascript: onClick=show('2')"><img
											src="images/z-4.jpg" border="0">教师管理</a>
									</div>

									<div id="2" style="display:none;padding-left:15px;">

										<a href="javascript:onClick=show2_add()"><img
											src="images/z-top.gif" border="0">添加教师</a><br> <a
											href="javascript:onClick=show2_delete()"><img
											src="images/z-top.gif" border="0">删除教师</a><br> <a
											href="managershowTeacherAction.action"><img
											src="images/z-end.gif" border="0">查询教师信息</a>

									</div>
								</div></td>
							<td width="70%" valign="top">&nbsp;
								<div id="student_add" style="display:none; padding-top:30">
									<s:form theme="simple"
										action="managerinsertStudentAction.action">
										<table width="100%">
											<tr>
												<td width="50">学号</td>
												<td><s:textfield name="exStudent.stunum" />
												</td>
											</tr>
											<tr>
												<td width="50">姓名</td>
												<td><s:textfield name="exStudent.stuname" />
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td><s:reset name="reset" value="重置" />&nbsp;&nbsp;&nbsp;<s:submit
														name="submit" value="确定" />
												</td>
											</tr>
										</table>
									</s:form>
								</div>

								<div id="student_delete" style="display:none; padding-top:30">
									<s:form theme="simple"
										action="managerdeleteStudentAction.action">
										<table width="100%">

											<tr>
												<td width="50">学号</td>
												<td><s:textfield name="exStudent.stunum" />
												</td>
											</tr>
											<tr>
												<td width="50">姓名</td>
												<td><s:textfield name="exStudent.stuname" />
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td><s:reset name="reset" value="重置" />&nbsp;&nbsp;&nbsp;<s:submit
														name="submit" value="删除 " />
												</td>
											</tr>
										</table>
									</s:form>
								</div>
								<div id="student_query" style="display:none; padding-top:30">
									<s:form theme="simple"
										action="managerqueryStudentAction.action">
										<table width="100%">
											<tr>
												<td>按学号查询</td>
												<td><s:textfield name="exStudent.stunum" />
												</td>
												<td><a href="managershowStudentAction.action">查询全部</a>
												</td>
											</tr>
											<tr>
												<td colspan="4">
													<table width="100%" border="1">
											<!--
														<tr align="center">
															<td width="120" height="30">100112071703</td>
															<td width="70" height="30">张三</td>
															<td width="120" height="30">15673892922</td>
															<td width="180" height="30">430527199178974892</td>
															<td width="120" height="30">fjsk@160.com</td>
															<td width="60" height="30"><input type="button"
																name="update" value="修改">
															</td>
															<td width="60" height="30"><input type="button"
																name="delete" value="删除">
															</td>
														</tr>
														<tr align="center">
															<td width="120" height="30">100112071704</td>
															<td width="70" height="30">张三</td>
															<td width="120" height="30">15673892922</td>
															<td width="180" height="30">430527199178974892</td>
															<td width="120" height="30">fjsk@160.com</td>
															<td width="60" height="30"><input type="button"
																name="update" value="修改">
															</td>
															<td width="60" height="30"><input type="button"
																name="delete" value="删除">
															</td>
														</tr>
														<tr align="center">
															<td width="120" height="30">100112071705</td>
															<td width="70" height="30">张三</td>
															<td width="120" height="30">15673892922</td>
															<td width="180" height="30">430527199178974892</td>
															<td width="120" height="30">fjsk@160.com</td>
															<td width="60" height="30"><input type="button"
																name="update" value="修改">
															</td>
															<td width="60" height="30"><input type="button"
																name="delete" value="删除">
															</td>
														</tr>
														
														-->
													</table></td>
											</tr>
											<tr align="center">
												<td height="50" colspan="4"><a>首页&nbsp;</a>||<a>上一页&nbsp;</a>||<a>下一页&nbsp;</a>||<a>尾页</a>
												</td>
											</tr>
										</table>
									</s:form>
								</div>
								<div id="teacher_add" style="display:none; padding-top:30">
									<s:form theme="simple"
										action="managerinsertTeacherAction.action">
										<table width="100%">
											<tr>
												<td width="50">工号</td>
												<td><s:textfield name="exTeacher.teachnum" />
												</td>
											</tr>
											<tr>
												<td width="50">姓名</td>
												<td><s:textfield name="exTeacher.teachname" />
												</td>
											</tr>
											<tr>
												<td width="50">部门</td>
												<td><s:textfield name="exDepartment.departid" />
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td><s:reset name="reset" value="重置" />&nbsp;&nbsp;&nbsp;<s:submit
														name="submit" value="确定" />
												</td>
											</tr>
										</table>
									</s:form>
								</div>
								<div id="teacher_delete" style="display:none; padding-top:30">
									<s:form theme="simple"
										action="managerdeleteTeacherAction.action">
										<table width="100%">
											<tr>
												<td width="50">工号</td>
												<td><s:textfield name="exTeacher.teachnum" />
												</td>
											</tr>
											<tr>
												<td width="50">姓名</td>
												<td><s:textfield name="exTeacher.teachname" />
												</td>
											</tr>
											<tr>
												<td width="50">部门</td>
												<td><s:textfield name="exTeacher.departid" />
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td><s:reset name="reset" value="重置" />&nbsp;&nbsp;&nbsp;<s:submit
														name="submit" value="删除" />
												</td>
											</tr>
										</table>
									</s:form>
								</div>
								<div id="teacher_query" style="display:none;padding-top:30">

									<!-- s:form theme="simple"	action="managerqueryTeacherAction.action" -->
									<s:form theme="simple"
										action="managerqueryTeacherAction.action">
										<script type="text/javascript" language="javascript">
											function sendAjax() {
												$
														.ajax({
															type : "POST",
															url : "managershowTeacherByAjaxAction.action",
															data : "name=John",
															dataType : "text",
															success : function(
																	msg) {
																alert("Data Saved: "
																		+ msg);
															}
														});

											}
										</script>
										<table width="100%">
											<tr>
												<td>按工号查询</td>
												<td><s:textfield name="exTeacher.stunum" />&nbsp;&nbsp;&nbsp;<a
													href="managershowTeacherToIdAction.action">查询</a>
												</td>
												<td><a href="javascript:sendAjax()">查询全部</a>
												</td>
											</tr>
											<tr>
												<td colspan="4">
													<table width="100%" border="1">
														<tr align="center">
															<td width="120" height="30">工号</td>
															<td width="70" height="30">姓名</td>
															<td width="120" height="30">电话</td>
															<td width="180" height="30">省份证号码</td>
															<td width="120" height="30">邮箱</td>
															<td width="60" height="30" colspan="2">&nbsp;</td>
														</tr>
														<s:iterator id="teacher" value="#request.teacherListInfo">
															<tr align="center">
																<td width="120" height="30"><s:property
																		value="#teacher.teachnum" />&nbsp;</td>
																<td width="70" height="30"><s:property
																		value="#teacher.teachname" />&nbsp;</td>
																<td width="120" height="30"><s:property
																		value="#teacher.teachphone" />&nbsp;</td>
																<td width="180" height="30"><s:property
																		value="#teacher.teachcardid" />&nbsp;</td>
																<td width="120" height="30"><s:property
																		value="#teacher.teachemail" />&nbsp;</td>
																<td width="60" height="30"><input type="button"
																	name="update" value="修改" >
																</td>
																<td width="60" height="30"><input type="button"
																	name="delete" value="删除">
																</td>
															</tr>
														</s:iterator>

													</table></td>
											</tr>
											<tr align="center">
												<td height="50" colspan="4"><a>首页&nbsp;</a>||<a>上一页&nbsp;</a>||<a>下一页&nbsp;</a>||<a>尾页</a>
												</td>
											</tr>
										</table>
									</s:form>
								</div></td>
						</tr>
					</table></td>
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
							<td><br>
							</td>
						</tr>
						<tr>
							<td align="center"><span class="style3">版***权***所***有</span>
							</td>
						</tr>
						<tr>
							<td align="center"><span class="style3">望长城工作组</span></td>
						</tr>
						<tr>
							<td align="center"><span class="style3">盗版予以追究法律责任，如须授权请联系望长城工作组，联系人：<a
									href="mailto:zhaochangchun45@hotmail.com">春哥</a>||本系统属免费软件</span></td>
						</tr>

					</table></td>
			</tr>

		</tfoot>
	</table>
</body>
</html>

