<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/control/";
%>
<base href="<%=basePath%>" />
<link href="css/skin.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}

.STYLE1 {
	font-family: "宋体";
	font-size: 12px;
	line-height: 25px;
	color: #666666;
}

.STYLE22 {
	color: #FF6600;
	font-weight: bold;
}
-->
</style>
<body>
	<table>
		<tr>
			<td style='width:17;valign=top'><img src="images/left-top-right.gif" width="17" height="29" /></td>
			<td style="valign:top">
				<table style="width:100%;border:0;cellpadding:0;cellspacing:0" class="left_topbg" id="table2">
					<tr>
						<td style="align:left"><div class="titlebt">欢迎界面</div></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="width:16;valign:top"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td style="valign:middle"></td>
			<td style="valign:top; bgcolor:#F7F8F9">
				<table style="width:95%; border:0; align:center; cellpadding:0; cellspacing:0">
					<tr>
						<td colspan="2" style="valign:top"></td>
						<td></td>
						<td style="valign:top"></td>
					</tr>
					<tr>
						<td colspan="2" style="valign:top"><span class="left_bt">博奥好学网网站后台管理</span><br /> <br> <span class="left_txt"><img src="images/ts.gif" width="16" height="16"> 提示：<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;因为网站是有<strong>中文/英文</strong>两个版本的，所以请您在执行<strong>保存</strong>或者<strong>编辑</strong>数据时，务必要留意当前操作的“<strong>数据修改指向</strong>”</span><span class="left_txt">选中的是“中文”还是“英文”，以免造成不必要的失误。<br />另外,需要注意的是，在网络繁忙时,<strong>请勿重复点击</strong>或提交表单中的数据，请留意浏览器的当前进度条并耐心等待。以免引起由于服务器资源无法正常释放而产生不可预见的错误。<br /> <br /></span></td>
						<td style="width:4%"></td>
						<td style="width:43%;valign:top" rowspan="3">
							<table style="width:100%; height:144; border:0; cellpadding:0; cellspacing:0" class="line_table">
								<tr>
									<td style="width：2%; height:27; background:images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
									<td style="width:98%; background:images/news-title-bg.gif" class="left_bt2">使用注意事项</td>
								</tr>
								<tr>
									<td colspan="2" style="height:100; align:left; valign:middle">
										<ul style=" margin-left:25px;margin-top:5px;">
											<li class="STYLE1">为避免各种兼容问题，<strong>建议使用IE 6.0或以上版本</strong>。
											</li>
											<li class="STYLE1">每个月应至少进行一次数据库数据的备份。</li>
											<li class="STYLE1">上传图片的大小将影响用户加载页面的时间,建议单张小于250K。</li>
											<li class="STYLE1">请务必在核实后再<strong>删除</strong>数据 (数据在执行删除后将不可恢复)。
											</li>
											<li class="STYLE1">建议使用 1024x768 或以上分辨率浏览与使用 ( 最佳：1440x900 )。</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td style="height:5" colspan="2"></td>
								</tr>
							</table>
					<tr>
						<td style="colspan:2; valign:top">
							<!--JavaScript部分--> <SCRIPT type="text/javascript">
				function secBoard(n){
					for(i=0;i<secTable.cells.length;i++)
					secTable.cells[i].className="sec1";
					secTable.cells[n].className="sec2";
					for(i=0;i<mainTable.tBodies.length;i++)
					mainTable.tBodies[i].style.display="none";
					mainTable.tBodies[n].style.display="block";
				}
          </SCRIPT> <!--HTML部分-->
							<TABLE style="width:72%; border:0;cellPadding:0; cellSpacing:0; id:secTable">
								<TBODY>
									<TR style="align:middle; height:20">
										<TD style="align:center" class=sec2 onclick=secBoard(0)>最新咨询</TD>
										<TD style="align:center" class=sec1 onclick=secBoard(1)>最新消息</TD>
										<TD style="align:center" class=sec1 onclick=secBoard(2)>系统参数</TD>
										<TD style="align:center" class=sec1 onclick=secBoard(3)>版权说明</TD>
									</TR>
								</TBODY>
							</TABLE>
							<TABLE class=main_tab id=mainTable style="width:100%;  border:0;  cellPadding:0; cellSpacing:0">
								<!--关于TBODY标记-->
								<TBODY style="DISPLAY: block">
									<TR>
										<TD style="valign:top ;align:middle">
											<TABLE style="width:98%; height:135; border:0; align:center; cellPadding:0; cellSpacing:0">
												<TBODY>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
													<TR>
														<TD style="width:4%;height:28; background:images/news-title-bg.gif"></TD>
														<TD colspan="2" style="align：left; background:images/news-title-bg.gif" class="left_txt">管理员上一次登录时间：<strong>${ADMINISTRATOR_CREATED_SUCCESS.lastLoginTime}</strong></TD>
													</TR>
													<TR>
														<TD rowspan="2" style="bgcolor:#FAFBFC"></TD>
														<TD style="bgcolor:#FAFBFC;width:42%;height:33"><span class="left_txt">现共有 <strong>${fn:length(ADMINISTRATOR_NEW_USER)}</strong> 位未审核的注册商家.
														</span></TD>
														<TD rowspan="3" style="bgcolor:#FAFBFC;width:54%;font-color:#FF6600"><a href="action!toUser.do?category=fail" class="STYLE22">《点击此处审核》</a></TD>
													</TR>
													<TR>
														<TD rowspan="2" style="bgcolor:#FAFBFC"><span class="left_txt">其中共有 <strong>${fn:length(TOTAL_USER_LIST)}</strong> 位注册商家
														</span></TD>
													</TR>
													<TR>
														<TD style="bgcolor:#FAFBFC"></TD>
													</TR>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
								<!--关于cells集合-->
								<TBODY style="DISPLAY: none">
									<TR>
										<TD style="valign:top; align:middle">
											<TABLE style="width:98% ;height:133; border:0 ;align:center;cellPadding:0; cellSpacing:0">
												<TBODY>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
													<TR>
														<TD style="width:4%; height:28; background:images/news-title-bg.gif"></TD>
														<TD colspan="2" style="align:left; background:images/news-title-bg.gif" class="left_txt">管理员上一次登录时间：<strong>${ADMINISTRATOR_CREATED_SUCCESS.lastLoginTime}</strong></TD>
													</TR>
													<TR>
														<TD rowspan="2" style="bgcolor:#FAFBFC"></TD>
														<TD style="bgcolor:#FAFBFC;width:42%;height:33"><span class="left_txt">现共有 <strong>${fn:length(ADMINISTRATOR_NEW_COPY)}</strong> 位未审核的企业信息
														</span></TD>
														<TD rowspan="3" style="bgcolor:#FAFBFC;width:54%;font-color:#FF6600"><a href="action!toCopy.do?category=fail" class="STYLE22">《点击此处审核》</a></TD>
													</TR>
													<TR>
														<TD rowspan="2" style="bgcolor:#FAFBFC"><span class="left_txt">其中共有 <strong>${fn:length(TOTAL_COPY_LIST)}</strong> 商家发布的企业信息
														</span></TD>
													</TR>
													<TR>
														<TD style="bgcolor:#FAFBFC"></TD>
													</TR>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
								<!--关于tBodies集合-->
								<TBODY style="DISPLAY: none">
									<TR>
										<TD style="valign:top ;align:middle">
											<TABLE style="width:98%; border:0 ;align:center; cellPadding:0; cellSpacing:0">
												<TBODY>
													<TR>
														<TD colspan="3"></TD>
													</TR>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
													<TR>
														<TD style="width:4%; height:25; background:images/news-title-bg.gif"></TD>
														<TD style="height:25; background:images/news-title-bg.gif" class="left_txt"><span class="TableRow2">程序开发语言：</span>Java (jsp)</TD>
														<TD style="height:25; background:images/news-title-bg.gif" class="left_txt">核心JDK版本：Jdk 1.6.0_12,mod_jk 1.2.27</TD>
													</TR>
													<TR>
														<TD style="height:25; bgcolor:#FAFBFC"></TD>
														<TD style="height:25; bgcolor:#FAFBFC;width:42%"><span class="left_txt">服&nbsp;务&nbsp;器&nbsp;系&nbsp;统：Linux</span> <span class="TableRow2"><img src="images/g.gif" width="12" height="12"></span></TD>
														<TD style="height:25; bgcolor:#FAFBFC;width:54%"><span class="left_txt">服务器类型：Tomcat version: 6.0.18</span></TD>
													</TR>
													<TR>
														<TD style="height:25; bgcolor:#FAFBFC"></TD>
														<TD style="height:25; bgcolor:#FAFBFC;width:42%"><span class="left_txt">页面脚本引擎：Jstl 1.2，JavaScript</span></TD>
														<TD style="height:25; bgcolor:#FAFBFC;width:54%"><span class="left_txt">脚本解释引擎：JavaEE6 ,web-app 2.5</span></TD>
													</TR>
													<TR>
														<TD style="height:25; bgcolor:#FAFBFC"></TD>
														<TD style="height:25; bgcolor:#FAFBFC"><span class="left_txt">站点物理路径：ROOT/</span></TD>
														<TD style="height:25; bgcolor:#FAFBFC"><span class="left_txt">数据库用户名：localhost , Port: 3306</span></TD>
													</TR>
													<TR>
														<TD style="height:25; bgcolor:#FAFBFC"></TD>
														<TD style="height:25; bgcolor:#FAFBFC"><span class="left_txt">系统字符编码：UTF-8</span></TD>
														<TD style="height:25; bgcolor:#FAFBFC"><span class="left_txt">数&nbsp;据&nbsp;库&nbsp;类&nbsp;型：MySQL version: 5.0</span></TD>
													</TR>

													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
												</TBODY>

											</TABLE>
										</TD>
									</TR>
								</TBODY>
								<!--关于display属性-->
								<TBODY style="DISPLAY: none">
									<TR>
										<TD style="valign:top; align:middle">
											<TABLE style="width:98%; border:0 ;align:center; cellPadding:0; cellSpacing;0">
												<TBODY>
													<TR>
														<TD colspan="3"></TD>
													</TR>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
													<TR>
														<TD style="width:4%;background:images/news-title-bg.gif"></TD>
														<TD style="width:91%; background:images/news-title-bg.gif" class="left_ts">程序说明：</TD>
														<TD style="width:5%;background:images/news-title-bg.gif" class="left_txt"></TD>
													</TR>
													<TR>
														<TD style="bgcolor:#FAFBFC"></TD>
														<TD style="bgcolor:#FAFBFC" class="left_txt"><span class="left_ts">1、</span>本程序由博奥好学网委托深圳LIGHTNING(LNSTUDIO)网络科技工作室开发。</TD>
														<TD style="bgcolor:#FAFBFC" class="left_txt"></TD>
													</TR>
													<TR>
														<TD style="bgcolor:#FAFBFC"></TD>
														<TD style="bgcolor:#FAFBFC" class="left_txt"><span class="left_ts">2、</span>本程序的网页,图片,内容及所有数据,其版权均由博奥好学网所拥有。</TD>
														<TD style="bgcolor:#FAFBFC" class="left_txt"></TD>
													</TR>
													<TR>
														<TD style="bgcolor:#FAFBFC"></TD>
														<TD style="bgcolor:#FAFBFC" class="left_txt"><span class="left_ts">3、</span>博奥好学网网站拥有其最终解释权。</TD>
														<TD style="bgcolor:#FAFBFC" class="left_txt"></TD>
													</TR>
													<TR>
														<TD style="height:5" colspan="3"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>

					</tr>

					<tr>
						<td style="width:2%"></td>
						<td style="width:51%" class="left_txt">电&nbsp;话：13751142694 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 邮&nbsp;箱：LNSTUDIO@163.COM &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 腾&nbsp;讯：1803290041 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 网&nbsp;站:http://www.lnstudio.co.cc</td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</td>
		<tr>
			<td style="valign:bottom"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
			<td><img src="images/buttom_bgs.gif" width="17" height="17"></td>
			<td style="valign:bottom"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>
</body>
