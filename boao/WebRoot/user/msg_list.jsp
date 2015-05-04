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
		{
			$("#${current}").addClass("current");
		}
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
				<li id="inbox"><a href="#" id="object_tit0">收件箱</a></li>
				<li><a href="#" id="object_tit1">发件箱</a></li>
				<li><a href="#" id="object_tit2">写消息</a></li>
			</ul>
		</div>
		<!-- rightfooter start -->
		<div class="rightfoot">
			<div class="fenye">
				<div class="pg">
					<strong>1</strong>
				</div>
			</div>
			<div class="fy-total">
				共<span class="my_tid">999</span>条
			</div>
			<div class="pl-caozuo">
				&nbsp; <label><input type="checkbox" class="my_checkbox_all">全选</label> <a href="#" class="del_all pl-delete">&nbsp;批量删除</a>
			</div>
		</div>
		<!-- rightfooter end -->

		<!-- 我的信息 START -->
		<div id="object_con0">
			<!-- 收件箱 start -->
			<ul class="receive_box">
				<!-- 一条消息开始 -->
				<li id="1599356_li"><span class="re_input"> <input type="checkbox" value="1599356" id="1599356"></span>
					<p class="userphoto">
						<img src="images/no-info.png" />
					</p>
					<p class="re_from">
						<span class="fl"><span class="color666">来自：管理员 </span></span><span class="fr">&nbsp;yyyy-MM-dd hh:mm ss&nbsp;&nbsp;&nbsp;<a href="" class="del">删除</a></span>
					</p>
					<p style="word-wrap: break-word; word-break: normal;" class="re_reply">
						感谢您注册并成为博奥好学网的会员，现赠予您
						<span class='fc-org'>20</span>积分sp。 
					</p> <!--回复-->
					<div class="rep" id="my_reply_1599356" style="display:none">
						<form id="infor" name="infor" method="post" action="#">
							<table>
								<tbody>
									<tr>
										<th><span class="f13 fontweight gray">我的回复：</span></th>
										<td><textarea id="message" name="message"></textarea></td>
										<td><span id="messageTip" style="display: none;"></span></td>
									</tr>
									<tr>
										<th></th>
										<td><input type="submit" class="smallbtn-green" value="发送">&nbsp;&nbsp; <input type="button" value="取消" id="1599356" class="smallbtn" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div></li>
				<!-- 一条消息结束 -->
				<!-- 一条消息开始 -->
				<li id="1599356_li"><span class="re_input"> <input type="checkbox" value="1599356" id="1599356"></span>
					<p class="userphoto">
						<img src="images/no-info.png" />
					</p>
					<p class="re_from">
						<span class="fl"><span class="color666">来自：</span>管理员</span> <span class="fr">&nbsp;yyyy-MM-dd hh:mm ss&nbsp;&nbsp;&nbsp;<a href="" class="del">删除</a></span>
					</p>
					<p style="word-wrap: break-word; word-break: normal;" class="re_reply">
						感谢您注册并成为博奥好学网的会员，现赠予您
						<span class='fc-org'>20</span>积分sp。 
					</p> <!--回复-->
					<div class="rep" id="my_reply_1599356" style="display:none">
						<form id="infor" name="infor" method="post" action="#">
							<table>
								<tbody>
									<tr>
										<th><span class="f13 fontweight gray">我的回复：</span></th>
										<td><textarea id="message" name="message"></textarea></td>
										<td><span id="messageTip" style="display: none;"></span></td>
									</tr>
									<tr>
										<th></th>
										<td><input type="submit" class="smallbtn-green" value="发送">&nbsp;&nbsp; <input type="button" value="取消" id="1599356" class="smallbtn" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div></li>
				<!-- 一条消息结束 -->
				<!-- 一条消息开始 -->
				<li id="1599356_li"><span class="re_input"> <input type="checkbox" value="1599356" id="1599356"></span>
					<p class="userphoto">
						<img src="images/no-info.png" />
					</p>
					<p class="re_from">
						<span class="fl"><span class="color666">来自：</span>管理员</span> <span class="fr">&nbsp;yyyy-MM-dd hh:mm ss&nbsp;&nbsp;&nbsp;<a href="" class="del">删除</a></span>
					</p>
					<p style="word-wrap: break-word; word-break: normal;" class="re_reply">
						感谢您注册并成为博奥好学网的会员，现赠予您
						<span class='fc-org'>20</span>积分sp。 
					</p> <!--回复-->
					<div class="rep" id="my_reply_1599356" style="display:none">
						<form id="infor" name="infor" method="post" action="#">
							<table>
								<tbody>
									<tr>
										<th><span class="f13 fontweight gray">我的回复：</span></th>
										<td><textarea id="message" name="message"></textarea></td>
										<td><span id="messageTip" style="display: none;"></span></td>
									</tr>
									<tr>
										<th></th>
										<td><input type="submit" class="smallbtn-green" value="发送">&nbsp;&nbsp; <input type="button" value="取消" id="1599356" class="smallbtn" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div></li>
				<!-- 一条消息结束 -->
				<!-- 一条消息开始 -->
				<li id="1599356_li"><span class="re_input"> <input type="checkbox" value="1599356" id="1599356"></span>
					<p class="userphoto">
						<img src="images/no-info.png" />
					</p>
					<p class="re_from">
						<span class="fl"><span class="color666">来自：</span>管理员</span> <span class="fr">&nbsp;yyyy-MM-dd hh:mm ss&nbsp;&nbsp;&nbsp;<a href="" class="del">删除</a></span>
					</p>
					<p style="word-wrap: break-word; word-break: normal;" class="re_reply">
						感谢您注册并成为博奥好学网的会员，现赠予您
						<span class='fc-org'>20</span>积分sp。 
					</p> <!--回复-->
					<div class="rep" id="my_reply_1599356" style="display:none">
						<form id="infor" name="infor" method="post" action="#">
							<table>
								<tbody>
									<tr>
										<th><span class="f13 fontweight gray">我的回复：</span></th>
										<td><textarea id="message" name="message"></textarea></td>
										<td><span id="messageTip" style="display: none;"></span></td>
									</tr>
									<tr>
										<th></th>
										<td><input type="submit" class="smallbtn-green" value="发送">&nbsp;&nbsp; <input type="button" value="取消" id="1599356" class="smallbtn" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div></li>
				<!-- 一条消息结束 -->


			</ul>
		</div>
		<!-- 我的信息结束 -->

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
		</div>
		<!-- 博奥友情提示 -->
		<div class="noteread">
			<p>
				<b>友情提示</b>
			</p>
			<p>1、消息删除后将不可恢复</p>
		</div>
	</div>
</div>