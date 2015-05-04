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
	replace("left/","left",{current:"home"},function(){initLeft();});
});
</script>
</head>
<body>
	<div id="top"></div>
	<div id="header"></div>

	<div class="user-content" style="padding-bottom:0px;">
		<div class="rightCol">
			<div class="rightBody">
				<!-- 用户的个人基本信息 -->
				<div class="user-info">
					<dl class="clearfix">
						<dt>
							<br>
								<img src="images/icon_ray.png" width="244" height="288" />
							<br>
								<a href="#">修改个人资料</a>
							<br>
						</dt>
						<dd>
							<div class="index-user">
								<strong>博奥管理员</strong> <span>于2013年07月13日注册</span>
							</div>
							<div class="jf-ye">
								<span class="f14"> 积分&nbsp;<a href="#" class="jf-num" id="my_point">9999</a>&nbsp;分&nbsp; <a href="#" class="f12">&nbsp;赚积分&gt;&gt;</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 余额&nbsp;<a href="#" class="ye-num">9999</a>&nbsp;元&nbsp; <a href="#" class="f12">&nbsp;去充值&gt;&gt;</a>
								</span>
							</div>
							<!-- 用户的身份验证信息 -->
							<!-- 未验证的在class前加"no" 以及加一个a(href)连接 -->
							<div class="safe-level">
								<span class="email_rz" title="邮箱已认证"></span>&nbsp;邮箱已认证 <span class="phone_rz" style="margin-left:20px;" title="手机已认证"></span>&nbsp;手机已认证 <span class="shenfen_rz" style="margin-left:20px;" title="身份证已认证"></span>&nbsp;身份证已认证 <span class="zhizhao_rz" style="margin-left:20px;" title="营业执照未认证"></span>&nbsp;营业执照未认证
							</div>
						</dd>
					</dl>
				</div>

				<!-- 快速导航 -->
				<div class="quick-nav clearfix">
					<strong class="quick-title">快速通道：&nbsp;</strong> <span class="blue-button"><a href="#">我的信息</a></span> <span class="blue-button"><a href="#">我的积分</a></span> <span class="blue-button"><a href="#">我的余额</a></span> <span class="blue-button"><a href="#">我要充值</a></span> <span class="blue-button"><a href="#">我的消息</a></span>
				</div>

				<!-- 板块定制功能(连接) -->
				<div class="index-post">
					<strong style="border-bottom:4px solid #FD8310;padding-bottom:5px;">您最近发布的信息</strong>
					<div style="float:right">
						<span class="B-xianshi"><a href="#">全部信息</a></span> <span class="B-shenghe"><a href="#">显示中的信息</a></span> <span class="B-delete"><a href="#">被隐藏的信息</a></span>
					</div>
					<div style="clear:both;"></div>
				</div>

				<div class="index-post-list">

					<!-- 一条信息开始 -->
					<div class="list-table">
						<table id="tb27954591" width="100%" border="1" cellpadding="0" cellspacing="0">
							<tr class="xinxilan">
								<td colspan="4">&nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
							</tr>
							<tr class="xinxikuang">
								<td width="50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
								<td width="19%" style="padding-left:0;text-align:center;"><span class="xianshi">信息状态</span></td>
								<!-- 服务推广的相关操作 -->
								<td width="16%"><a href="#" class="my_edit_refresh manage-link" >刷新</a> <a href="#"  class="manage-link">预约刷新</a><br /> <a href="#"  class="manage-link">置顶</a> <a href="#"  class="manage-link">定向推广</a></td>
								<!-- 服务的相关操作 -->
								<td width="15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
							</tr>
						</table>
					</div>
					<!-- 一条信息结束 -->
					<!-- 一条信息开始 -->
					<div class="list-table">
						<table id="tb27954591" width="100%" border="1" cellpadding="0" cellspacing="0">
							<tr class="xinxilan">
								<td colspan="4">&nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
							</tr>
							<tr class="xinxikuang">
								<td width="50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
								<td width="19%" style="padding-left:0;text-align:center;"><span class="xianshi">信息状态</span></td>
								<!-- 服务推广的相关操作 -->
								<td width="16%"><a href="#" class="my_edit_refresh manage-link" >刷新</a> <a href="#"  class="manage-link">预约刷新</a><br /> <a href="#"  class="manage-link">置顶</a> <a href="#" class="manage-link">定向推广</a></td>
								<!-- 服务的相关操作 -->
								<td width="15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
							</tr>
						</table>
					</div>
					<!-- 一条信息结束 -->
					<!-- 一条信息开始 -->
					<div class="list-table">
						<table id="tb27954591" width="100%" border="1" cellpadding="0" cellspacing="0">
							<tr class="xinxilan">
								<td colspan="4">&nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
							</tr>
							<tr class="xinxikuang">
								<td width="50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
								<td width="19%" style="padding-left:0;text-align:center;"><span class="xianshi">信息状态</span></td>
								<!-- 服务推广的相关操作 -->
								<td width="16%"><a href="#" class="my_edit_refresh manage-link" >刷新</a> <a href="#"  class="manage-link">预约刷新</a><br /> <a href="#"  class="manage-link">置顶</a> <a href="#"  class="manage-link">定向推广</a></td>
								<!-- 服务的相关操作 -->
								<td width="15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
							</tr>
						</table>
					</div>
					<!-- 一条信息结束 -->
					<!-- 一条信息开始 -->
					<div class="list-table">
						<table id="tb27954591" width="100%" border="1" cellpadding="0" cellspacing="0">
							<tr class="xinxilan">
								<td colspan="4">&nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
							</tr>
							<tr class="xinxikuang">
								<td width="50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
								<td width="19%" style="padding-left:0;text-align:center;"><span class="xianshi">信息状态</span></td>
								<!-- 服务推广的相关操作 -->
								<td width="16%"><a href="#" class="my_edit_refresh manage-link" >刷新</a> <a href="#"  class="manage-link">预约刷新</a><br /> <a href="#"  class="manage-link">置顶</a> <a href="#"  class="manage-link">定向推广</a></td>
								<!-- 服务的相关操作 -->
								<td width="15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
							</tr>
						</table>
					</div>
					<!-- 一条信息结束 -->
					<!-- 一条信息开始 -->
					<div class="list-table">
						<table id="tb27954591" width="100%" border="1" cellpadding="0" cellspacing="0">
							<tr class="xinxilan">
								<td colspan="4">&nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
							</tr>
							<tr class="xinxikuang">
								<td width="50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
								<td width="19%" style="padding-left:0;text-align:center;"><span class="xianshi">信息状态</span></td>
								<!-- 服务推广的相关操作 -->
								<td width="16%"><a href="#" class="my_edit_refresh manage-link" >刷新</a> <a href="#"  class="manage-link">预约刷新</a><br /> <a href="#"  class="manage-link">置顶</a> <a href="#"  class="manage-link">定向推广</a></td>
								<!-- 服务的相关操作 -->
								<td width="15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
							</tr>
						</table>
					</div>
					<!-- 一条信息结束 -->


				</div>
			</div>
		</div>

		<!-- 
			 左边控制栏
			 对当前的栏目，在dt里加入 class="current" 即可
		-->
		<div id="left"></div>

		<!-- 网页下面的广告 
			<div style="margin: 50px auto 6px;width:832px;float: right;height:142px;"><a href="#" target="_blank"><img src="images/ads/ads.png"></a></div>
		-->
	</div>
	<!-- 内容结束 -->

	<!-- 页脚 -->
	<div class="footer">2013 &copy; 博奥好学网&nbsp; POWER BY YAONIMING3000.</div>

</body>
</html>