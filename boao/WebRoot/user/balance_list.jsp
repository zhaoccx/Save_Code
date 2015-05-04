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
	$(function() {
		replace("top/", "top");
		replace("header/","header");
		replace("left/","left",{current:"balance"});
	//	replace("bonusList/", "body-content");
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
				<!-- user-points start -->
				<div class="user-points">
					<div class="cur-points">
						我的余额：<span>999</span><a href="#">去充值》</a>
					</div>
					<div class="use-points">
						充值后可以购买下面服务:<br />
						<a href="#" target="_blank">刷新/预约刷新</a> <a href="#" target="_blank">置顶服务</a> <a href="#" target="_blank">定向推广服务</a> <a href="#" target="_blank">发帖无忧服务</a>
					</div>
				</div>
				<div class="lmc-cond">
					<ul>
						<li class="current"><a href="#">余额明细</a></li>
						<li><a href="#">充值记录</a></li>
					</ul>
				</div>
				<div class="rightfoot">
					<div class="rightfoot">
						<div class="fenye">
							<div class="pg">
								<strong>1</strong><a href="#">2</a><a href="#">3</a><a href="#">4</a><a class="nxt" href="#">下一页</a>
							</div>
						</div>
					</div>
					<form action="" >
						<div class="jf-cx">
							<span>查询充值记录：</span> <input name="s_date" type="text" value="" class="s_date cx-text" />&nbsp;~&nbsp; <input name="e_date" value="" type="text" class="e_date cx-text" /><input type="submit" value="查询" class="smallbtn fontweight" />
						</div>
					</form>
				</div>
				<div class="money-detail">
					<br />
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="points-table">
						<tbody>
							<tr>
								<th width="20%"><strong>日期</strong></th>
								<th width="10%"><strong>余额变化</strong></th>
								<th width="12%"><strong>其他变化</strong></th>
								<th width="48%"><strong>详情</strong></th>
								<th width="10%"><strong>当期余额</strong></th>

							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
							</tr>
							<tr>
								<td>yyyy-MM-dd hh:mm:ss</td>
								<td><span class="fc-red"> + / - 余额 </span></td>
								<td>&nbsp;</td>
								<td><span>相关的操作</span></td>
								<td>余额</td>
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
			</div>
		</div>
		<div id="left"></div>
	</div>
	<!-- 页脚 -->
	<div class="footer">2013 &copy; 博奥好学网&nbsp; POWER BY YAONIMING3000.</div>

</body>
</html>