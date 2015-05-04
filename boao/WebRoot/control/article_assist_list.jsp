<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<base href="<%=basePath%>" />

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
	min-height: 360px
}

.context_ul {
	min-height: 380px;
}

.tbl {
	margin-top: 2%;
	margin-left: 3%;
	float: left;
	width: 95%;
	min-height: 400px;
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
	line-height: 28px;
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

#but_submit {
	height: 30px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 12px
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
-->
</style>
<script type="text/javascript" src="../js/jquery-1.6.3.js"></script>
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<script type="text/javascript">
	function del(id,name){
		var result= confirm("您确定要删除："+name);
		if(result){
			$.ajax({
				url:"../admin/deleteArticle-"+id,
				type:"post",
				dataType:"json",
				success:function(data){
					if(data){
						location=location;
					}else{
						alert("删除失败");
					}
				}
			});
		}
		return;
	}
	
	$(function(){
		var p=/<[^>].*?>/g;
		$("td[name='body']").each(function(){
			this.innerHTML=cleanTag(this.innerHTML);
			this.innerHTML=cutStr(this.innerHTML,20,"***");
		});
	});
	</script>
</head>
<body>
	<form id="pageForm" action="../admin/assistList" method="post">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td align="left" valign="middle" class="tbl_middle">帮助/公告-->${kind }管理</td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left">
					<!--Table Left Side-->
				</td>
				<td class="context">
					<div class="tbl_div">
						<table border="1" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td height="30" colspan="6" align="left" valign="middle"><a href="../admin/toAddAssist?kind=${kind }">点击这里进入添加${kind }</a></td>
							</tr>
							<tr>
								<td height="30" colspan="6" align="left" valign="middle">筛选:<select name="category" onchange="location.href='../admin/assistList?kind=${kind }&category='+this.options[this.selectedIndex].value;">
										<option value="">全部</option>
										<c:forEach items="${CATEGORY_LIST }" var="item">
											<option value="${item} " <c:if test="${item eq CATEGORY }">selected</c:if>>${item }</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<td width="50" height="30" align="center" valign="middle" bgcolor="#EAEAEA">序号</td>
								<td width="150" height="30" align="center" valign="middle" bgcolor="#EAEAEA">主题</td>
								<td width="250" height="30" align="center" valign="middle" bgcolor="#EAEAEA">正文</td>
								<td width="120" height="30" align="center" valign="middle" bgcolor="#EAEAEA">类型</td>
								<td width="130" height="30" align="center" valign="middle" bgcolor="#EAEAEA">创建时间</td>
								<td width="150" height="30" align="center" valign="middle" bgcolor="#EAEAEA">操作</td>
							</tr>

							<!--Content Start-->
							<c:forEach var="item" items="${LIST}">
								<tr onmouseout="onMouseOut(this)" onmouseover="onMouse(this)">
									<td width="50" height="30" align="center" valign="middle">${item.id}</td>
									<td width="150" height="30" align="center" valign="middle">${item.subject}</td>
									<td width="250" height="30" align="center" valign="middle">${item.body}</td>
									<td width="120" height="30" align="center" valign="middle">${item.category}</td>
									<td width="130" height="30" align="center" valign="middle"><fmt:formatDate type="both" value="${item.createDate}" pattern="yyyy/MM/dd HH:mm:ss" /></td>
									<td width="150" height="30" align="center" valign="middle"><a href="../admin/assistDetail-${item.id}?kind=${kind }" class="STYLE11">详情</a>&nbsp;| <a href="../admin/toEditAssist-${item.id}?kind=${kind }" class="STYLE11">编辑</a>&nbsp;|&nbsp; <a href="javascript:del(${item.id},'${item.subject}');" class="STYLE10">删除</a></td>
								</tr>
							</c:forEach>
							<!--Content End-->

							<tr>
								<td height="60" colspan="6" align="left" valign="middle"><br /> <input type="hidden" name="sum" id="sum" value="${page.sum}" /> <input type="hidden" name="kind" value="${kind}" /> <input type="hidden" name="count" id="count" value="${page.count}" /> <input type="hidden" name="limit" id="limit" value="${page.limit}" />
									<p>
										&nbsp;当前是第&nbsp; <strong>${page.num}</strong> &nbsp;页， 总共有&nbsp; <strong>${page.count}</strong> &nbsp;条记录.&nbsp; <strong>${page.sum}</strong> &nbsp;页
									</p>
									<p>
										&nbsp;<a href="javascript:void(0)" onclick="goPage(${page.num-1});">上一页</a> &nbsp;|&nbsp; <a href="javascript:void(0)" onclick="goPage(${page.num+1});">下一页</a>&nbsp;|&nbsp; &nbsp; <input name="num" id="num" type="text" size="5" /> &nbsp;页 <input value="跳转" type="button" onclick="goPage(document.getElementById('num').value);" id="but_submit" />
									</p></td>

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
	</form>
</body>
</html>
