<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/user/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>博奥好学 | 用户中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/user.index.css" />
<script type="text/javascript" src="../js/jquery-1.6.3.js"></script>
<script type="text/javascript" src="../js/common.js"></script>

<script type="text/javascript">
$(function(){
	replace("top/","top");
	replace("header/","header");
	replace("left/","left",{current:"account"});
	replace("infoList/","body-content");
});
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header"></div>
	<!-- user-content start -->
	<div class="user-content">
		<div class="rightCol">
			<!-- rightBody start -->
			<div class="rightBody">
				<!-- update head start -->
				<div class="userinfo_box">
					<h3>修改头像</h3>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="grpic">
						<tbody>
							<tr>
								<th align="right">
									<p class="headphoto">
										<img id="img" src="images/icon_ray.png"><s></s>
									</p>
								</th>
								<td colspan="2">
									<form action="#" method="post" enctype="multipart/form-data" target="#" id="#">
										<p id="f1_upload_process" style="display: none">
											请等待上传...<img src="images/loader.gif">
										</p>
										<p id="f1_upload_form">
											<input id="myfile" name="myfile" type="file" size="38" onChange="startUpload();">
										</p>
										<p style="height:0px">
											<iframe id="upload_target" name="upload_target" src="" style="width:0px;height:0px;border:0px solid #fff;"></iframe>
										</p>
										<p class="pic-style">
											1.&nbsp;支持的图片格式：GIF、JPG、JPEG、PNG，为了最佳显示效果，建议您选择<span style="color:#0f8fc4;font-weight:bold;">120*120</span>像素。 <br /> 2.&nbsp;首次头像上传成功，您可获得10积分。
										</p>
									</form>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- update head end -->

				<!-- update info start -->
				<form id="userinfoform" method="POST" action="" enctype="multipart/form-data">
					<div class="userinfo_box">
						<h3>修改个人信息</h3>
						<table width="100%" border="0" cellpadding="0" cellspacing="0" class="up-info-table">
							<tbody>
								<tr>
									<th>登录帐号：</th>
									<td colspan="2"><input type="text" name="account" value="lnstudio" id="username" class="txt width220" /> <input type="submit" value="修改" id="sub" class="user-bluebtn" name="submit"> <span id="usernameTip" style="display:inline;" class="onCorrect"></span></td>
								</tr>
								<tr>
									<th>登录密码：</th>
									<td colspan="2"><a href="/my/edit_pwd.php" class="underline">修改登录密码&gt;&gt;</a></td>
								</tr>
								<tr>
									<th>电子邮箱：</th>
									<td colspan="2"><input value="HuangJiding@126.com" disabled="disabled" name="email" type="text" id="email" class="txt text_width180" style="width:220px;" /><br /> <span class="emai-yrz">邮箱已经成功绑定！&nbsp;&nbsp;<a href="#" class="underline">重新绑定&gt;&gt;</a></span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
				<!-- update info end -->
			</div>
		</div>
		<div id="left"></div>
	</div>
	<!-- 页脚 -->
	<div class="footer">2013 &copy; 博奥好学网&nbsp; POWER BY YAONIMING3000.</div>

</body>
</html>