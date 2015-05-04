<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/user/";
%>
<script type="text/javascript">
	$(function() {
		$("#${current}").addClass("current");
	});
</script>
<div class="rightCol">
	<div class="rightBody">
		<!--
			当前信息类型
			li加 class="current"
		 -->
		<div class="lmc-cond">
			<ul>
				<li class="current" id="all"><a href="infoList/?current=all">显示中</a></li>
				<li class=""><a href="#">未显示</a></li>
				<li class=""><a href="#">推广中</a></li>
			</ul>
		</div>

		<!-- rightfooter start -->
		<div class="rightfoot">
			<!-- 搜索信息(用户个人的) -->
			<form action="#" method="get">
				<div class="post-sou">
					<span class="de-value" id="search_post_tips">请输入帖子编号搜索</span> <input name="postid" type="text" class="post-sou-text" value="" id="search_post" /> <input type="submit" class="post-sou-but" value="搜索" />
				</div>
			</form>
			<!-- 批量操作 -->
			<div class="pl-caozuo">
				<input type="checkbox" class="my_checkbox_all"> <label for="my_checkbox_all">&nbsp;全选</label> &nbsp;&nbsp;&nbsp; <a href="#" class="refresh my_edit_refresh">批量刷新</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="timer_refresh">批量预约刷新</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="my_delete_all">批量删除</a>
			</div>
		</div>
		<!-- rightfooter end -->


		<!-- 服务信息的表单（用于批量刷新） -->
		<form action="" method="post" name="infor" id="infor">
			<div class="index-post-list">
				<!-- 一条信息开始 -->
				<div class="list-table">
					<table id="tb27954591" style="width:100%; border:1; cellpadding:0; cellspacing:0">
						<tr class="xinxilan">
							<td colspan="4"><span class="xinxinlankuang"><input type="checkbox" id="" value="" name="checkbox" /></span> &nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
						</tr>
						<tr class="xinxikuang">
							<td style="width:50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
							<td style="width:19%" style="padding-left: 0; text-align: center;"><span class="xianshi">信息状态</span></td>
							<!-- 服务推广的相关操作 -->
							<td style="width:16%"><a href="#" class="my_edit_refresh manage-link">刷新</a> <a href="#" class="manage-link">预约刷新</a><br /> <a href="#" class="manage-link">置顶</a> <a href="#" class="manage-link">定向推广</a></td>
							<!-- 服务的相关操作 -->
							<td style="width:15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
						</tr>
					</table>
				</div>
				<!-- 一条信息结束 -->
				<!-- 一条信息开始 -->
				<div class="list-table">
					<table id="tb27954591" style="width:100%; border:1; cellpadding:0; cellspacing:0">
						<tr class="xinxilan">
							<td colspan="4"><span class="xinxinlankuang"><input type="checkbox" id="" value="" name="checkbox" /></span> &nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
						</tr>
						<tr class="xinxikuang">
							<td style="width:50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
							<td style="width:19%" style="padding-left: 0; text-align: center;"><span class="xianshi">信息状态</span></td>
							<!-- 服务推广的相关操作 -->
							<td style="width:16%"><a href="#" class="my_edit_refresh manage-link">刷新</a> <a href="#" class="manage-link">预约刷新</a><br /> <a href="#" class="manage-link">置顶</a> <a href="#" class="manage-link">定向推广</a></td>
							<!-- 服务的相关操作 -->
							<td style="width:15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
						</tr>
					</table>
				</div>
				<!-- 一条信息结束 -->
				<!-- 一条信息开始 -->
				<div class="list-table">
					<table id="tb27954591" style="width:100%; border:1; cellpadding:0; cellspacing:0">
						<tr class="xinxilan">
							<td colspan="4"><span class="xinxinlankuang"><input type="checkbox" id="" value="" name="checkbox" /></span> &nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
						</tr>
						<tr class="xinxikuang">
							<td style="width:50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
							<td style="width:19%" style="padding-left: 0; text-align: center;"><span class="xianshi">信息状态</span></td>
							<!-- 服务推广的相关操作 -->
							<td style="width:16%"><a href="#" class="my_edit_refresh manage-link">刷新</a> <a href="#" class="manage-link">预约刷新</a><br /> <a href="#" class="manage-link">置顶</a> <a href="#" class="manage-link">定向推广</a></td>
							<!-- 服务的相关操作 -->
							<td style="width:15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
						</tr>
					</table>
				</div>
				<!-- 一条信息结束 -->
				<!-- 一条信息开始 -->
				<div class="list-table">
					<table id="tb27954591" style="width:100%; border:1; cellpadding:0; cellspacing:0">
						<tr class="xinxilan">
							<td colspan="4"><span class="xinxinlankuang"><input type="checkbox" id="" value="" name="checkbox" /></span> &nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
						</tr>
						<tr class="xinxikuang">
							<td style="width:50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
							<td style="width:19%" style="padding-left: 0; text-align: center;"><span class="xianshi">信息状态</span></td>
							<!-- 服务推广的相关操作 -->
							<td style="width:16%"><a href="#" class="my_edit_refresh manage-link">刷新</a> <a href="#" class="manage-link">预约刷新</a><br /> <a href="#" class="manage-link">置顶</a> <a href="#" class="manage-link">定向推广</a></td>
							<!-- 服务的相关操作 -->
							<td style="width:15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
						</tr>
					</table>
				</div>
				<!-- 一条信息结束 -->
				<!-- 一条信息开始 -->
				<div class="list-table">
					<table id="tb27954591" style="width:100%; border:1; cellpadding:0; cellspacing:0">
						<tr class="xinxilan">
							<td colspan="4"><span class="xinxinlankuang"><input type="checkbox" id="" value="" name="checkbox" /></span> &nbsp;更新时间：&nbsp;<span id="a27954591">yyyy-MM-dd hh:mm:ss </span>&nbsp;|&nbsp;编号：<span>发布服务后的唯一编号</span></td>
						</tr>
						<tr class="xinxikuang">
							<td style="width:50%"><a href="#" target="_blank">发布的服务标题...</a> <br>分类<span>&nbsp;&nbsp;<a href="#" target="_blank">服务类型</a></span></td>
							<td style="width:19%" style="padding-left: 0; text-align: center;"><span class="xianshi">信息状态</span></td>
							<!-- 服务推广的相关操作 -->
							<td style="width:16%"><a href="#" class="my_edit_refresh manage-link">刷新</a> <a href="#" class="manage-link">预约刷新</a><br /> <a href="#" class="manage-link">置顶</a> <a href="#" class="manage-link">定向推广</a></td>
							<!-- 服务的相关操作 -->
							<td style="width:15%"><a href="#" target="_blank" class="manage-link">修改</a> <a href="#" class="my_rm_post manage-link">删除</a><br> <a href="#" class="my_rm_post manage-link">隐藏</a></td>
						</tr>
					</table>
				</div>
				<!-- 一条信息结束 -->

			</div>
		</form>

		<!-- 右侧底部 -->
		<div class="rightfoot">
			<!-- 分页 -->
			<div class="fenye">
				<div class="pg">
					<strong>${当前页数}</strong>
				</div>
			</div>
			<div class="fy-total">
				共<span id="my_tid">${totalPageNo}</span>条
			</div>
			<div class="pl-caozuo">
				<input type="checkbox" class="my_checkbox_all" /> <label for="my_checkbox_all">&nbsp;全选</label> &nbsp;&nbsp;&nbsp; <a href="#" class="refresh my_edit_refresh">批量刷新</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="timer_refresh">批量预约刷新</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="my_delete_all" >批量删除</a>
			</div>
		</div>
		<!-- 博奥友情提示 -->
		<div class="noteread">
			<p>
				<b>友情提示</b>
			</p>
			<p>1、博奥好学网只统计最近90天的访问记录。</p>
			<p>
				2、<span>显示中的信息：</span>在博奥平台页中显示，信息内容可见。
			</p>
			<p>
				3、<span>审核中的信息：</span>处于待审状态，其他人无法看到，可以修改或删除。我们会在24小时内为您审核。
			</p>
			<p>
				4、<span>未显示的信息：</span>隐藏的信息不可显示了，但是可以恢复或删除。
			</p>
			<p>
				5、<span>审核未通过信息：</span>管理员删除的信息个人可以删除不可恢复。
			</p>
			<p>
				6、<span>刷新：</span>将您的信息靠前显示，相当于新发一条。每天只可免费刷新一条信息。
			</p>
			<p>
				7、<span>删除：</span>所有信息一旦删除将彻底删除，不可恢复。请谨慎操作。
			</p>
		</div>
	</div>
</div>

<!-- 右侧底部 END -->