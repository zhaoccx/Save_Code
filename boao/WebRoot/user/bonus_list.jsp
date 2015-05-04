<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/user/";
%>
<div class="rightCol">
	<!-- rightBody start -->
	<div class="rightBody">
		<!-- user-points start -->
		<div class="user-points">
			<div class="cur-points">
				我的积分：<span>999</span><a href="#">去赚积分》</a>
			</div>
			<div class="use-points">
				您可以使用积分开通以下服务:<br /> <a href="#" target="_blank">刷新/预约刷新</a> <a href="#" target="_blank">置顶服务</a> <a href="#" target="_blank">定向推广服务</a> <a href="#" target="_blank">发帖无忧服务</a>
			</div>
		</div>
		<div class="lmc-cond">
			<ul>
				<li class="current"><a href="#">积分明细</a></li>
				<li><a href="#">积分赚取</a></li>
			</ul>
		</div>
		<div class="rightfoot">
			<div class="fenye">
				<div class="pg">
					<strong>1</strong><a href="#">2</a><a href="#">3</a><a href="#">4</a><a class="nxt" href="#">下一页</a>
				</div>
			</div>
			<form action="">
				<div class="jf-cx">
					<span>查询充值记录：</span> <input name="s_date" type="text" value="" class="s_date cx-text" />&nbsp;~&nbsp; <input type="text" name="e_date" value="" class="e_date cx-text" /> <input type="submit" value="查询" class="smallbtn fontweight" />
				</div>
			</form>
		</div>
		<div class="points-detail">
			<table style="width;100%: border;0: cellpadding;0: cellspacing;0" class="points-table">
				<tbody>
					<tr>
						<th style="width:20%"><strong>日期</strong></th>
						<th style="width:10%"><strong>积分变化</strong></th>
						<th style="width:12%"><strong>其他变化</strong></th>
						<th style="width:48%"><strong>详情</strong></th>
						<th style="width:10%"><strong>当期积分</strong></th>

					</tr>
					<tr>
						<td>yyyy-MM-dd hh:mm:ss</td>
						<td><span class="fc-red"> +积分 / -积分 </span></td>
						<td>&nbsp;</td>
						<td><span>相关的操作</span></td>
						<td>积分</td>
					</tr>
					<tr>
						<td>yyyy-MM-dd hh:mm:ss</td>
						<td><span class="fc-red"> +积分 / -积分 </span></td>
						<td>&nbsp;</td>
						<td><span>相关的操作</span></td>
						<td>积分</td>
					</tr>
					<tr>
						<td>yyyy-MM-dd hh:mm:ss</td>
						<td><span class="fc-red"> +积分 / -积分 </span></td>
						<td>&nbsp;</td>
						<td><span>相关的操作</span></td>
						<td>积分</td>
					</tr>
					<tr>
						<td>yyyy-MM-dd hh:mm:ss</td>
						<td><span class="fc-red"> +积分 / -积分 </span></td>
						<td>&nbsp;</td>
						<td><span>相关的操作</span></td>
						<td>积分</td>
					</tr>
					<tr>
						<td>yyyy-MM-dd hh:mm:ss</td>
						<td><span class="fc-red"> +积分 / -积分 </span></td>
						<td>&nbsp;</td>
						<td><span>相关的操作</span></td>
						<td>积分</td>
					</tr>
					<tr>
						<td>yyyy-MM-dd hh:mm:ss</td>
						<td><span class="fc-red"> +积分 / -积分 </span></td>
						<td>&nbsp;</td>
						<td><span>相关的操作</span></td>
						<td>积分</td>
					</tr>
				</tbody>
			</table>
			<div class="rightfoot">
				<div class="fenye">
					<div class="pg">
						<strong>1</strong><a href="#">2</a><a href="#">3</a><a href="#">4</a><a class="nxt" href="#">下一页</a>
					</div>
				</div>
			</div>
		</div>
		<!-- user-points end -->
	</div>
	<!-- rightBody end -->
</div>