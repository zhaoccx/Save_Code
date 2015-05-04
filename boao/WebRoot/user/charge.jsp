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
		replace("left/","left",{current:"charge"});
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
				<!-- user-recharge start -->
				<div class="current-money">
					当前账户：<span class="c-ff6a00">lnstudio</span>，余额：<span class="c-ff6a00">0</span>元
				</div>
				<!-- recharge-con start -->
				<div class="recharge-con">
					<ul id="recharge" class="clearfix">
						<li id="tab0" class="selected"><a href="javascript:void(0);" onClick="ntabs('recharge','tab0')"><span class="wsyh"></span>网上银行</a></li>
						<li id="tab1" class=""><a href="javascript:void(0);" onClick="ntabs('recharge','tab1')"><span class="czk"></span>手机充值卡</a></li>
						<li id="tab5" class=""><a href="javascript:void(0);" onClick="ntabs('recharge','tab5')"><span class="zfb"></span>支付宝</a></li>
					</ul>

					<!-- 网上银行content -->
					<div id="recharge_con0" style="display:block" class="recharge-box">
						<div class="fl width740">
							<h3>网银充值，即时到帐。</h3>
							<form id="yeepayform" target="_blank" method="post" action="/my/recharge.php" name="yeepayform" onSubmit="return checkAndSubmitForYeepay();">
								<div class="recharge-num">
									<input id="yeeChannelId" type="hidden" name="channelId" value="12"> <input id="yeeBankCode" type="hidden" name="bankCode" value="ICBC"> <input id="yeereturnUrl" type="hidden" name="serviceParam" value="" /> <input id="shengPayType" type="hidden" name="payType" value="PT001" /> 充值金额：<input type="text" class="cz-text" name="inputmoney" id="inputmoney" value="">&nbsp;元&nbsp;<span id="inputmoneyTip"></span>
								</div>
								<div class="bank-box">
									<p class="t mb10">选择支付的银行卡（请确保您的银行卡已开通网银）</p>
									<ul class="banklist clearfix">
										<li><label for="lab_ICBC" onClick="changeForBank('lab_ICBC');"><input type="radio" value="ICBC" class="banking" id="lab_ICBC" name="bank" checked="checked" onClick="changeBankCode('ICBC');"> <img src="images/gongshang.gif" alt="ICBC"></label></li>
										<li><label for="lab_CMB" onClick="changeForBank('lab_CMB');"><input type="radio" value="CMB" class="banking" id="lab_CMB" name="bank" onClick="changeBankCode('CMB');"> <img src="images/zhaohang.gif" alt="CMB"></label></li>
										<li><label for="lab_ABC" onClick="changeForBank('lab_ABC');"><input type="radio" value="ABC" class="banking" id="lab_ABC" name="bank" onClick="changeBankCode('ABC');"> <img src="images/nongye.gif" alt="ABC"></label></li>
										<li><label for="lab_CCB" onClick="changeForBank('lab_CCB');"><input type="radio" value="CCB" class="banking" id="lab_CCB" name="bank" onClick="changeBankCode('CCB');"> <img src="images/jianshe.gif" alt="CCB"></label></li>
										<li><label for="lab_SPDB" onClick="changeForBank('lab_SPDB');"><input type="radio" value="SPDB" class="banking" id="lab_SPDB" name="bank" onClick="changeBankCode('SPDB');"> <img src="images/shangpufa.gif" alt="SPDB"></label></li>
										<li><label for="lab_COMM" onClick="changeForBank('lab_COMM');"><input type="radio" value="COMM" class="banking" id="lab_COMM" name="bank" onClick="changeBankCode('COMM');"> <img src="images/jiaotong.gif" alt="COMM"></label></li>
										<li><label for="lab_CMBC" onClick="changeForBank('lab_CMBC');"><input type="radio" value="CMBC" class="banking" id="lab_CMBC" name="bank" onClick="changeBankCode('CMBC');"> <img src="images/minsheng.gif" alt="CMBC"></label></li>
										<li><label for="lab_SDB" onClick="changeForBank('lab_SDB');"><input type="radio" value="SDB" class="banking" id="lab_SDB" name="bank" onClick="changeBankCode('SDB');"> <img src="images/shenfa.gif" alt="SDB"></label></li>
										<li><label for="lab_GDB" onClick="changeForBank('lab_GDB');"><input type="radio" value="GDB" class="banking" id="lab_GDB" name="bank" onClick="changeBankCode('GDB');"> <img src="images/guangfa.gif" alt="GDB"></label></li>
										<li><label for="lab_BOC" onClick="changeForBank('lab_BOC');"><input type="radio" value="BOC" class="banking" id="lab_BOC" name="bank" onClick="changeBankCode('BOC');"> <img src="images/zhongguo.gif" alt="BOC"></label></li>
										<li><select class="obanksel" id="otherbank" onChange="selectChangeForBank()">
												<option class="select" value="">选择其它银行</option>
												<option value="CITIC">中信银行</option>
												<option value="PSBC">中国邮政储蓄银行</option>
												<option value="HXB">华夏银行</option>
												<option value="SZPAB">平安银行</option>
												<option value="CBHB">渤海银行</option>
												<option value="BOS">上海银行</option>
												<option value="NBCB">宁波银行</option>
												<option value="GNXS">广州市农村信用合作社</option>
												<option value="GZCB">广州市商业银行</option>
												<option value="HKBCHINA">汉口银行</option>
												<option value="NJCB">南京银行</option>
												<option value="SHRCB">上海市农村商业银行</option>
												<option value="SDE">顺德农信社</option>
												<option value="HKBEA">东亚银行</option>
												<option value="BOCD">成都银行</option>
												<option value="ZHNX">珠海市农村信用合作联社</option>
												<option value="SXJS">晋商银行</option>
												<option value="YDXH">尧都信用合作联社</option>
												<option value="WZCB">温州银行</option>
												<option value="WZCB">其他银行</option>
										</select></li>
									</ul>


									<p class="tsxy">
										<input name="yeeProtocol" id="yeeProtocol" type="checkbox" checked="checked"> 我已阅读<a href="http://www.liebiao.com/about2012/help/jifen_yue.html#q7" target="_blank" id="yeeonagre">《博奥好学网账户余额协议》</a>，并同意充值后信息自行删除或违反版规被删除，博奥好学网将不予退款。
									</p>
									<div class="btndiv">
										<label id="butt" class="butt"><input border="0" type="submit" value="提交支付" class="btns" name="btnSubmit"></label>
									</div>
								</div>
							</form>
						</div>

					</div>

					<div id="recharge_con1" style="display:none" class="recharge-box">
						<div class="fl width740">
							<h3>支持30、50、100、300元移动、联通、电信充值卡。</h3>
							<div class="xu_line margintop5"></div>
							<div class="pc-notice">
								<span class="downjt"></span><strong></strong>&nbsp;&nbsp;选择数额与充值卡实际面额必须相等，否则将充值失败或卡内余额扣除无法补回。
							</div>
							<div class="">
								<form id="sform" target="_blank" method="post" action="/my/recharge.php" name="sform" onSubmit="return checkForprotocol('shengpayProtocol');">
									<input id="mobileChannelId" type="hidden" name="channelId" value="12"> <input id="mobileProductName" type="hidden" name="productName" value="博奥好学网账户充值"> <input id="mobileMoney" type="hidden" name="inputmoney" value="28.5"> <input id="mobileservice" type="hidden" name="serviceParam" value="" /> <input id="mobilePayType" type="hidden" name="payType" value="PT005" />
									<table class="cz_table2">
										<tbody>
											<tr>
												<th>选择充值卡面值：</th>
												<td><label><input type="radio" name="cardmoney" onClick="selectMoney(30)" checked="checked">&nbsp;30元</label><label><input type="radio" name="cardmoney" onClick="selectMoney(50)">&nbsp;50元</label><label><input type="radio" name="cardmoney" onClick="selectMoney(100)">&nbsp;100元</label><label><input type="radio" name="cardmoney" onClick="selectMoney(300)">&nbsp;300元</label></td>
											</tr>
											<tr>
												<th>实际充值金额：</th>
												<td><strong class="c-ff6a00" id="rm">28.5</strong>元(手续费<strong class="c-ff6a00" id="fee">1.5</strong>元) <span class="gray f12 l-10">手续费由运营商收取</span></td>
											</tr>
										</tbody>
									</table>
									<p class="tsxy">
										<input name="yeeProtocol" id="shengpayProtocol" type="checkbox" checked="checked"> 我已阅读<a href="http://www.liebiao.com/about2012/help/jifen_yue.html#q7" target="_blank">《博奥好学网账户余额协议》</a>，并同意充值后信息自行删除或违反版规被删除，博奥好学网将不予退款。
									</p>
									<div class="btndiv">
										<label id="bu" class="butt"><input border="0" type="submit" value="提交支付" class="btns" name="btnSubmit"></label>
									</div>
								</form>
							</div>
						</div>

					</div>

					<div id="recharge_con5" style="display:none" class="recharge-box">
						<div class="fl width740">
							<h3>支付宝帐户充值，即时到帐。</h3>
							<form id="alipayform" target="_blank" method="post" action="/my/recharge.php" name="alipayform" onSubmit="return checkAndSubmitForpay('alipayinputmoney','alipayProtocol');">
								<div class="recharge-num">
									<input type="hidden" name="channelId" value="14"> <input type="hidden" name="productName" value="博奥好学网账户充值"> <input type="hidden" name="productDesc" value="博奥好学网账户充值"> <input id="alipayservice" type="hidden" name="serviceParam" value="" /> 充值金额：<input type="text" class="cz-text" name="inputmoney" id="alipayinputmoney" value="">&nbsp;元&nbsp;<span id="alipayinputmoneyTip"></span>
								</div>
								<div>
									<p class="tsxy">
										<input name="chkProtocol" id="alipayProtocol" type="checkbox" value="1" > 我已阅读<a href="#" target="_blank">《博奥好学网账户余额协议》</a>，并同意充值后信息自行删除或违反版规被删除，博奥好学网将不予退款。
									</p>
									<label class="butt"> <input border="0" type="submit" value="提交支付" class="btns" name="btnSubmit"> <span></span>
									</label>
								</div>

							</form>
						</div>
					</div>
					<!-- user-recharge end -->
				</div>
				<!-- recharge-con end -->
				<div class="bank-notice">
					<b>温馨提示</b>
					<ul>
						<li>1、充值成功的金额，将存入您的博奥个人账户，可以用来购买博奥好学网平台所有增值服务。</li>
						<li>2、尽量使用IE浏览器，充值过程中请勿点击“回退键”。</li>
						<li>3、如有任何疑问，请联系博奥好学网客服：13800 138000 (工作日 9:00 - 18:00)。</li>
					</ul>
				</div>
			</div>
			<!-- rightBody end -->


		</div>
		<div id="left"></div>
	</div>
	<!-- 页脚 -->
	<div class="footer">2013 &copy; 博奥好学网&nbsp; POWER BY YAONIMING3000.</div>

</body>
</html>