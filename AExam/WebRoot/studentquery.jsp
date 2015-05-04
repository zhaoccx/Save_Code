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

<title>教师查询</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

<script type="text/javascript">
	function deletestu(id){

		location.href="managerdeleteStudent2Action.action?exStudent.stunum="+id;
	}
	
	function selecttext(){
		var texta=document.getElementById("ttt").value;
		location.href="managershowStudentByIdAction.action?abc="+texta;
	}
</script>
</head>

<body>
	<table width="1000" align="center">
		<thead>
			<tr>
				<td><img src="images/webtop.jpg" width="1000"></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><s:form theme="simple" action="" name="myform">
						<table width="100%" border="1">
							<tr>
								<td width="100" height="50">按学号查询</td>
								<td width="300"><s:textfield name="exStudent.stunum" id="ttt" />&nbsp;&nbsp;&nbsp;<a
									href="managershowStudentByIdAction.action">查询</a>
									<s:submit value="查询" name="se" onclick="selecttext()"></s:submit>
								</td>
								<td><a href="managershowStudentAction.action">查询全部</a></td>
								<td align="right"><a
									href="managermanagerIndexAction.action">回首页</a></td>
							</tr>
							<tr>
								<td colspan="4">
									<table width="100%" border="1">
										<tr align="center">
											<td width="120" height="30">学号</td>
											<td width="70" height="30">姓名</td>
											<td width="120" height="30">电话</td>
											<td width="180" height="30">省份证号码</td>
											<td width="120" height="30">邮箱</td>
											<td width="60" height="30" colspan="2">&nbsp;</td>
										</tr>
										<s:iterator id="student" value="#request.studentListInfo">
											<tr align="center">
												<td width="120" height="30"><s:property
														value="#student.stunum" />&nbsp;</td>
												<td width="70" height="30"><s:property
														value="#student.stuname" />&nbsp;</td>
												<td width="120" height="30"><s:property
														value="#student.stuphone" />&nbsp;</td>
												<td width="180" height="30"><s:property
														value="#student.stucardid" />&nbsp;</td>
												<td width="120" height="30"><s:property
														value="#student.stuemail" />&nbsp;</td>
												<td width="60" height="30"><input type="button"
													name="update" value="修改"></td>
												<td width="60" height="30"><input type="button"
													name="delete" value="删除"
													onclick="javascript:deletestu(<s:property
														value="#student.stunum" />)">
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
					</s:form></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td>
					<table>
						<tr>
							<td colspan="4"><img src="images/webfoot.jpg" />
							</td>
						</tr>
						<tr>
							<td><br></td>
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

					</table>
				</td>
			</tr>

		</tfoot>
	</table>
</body>
</html>
