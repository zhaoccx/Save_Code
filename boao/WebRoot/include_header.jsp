<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>



<!--头部 开始-->
<div class="by_bg">
	<div class="wap head01 por">
		<h1 class="logo">
			<a href="#">博奥好学网深圳站</a>
		</h1>
		<p class="p_01">
			<!-- 可放自定义宣传语或口号(现已经用图片代替了) -->
		</p>
		<p class="p_02">
			<!-- 可放自定义宣传语或口号(现已经用图片代替了) -->
		</p>
		<!--全站搜索框开始-->
		<form onsubmit="return searchCheck();" method="post" action="#" name="searchForm" id="searchForm" target="_blank">
			<div class="m_search">
				<input id="search_top_txt" name="search_top_txt" type="text" class="input_01 tc_style13" value="关键字" onkeyup="value=value.replace(/[^0-9^.]/g,'');" onblur="if(this.value=='') {this.value='关键字';this.style.color='#ccc';}else{}this.className='input_01'" onfocus="if(this.value=='关键字') {this.value='';};this.className='input_01';this.style.color='#333';" onmouseout="this.className='input_01'" onmouseover="this.className='input_01'" />
				<div class="seChange" id="selectChange">
					<div class="sear_ti">博奥搜索</div>
					<ul class="sear_ul tc_style3" style="display:none">
						<li><a style="name:subject" href="javascript:;">博奥搜索</a></li>
						<li><a style="name:subject" href="javascript:;">科目搜索</a></li>
						<li><a style="name:grant" href="javascript:;">年级搜索</a></li>
						<li><a style="name:service" href="javascript:;">教员搜索</a></li>
						<li><a style="name:qiye" href="javascript:;">机构搜索</a></li>
						<li><a style="name:yingji" href="javascript:;">资源搜索</a></li>
					</ul>
				</div>
				<input type="submit" value="" name="" class="input_02">
			</div>
		</form>
		<!--全站搜索框结束-->

		<div class="l_nav wap">
			<div class="subnav">
				<a href="#">注册</a>|<a href="#">登录</a>|<a href="#">帮助</a>
			</div>
			<ul>
				<li class="current"><a href="#">&nbsp;&nbsp;首 页&nbsp;&nbsp;</a></li>
				<li><a href="#">找家教<span class="hot"></span></a></li>
				<li><a href="#">找机构</a></li>
				<li><a href="#">优秀教员<span class="hot"></span></a></li>
				<li><a href="#">博奥题库</a></li>
				<li><a href="#">博奥资讯</a></li>
				<li><a href="#">关于博奥好学</a></li>
				<!--
								<li><a href="#">帮助中心</a></li>
							-->
			</ul>
			<div class="clear"></div>
		</div>
		<!--顶部top结束-->
	</div>
	</div>
	<!--头部 结束-->