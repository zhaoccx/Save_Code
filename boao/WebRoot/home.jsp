<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="博奥,博奥好学,博奥好学网,博奥家教,深圳家教,深圳家教辅导" name="keywords" />
<meta content="找家教？找辅导？就上博奥好学网" name="description" />
<title>博奥好学网</title>
<link href="css/home/base.css" type="text/css" rel="stylesheet" />
<link href="css/home/link.css" type="text/css" rel="stylesheet" />
<link href="css/home/banner.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/commons/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/commons/backtop.js"></script>
<script type="text/javascript" src="js/commons/jcarousellite_1.0.1.min.js"></script>
<script type="text/javascript" src="js/home/index.js"></script>
<script type="text/javascript" src="js/home/common.js"></script>
<script type="text/javascript" src="js/home/banner.js"></script>
</head>

<body>

	<jsp:include page="include_header.jsp" flush="true" />


	<!-- 内容开始 -->


	<!--中间 开始-->
	<div class="wap mar_t_15">
		<div class="con_left ">
			<div class="flash_con box">
				<!--banner开始-->
				<div class="bannaer_box">
					<div id="banner_content" class="fi10">
						<ul class="fi_ct">
							<li class="hidden"><a href="#" target="_blank"><img src="/images/upload/home/banner/img01.jpg"></a></li>
							<li class="hidden"><a href="#" target="_blank"><img src="/images/upload/home/banner/img02.jpg"></a></li>
							<li class="hidden"><a href="#" target="_blank"><img src="/images/upload/home/banner/img03.jpg"></a></li>
							<li class="hidden"><a href="#" target="_blank"><img src="/images/upload/home/banner/img04.jpg"></a></li>

						</ul>
						<div class="fi_tab_c">
							<ul class="fi_tab" id="fi">
								<li><a href="#"><img src="/images/upload/home/banner/img01s.jpg" /></a></li>
								<li><a href="#"><img src="/images/upload/home/banner/img02s.jpg" /></a></li>
								<li><a href="#"><img src="/images/upload/home/banner/img03s.jpg" /></a></li>
								<li><a href="#"><img src="/images/upload/home/banner/img04s.jpg" /></a></li>
							</ul>
						</div>
					</div>

				</div>
				<script type="text/javascript">
	jQuery(".fi_tab").css("width","375px");
	
	jQuery("#banner_content").focusImg({
		flag: "fi10", 
		hoverStop: true,
		speed:6000,
		clickTabToNav:false
	});
</script>
				<!--banner结束-->
			</div>
			<!--诚信服务机构 结束-->

			<!--推荐机构box开始-->
			<div class="box mar_t_15">
				<div class="box_top">
					<h2>教育机构</h2>
					<span class="box_more"><a href="#" target="_blank" rel="nofollow">更多&gt;&gt;</a></span>
				</div>

				<!--box_center1开始 主要内容区-->
				<div class="box_center">
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->
					<!--教育机构jigou单个框架开始-->
					<div class="jigou  an_line ">
						<div class="jigou_logo">
							<a href="#" target="_blank"><img src="images/static/temp_jigou.png" /></a>
						</div>
						<div class="jigou_center">
							<dl>
								<dt class="title_1">
									<a href="#" target="_blank">华东师范大学</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥好学认证"></span></a>
								<dd>全球卓著英语培训专家</dd>
								<dd>优秀培训师+最先进教学技术+便利位置48年历史+全球1500万名学员！</dd>
								<dd class="index_dd">
									业务范围：<a href='#' target='_blank'>英语培训</a>、<a href='#' target='_blank'>商务英语</a>
								</dd>
							</dl>
							<p>
								<img src="images/static/tel_ico.gif">&nbsp; 免费咨询电话：&nbsp;<span class="orange font_s_16">400 000 0000</span> 转 <span class="orange font_s_16">10000</span>
							</p>
						</div>
						<div class="jigou_right">
							<p class="jigou_star10">
								<!--需要评星吗？-->
							</p>
						</div>
					</div>
					<!--教育机构jigou单个框架结束-->

				</div>
				<!--box_center1结束 主要内容区-->
			</div>
			<!--推荐机构box结束-->


			<!--贷款咨询box开始-->
			<div class="box mar_t_15">
				<div class="box_top">
					<h2>帮助中心</h2>

					<span class="box_more"><a href="#" target="_blank" rel="nofollow">更多&gt;&gt;</a></span>
				</div>
				<!--box_center1开始 主要内容区-->
				<div class="box_center1">
					<div class="search_box">

						<input type="text" class="s_input01" name="keystr" id="sfaq" value="请输入关键字" onfocus="javascript:if(this.value=='请输入关键字'){this.value='';}" onblur="javascript:if(this.value==''){this.value='请输入关键字';}" /> <input type="button" class="s_btn01" value="搜索一下"> <input type="button" class="s_btn02" value="我要提问">

					</div>

					<!-- 一个问答开始 -->
					<ul class="answer_box  an_line2 ">
						<li class="wen"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心问题内帮帮助中心问题内容帮助中心问题内容助中心问题内容...</a></li>
						<li class="da"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心问题内容帮助中帮助中心问题内容心问题内容...</a></li>
					</ul>
					<!-- 一个问答结束 -->
					<!-- 一个问答开始 -->
					<ul class="answer_box  an_line2 ">
						<li class="wen"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心问题内帮助中帮助帮助中心问题内容中心问题内容心问题内容容...</a></li>
						<li class="da"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心问帮助中心问帮助中心问题内容题内容题内容...</a></li>
					</ul>
					<!-- 一个问答结束 -->
					<!-- 一个问答开始 -->
					<ul class="answer_box  an_line2 ">
						<li class="wen"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中帮助中心问题内帮助中心问题内容帮助中心问题内容容心问题内容...</a></li>
						<li class="da"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心帮助中心帮助中心问题内容问题内容问题内容...</a></li>
					</ul>
					<!-- 一个问答结束 -->
					<!-- 一个问答开始 -->
					<ul class="answer_box  an_line2 ">
						<li class="wen"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心帮助中心问题内容问题内容...</a></li>
						<li class="da"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中帮助中帮助中心问题内容帮助中心问题内容帮助中心问题内容心问题内容心问题内容...</a></li>
					</ul>
					<!-- 一个问答结束 -->
					<!-- 一个问答开始 -->
					<ul class="answer_box  an_line2 ">
						<li class="wen"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中帮助中心问题内容心问题内容...</a></li>
						<li class="da"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助帮助中心问题内容帮助中心问题内容中心问题内容...</a></li>
					</ul>
					<!-- 一个问答结束 -->
					<!-- 一个问答开始 -->
					<ul class="answer_box  an_line2 ">
						<li class="wen"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中心问题内容...</a></li>
						<li class="da"><a class="blue" href="#" target="_blank">[一对一辅导]</a> <a href="#" target="_blank">帮助中帮助中心问题内容心问题内容...</a></li>
					</ul>
					<!-- 一个问答结束 -->

				</div>
				<!--box_center1结束 主要内容区-->
			</div>
			<!--贷款咨询box结束-->
		</div>
		<div class="con_right">

			<!--诚信服务机构 开始-->
			<div class="con_cx box">
				<h2 class="cx_title2"></h2>
				<div class="cx_con1">
					<p class="p_02">
						<img src="images/static/lo_2.jpg" /><br />认证教师/机构
					</p>
					<p class="p_02">
						<img src="images/static/lo_3.jpg" /><br />不成功不收费
					</p>
					<p class="p_02">
						<img src="images/static/lo_4.jpg" /><br />免费咨询
					</p>
					<div class="clear"></div>
				</div>
				<div class="cx_con1">
					<div class="data p_02">
						<p class="jigou_num">1234 +</p>
						<span>认证机构</span>
					</div>
					<div class="data p_02">
						<p class="jigou_num">3571 +</p>
						<span>认证教员</span>
					</div>
					<div class="data p_02">
						<p class="jigou_num">6651 +</p>
						<span>客户的信赖</span>
					</div>
					<div class="clear"></div>
				</div>

				<!-- 会员的最新成功资讯 -->
				<div class="cx_list jCarouselLite_shenqing tc_sytle3">
					<ul>
						<li><span class="span03">10分钟前</span> <a href="#" target="_blank">博奥会员[HuangJiding]已成功找到[黄老师]为他进行暑假的数学辅导..</a></li>
						<li><span class="span03">1分钟前</span> <a href="#" target="_blank">博奥会员[HuangJiding]已成功找到[黄老师]为他进行暑假的数学辅导..</a></li>
						<li><span class="span03">2分钟前</span> <a href="#" target="_blank">博奥会员[HuangJiding]已成功找到[黄老师]为他进行暑假的数学辅导..</a></li>
						<li><span class="span03">3分钟前</span> <a href="#" target="_blank">博奥会员[HuangJiding]已成功找到[黄老师]为他进行暑假的数学辅导..</a></li>
						<li><span class="span03">4分钟前</span> <a href="#" target="_blank">博奥会员[HuangJiding]已成功找到[黄老师]为他进行暑假的数学辅导..</a></li>
						<li><span class="span03">5分钟前</span> <a href="#" target="_blank">博奥会员[HuangJiding]已成功找到[黄老师]为他进行暑假的数学辅导..</a></li>
					</ul>
				</div>
			</div>
			<!--推荐顾问box开始-->
			<div class="box mar_t_15">
				<div class="box_top">
					<h2>推荐教员</h2>
					<span class="box_more"><a href="#" target="_blank" rel="nofollow">更多&gt;&gt;</a></span>
				</div>
				<!--box_center1开始 主要内容区-->
				<div class="box_center">

					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#" title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->
					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#"  title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->
					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#"  title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->

					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#"  title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->

					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#"  title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->

					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#"  title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->

					<!--贷款顾问guwen单个框架开始-->
					<div class="guwen  an_line ">
						<div class="guwen_logo">
							<a href="#"  title="" target="_blank"><img src="images/static/huanglaoshi.jpg" /></a>
						</div>
						<div class="guwen_center">
							<dl>
								<dt>
									<a href="#" target="_blank">黄老师</a>&nbsp; <a href='#' target="_blank"><span class="zheng_ico1" title="博奥认证教员"></span></a> <a href='#' target="_blank"><span class="zheng_ico2" title="没效果不收费"></span></a>
								</dt>
								<dd>服务方式：教员上门</dd>
								<dd>最高学历：本科在读（大三学生）</dd>
								<dd>小学语文,小学数学,小学英语,寒假陪读</dd>
							</dl>
						</div>
					</div>
					<!--贷款顾问guwen单个框架结束-->


				</div>
				<!--box_center1结束 主要内容区-->
			</div>
			<!--推荐顾问box结束-->

			<!--服务反馈box开始-->
			<div class="box hd_heigh mar_t_15">
				<div class="box_top">
					<h2>学员反馈</h2>
					<span class="box_more"><a href="#" target="_blank" rel="nofollow">更多&gt;&gt;</a></span>
				</div>
				<!--box_center1开始 主要内容区-->
				<div class="box_center jCarouselLite_success">
					<ul class="answer_boxc">
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
						<li class="an_line2"><a href="#" target="_blank">黄敦仁同学<span>好，非常好，老师也很漂亮</span>
						</a></li>
					</ul>
				</div>
				<!--box_center1结束 主要内容区-->
			</div>
			<!--服务反馈box结束-->

			<!--资讯box开始-->
			<div class="box zx_heigh mar_t_15">
				<div class="box_top">
					<h2>博奥资讯</h2>
					<span class="box_more"><a href="#" target="_blank" rel="nofollow">更多&gt;&gt;</a></span>
				</div>


				<!--box_center1开始 主要内容区-->
				<div class="box_center">
					<ul class="zixun">
						<li class="li_at">
							<dl>
								<dt>
									<a href="#" target="_blank" title="博奥资讯的标题">这里是博奥资讯的标题 Subject here..</a>
								</dt>
								<dd>
									<div class="imgArea">
										<img src="images/static/temp_article_logo.png">
									</div>
									<div class="txtArea">
										<a href="#" target="_blank">这里是博奥资讯文本简略内容，这里是博奥资讯文本简略内容，这里是博奥资讯文本简。 ...<span class="blue">详细&gt;&gt;</span></a>
									</div>
								</dd>
							</dl>
						</li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题标题...</a></li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题标题...</a></li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题标题...</a></li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题标题...</a></li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题标题...</a></li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题标题...</a></li>
						<li class="an_line2"><a class="blue" href="#" target="_blank">[资讯类型]</a>&nbsp;<a href="#" target="_blank">这里是博奥资讯的标题......</a></li>

					</ul>
				</div>
				<!--box_center1结束 主要内容区-->
			</div>
			<!--资讯box结束-->

		</div>
		<div class="clear"></div>
	</div>
	<!--中间 结束-->
	<!--link开始-->

	<div class="link padding_top_15">

		<div class="box2">

			<div id="tb_" class="ta_">

				<ul>
					<li onmouseover="showDIV('a_Stab',1,4);" id="a_Stab1" class="current">合作媒体</li>
					<li onmouseover="showDIV('a_Stab',2,4);" id="a_Stab2">合作机构</li>
					<li onmouseover="showDIV('a_Stab',3,4);" id="a_Stab3">专题活动</li>
					<li onmouseover="showDIV('a_Stab',4,4);" id="a_Stab4">友情链接</li>

				</ul>

			</div>

			<div class="box2_center">
				<div id="con_a_Stab_1" class="hzlist jCarouselLite1 tc_sytle2">

					<ul class="partner_logo">
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
					</ul>

				</div>
				<div id="con_a_Stab_2" class="hzlist jCarouselLite2">
					<ul class="partner_logo">
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
						<li><a><img src="http://s1.hao123img.com/index/images/newlogo-186X68.png"></a></li>
					</ul>
				</div>
				<div id="con_a_Stab_3" class="fylist tc_sytle3 tc_sytle5">
					<ul class="linkTXT">
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
					</ul>
				</div>

				<div id="con_a_Stab_4" class="fylist tc_sytle4">
					<ul class="linkTXT">
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
						<li><a href="#">博奥好学网</a></li>
					</ul>
				</div>

			</div>
		</div>
		<!--box2开始 切换通用框架 宽高均为自适应-->
	</div>
	<script type="text/javascript" src="js/home/current.js"></script>
	<!--link结束-->


	<!-- 内容结束 -->



	<jsp:include page="include_footer.jsp" flush="true" />

</body>
</html>
