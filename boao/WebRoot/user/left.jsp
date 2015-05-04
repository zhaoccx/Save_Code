<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
$(function (){
	$("#${current}").addClass("current");
});
</script>

<div class="leftCol">
	<dl class="nav_border">
		<dt id="home">
			<a href="home/" class="title" title="回到用户中心首页"><span class="iconStp is_1"></span>用户中心</a>
		</dt>
	</dl>
	<!-- 已经发布了的消息 -->
	<dl class="nav_border">
		<dt id="info">
			<a href="info/" class="title"><span class="iconStp is_2"></span>我发布的信息</a>
		</dt>
	</dl>
	<!--我的消息-->
	<dl class="nav_border">
		<dt style="position:relative" id="msg">
			<a href="msg/" class="title"><span class="iconStp is_4"></span>我的消息</a>
		</dt>
	</dl>
	<dl class="nav_border">
		<!-- 我的账户 -->
		<dt id="account">
			<a href="account/" class="title">
				<!-- 当前栏目 -->
				<span class="iconStp is_5"></span>我的账户
			</a>
		</dt>
		<dd id="safe">
			<a href="safe/" class="title">账户安全 </a>
		</dd>
		<dd id="bonus">
			<a href="bonus/" class="title">我的积分</a>
		</dd>
		<dd id="balance">
			<a href="balance/" class="title">我的余额 </a>
		</dd>
		<dd id="credit">
			<a href="credit/" class="title">信用记录 </a>
		</dd>
		<dd id="charge">
			<a href="charge/" class="title">我要充值 </a>
		</dd>
	</dl>
	<!-- 帮助中心 -->
	<dl class="nav_border">
		<dt id="help">
			<a href="#" target="_blank" class="title"><span class="iconStp is_6"></span>帮助中心</a>
		</dt>
	</dl>
</div>