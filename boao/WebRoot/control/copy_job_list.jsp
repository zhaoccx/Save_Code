<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ck"%>
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
<title>无标题文档</title>

<style type="text/css">
<!--
body {
	font-family: "宋体";
	font-size: 12px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
	vertical-align: middle;
}

span {
	margin-left: 10px;
}

a {
	text-decoration: none
}

#submit {
	height: 35px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 14px
}

.context {
	background-color: #F7F8F9;
	min-height: 350px
}

.context_ul {
	min-height: 320px;
}

.tbl {
	margin-top: 2%;
	margin-left: 3%;
	float: left;
	width: 95%
}

.left {
	width: 17px;
	background: url(images/mail_leftbg.gif) repeat-y 0 0;
}

.right {
	width: 17px;
	background: url(images/mail_rightbg.gif) repeat-y 0 0;
}

.tbl_left {
	width: 15px;
	height: 29px;
	background: url(images/left-top-right.gif) repeat-x 0 0;
}

.tbl_middle {
	line-height: 29px;
	font-size: 12px;
	color: #000000;
	background: url(images/content-bg.gif) repeat-x 0 0;
}

.tbl_right {
	width: 15px;
	height: 29px;
	background-image: url(images/nav-right-bg.gif)
}

.tbl_but_left {
	width: 17px;
	height: 17px;
	vertical-align: bottom;
	background: url(images/mail_leftbg.gif) repeat-x 0 0;
}

.tbl_but_middle {
	line-height: 17px;
	vertical-align: bottom;
	font-size: 13px;
	color: #000000;
	font-weight: bold;
	background: url(images/buttom_bgs.gif) repeat-x 0 0;
}

.tbl_but_right {
	width: 15px;
	height: 17px;
	vertical-align: bottom;
	background-image: url(images/mail_rightbg.gif)
}

.tbl_div {
	width: 800px;
	border: #CCCCCC solid 1px;
	margin: 0 auto
}

.STYLE1 {
	color: #FF0000
}

.STYLE2 {
	color: #0099FF
}

.STYLE9 {
	color: #0066CC;
	font-weight: bold;
	float: right;
	margin-right: 20px;
}

#but_submit {
	height: 35px;
	width: 130px;
	border: #666666 solid 1px;
	font-size: 14px
}
-->
</style>
<!-- 
	
		#but_submit{height:35px;width:130px;border: #666666 solid 1px;font-size:14px}
		
		<input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" />
		
		
			<script type="text/javascript" src="js/common.js" charset="utf-8" ></script>
			<script type="text/javascript">
				function del(id){
					var result= confirm("确认要删除这条招聘信息吗？");
					if(result){
						window.location.replace("action!toDeleteJob.do?id="+id);
					}
					return;
				}
			</script>
	 -->
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<script type="text/javascript">
		function del(id){
			var result= confirm("确认要删除这条招聘信息吗？");
			if(result){
				window.location.replace("action!toDeleteJob.do?id="+id);
			}
			return;
		}
	</script>

</head>

<body>
	<table class="tbl" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td class="tbl_left"></td>
			<td class="tbl_middle">博奥好学网 --》招聘信息</td>
			<td class="tbl_right"></td>
		</tr>
		<tr>
			<td class="left">
				<!--Table Left Side-->
			</td>
			<td class="context">
				<div class="tbl_div">
					<table width="800" border="1" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="30" colspan="7" align="left" valign="middle"><span class="STYLE4">当前数据语言：</span><strong>CN</strong> <a href="copy_job_add.jsp" class="STYLE9">发布新招聘</a></td>
						</tr>
						<tr>
							<td width="50" height="30" align="center" valign="middle" bgcolor="#EAEAEA">编号Id</td>
							<td width="230" height="30" align="center" valign="middle" bgcolor="#EAEAEA">招聘主题</td>
							<td width="120" height="30" align="center" valign="middle" bgcolor="#EAEAEA">工作地点</td>
							<td width="130" height="30" align="center" valign="middle" bgcolor="#EAEAEA">招聘人数</td>
							<td width="160" height="30" align="center" valign="middle" bgcolor="#EAEAEA">发表时间(time)</td>
							<td width="100" height="30" align="center" valign="middle" bgcolor="#EAEAEA">编辑 / 管理</td>
						</tr>

						<!--Content Start-->
						<c:forEach var="job" items="${JobList}">
							<tr onmouseout="onMouseOut(this)" onmouseover="onMouse(this)">
								<td width=" 50" height="30" align="center" valign="middle">${job.id}</td>
								<td width="230" height="30" align="center" valign="middle">${job.subject}</td>
								<td width="120" height="30" align="center" valign="middle">${job.location}</td>
								<td width="130" height="30" align="center" valign="middle">${job.pubDate}</td>
								<td width="160" height="30" align="center" valign="middle">PubDate</td>
								<td width="100" height="30" align="center" valign="middle"><a href="action!toJob.do?id=${job.id}" class="STYLE2">修改</a> | <a href="javascript:del('${job.id}')" class="STYLE1">删除</a></td>
							</tr>
						</c:forEach>
						<!--Content End-->

						<tr>
							<td height="40" colspan="7" align="left" valign="middle">
								<p>
									&nbsp;当前语种下共有记录<strong>${fn:length(JobList)}</strong>条,当前是第<strong>1</strong>页，该页下有<strong>${fn:length(JobList)}</strong>条记录.
								</p>
								<p>
									&nbsp;<a>下一页</a>&nbsp;|&nbsp;<a>上一页</a>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</td>
			<td class="right">
				<!--Table Right Side-->
			</td>
		</tr>
		<tr>
			<td class="tbl_but_left"><img src="images/buttom_left2.gif" /></td>
			<td class="tbl_but_middle"><img src="images/buttom_bgs.gif" /></td>
			<td class="tbl_but_right"><img src="images/buttom_right2.gif" /></td>
		</tr>
	</table>
</body>
</html>
