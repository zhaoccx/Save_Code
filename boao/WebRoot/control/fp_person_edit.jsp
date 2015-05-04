<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://ckeditor.com" prefix="ck"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/control/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>" />

<title></title>
<script type="text/javascript" src="js/common.js" charset="utf-8"></script>
<style type="text/css">
<!--
body {
	font-family: "宋体";
	font-size: 12px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
	vertical-align: middle;
}

.fdt {
	line-height: 30px;
}

.fdt label {
	color: #666666;
	margin-left: 60px;
	line-height: 35px;
}

.fdt input {
	vertical-align: middle;
	height: 18px;
}

.red {
	color: #FF0000
}

#submit {
	height: 35px;
	width: 100px;
	border: #666666 solid 1px;
	font-size: 14px
}

.context {
	background-color: #F7F8F9
}

.context_ul {
	min-height: 320px;
	list-style: none;
}

.tbl {
	margin-top: 2%;
	margin-left: 3%;
	float: left;
	width: 95%
}

.left {
	width: 17px;
	background: url(images/mail_leftbg.gif) repeat-y 0 0;
}

.right {
	width: 17px;
	background: url(images/mail_rightbg.gif) repeat-y 0 0;
}

.tbl_left {
	width: 15px;
	height: 29px;
	background: url(images/left-top-right.gif) repeat-x 0 0;
}

.tbl_middle {
	line-height: 29px;
	font-size: 12px;
	color: #000000;
	background: url(images/content-bg.gif) repeat-x 0 0;
}

.tbl_right {
	width: 15px;
	height: 29px;
	background-image: url(images/nav-right-bg.gif)
}

.tbl_but_left {
	width: 17px;
	height: 17px;
	vertical-align: bottom;
	background: url(images/mail_leftbg.gif) repeat-x 0 0;
}

.tbl_but_middle {
	line-height: 17px;
	vertical-align: bottom;
	font-size: 13px;
	color: #000000;
	font-weight: bold;
	background: url(images/buttom_bgs.gif) repeat-x 0 0;
}

.tbl_but_right {
	width: 15px;
	height: 17px;
	vertical-align: bottom;
	background-image: url(images/mail_rightbg.gif)
}

.STYLE1 {
	color: #999999
}

.bottom {
	float: left;
	height: 60px;
	margin-top: 10px;
	margin-left: 60px;
}

.fleft {
	float: left;
	margin-left: 48px;
}

#but_submit {
	height: 35px;
	width: 130px;
	border: #666666 solid 1px;
	font-size: 14px
}
-->
</style>

</head>

<body>
	<form name="form1" id="form1" method="post" enctype="multipart/form-data" action="action!toUpdatePerson.do">
		<table class="tbl" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="tbl_left"></td>
				<td class="tbl_middle">名人库--》名人精英--》修改名人精英</td>
				<td class="tbl_right"></td>
			</tr>
			<tr>
				<td class="left">
					<!--Table Left Side-->
				</td>
				<td bgcolor="#FF0000" class="context">
					<!--Content Start-->
					<ul class="context_ul">
					<li>
						<fieldset class="fdt">
							<legend>
								名人大中小肖像 (<span class="STYLE1"> 点击图片放大预览</span>)
							</legend>
							<a href="../${FAMOURS_PERSON_ENTITY.largePic}" class="fleft" target="_blank"> <img src="../${FAMOURS_PERSON_ENTITY.largePic}" width="325" height="205" border="2" /></a> <a href="../${FAMOURS_PERSON_ENTITY.middlePic}" class="fleft" target="_blank"> <img src="../${FAMOURS_PERSON_ENTITY.middlePic}" width="85" height="115" border="2" /></a> <a href="../${FAMOURS_PERSON_ENTITY.smallPic}" class="fleft" target="_blank"> <img src="../${FAMOURS_PERSON_ENTITY.smallPic}" width="65" height="75" border="2" /></a>
						</fieldset>
						</li>
						<li>
						<fieldset class="fdt">
							<legend>
								名人基本信息 (<span class="STYLE1"> 带 '</span><span class="red">*</span>'<span class="STYLE1">号的为必填字段</span> )
							</legend>
							<label>名人主题：</label><input name="subject" type="text" value="${FAMOURS_PERSON_ENTITY.subject}" size="50" maxlength="255" /> <span class="red">*</span> ( 内容只为示范,请按实际填写 )<br /> <label>中文名称：</label><input name="cnname" type="text" id="cnname" value="${FAMOURS_PERSON_ENTITY.cnname}" size="30" maxlength="80" /> <span class="red">*</span> ( 请填写人物中文名称 )<br /> <label>英文名称：</label><input name="enname" type="text" id="enname" value="${FAMOURS_PERSON_ENTITY.enname}" size="30" maxlength="80" /> <span class="red"> *</span> ( 请填写人物英文名称 )<br /> <label>杰出领域：</label><select name="industry">
								<option value="${FAMOURS_PERSON_ENTITY.industry}" selected="selected">${FAMOURS_PERSON_ENTITY.industry}</option>
								<option value="博奥领袖">博奥领袖</option>
								<option value="博奥精英">博奥精英</option>
								<option value="行业巨头">行业巨头</option>
								<option value="巾帼博奥">巾帼博奥</option>
							</select> <span class="red"> *</span> ( 请选班人物所属领域或行业 )<br />
						</fieldset>
						</li>
						<li>
							<fieldset class="fdt">
								<legend>
									名人肖像图 (<span class="STYLE1"> 请务必按照系统所指定的图片大选择,否则将会影响美观效果,单位为：PX像素</span><span class="STYLE1"></span> )
								</legend>
								<label>大图片：</label> <input name="large" type="file" size="32" /> <span class="red">*</span> ( 用于在首页展示[百强名人]<strong> 宽:760PX - 高:465PX</strong> ) <a href="../${FAMOURS_PERSON_ENTITY.largePic}" target="_blank">点击查看大图片</a><br /> <label>中图片：</label> <input name="middle" type="file" id="middle" size="32" /> <span class="red">*</span> ( 用于在名人库与首页[跑马灯] <strong>宽:85PX - 高:115PX</strong>) <a href="../${FAMOURS_PERSON_ENTITY.middlePic}" target="_blank">点击查看中图片</a><br /> <label>小图片：</label> <input name="small" type="file" id="small" size="32" /> <span class="red"> * </span>( 人物小图像[预览图] <strong>宽:65PX - 高:75PX</strong>) <a href="../${FAMOURS_PERSON_ENTITY.smallPic}" target="_blank">点击查看小图片</a><br />
							</fieldset>
							<br />
						</li>
						<li>
							<fieldset class="fdt">
								<legend>
									所在地区信息 ( <span class="STYLE1">请务必按规范填写,以便系统能统一识别</span> )
								</legend>
								<label>所在地区：</label> <input name="region" type="text" id="region" value="${FAMOURS_PERSON_ENTITY.region}" size="20" maxlength="60" /> ( 请填写所在区域 )<br /> <label>籍贯信息：</label> <select id="country" name="country">
									<option value="中国" selected="selected">中国</option>
									<option value="其它">其它</option>
								</select>&nbsp;&nbsp; 省份：<select id="province" name="state" onchange="select();"></select>&nbsp;&nbsp; 城市：<select id="city" name="city" onchange="selectCity();"></select>&nbsp;&nbsp;( 请选择籍贯地区信息 )<br />
							</fieldset>
							<br />
						</li>
						<li>
							<fieldset class="fdt">
								<legend>
									详细内容 ( <span class="STYLE1">名人的详细信息</span> )
								</legend>
								<textarea name="context" cols="80" rows="20">${FAMOURS_PERSON_ENTITY.context}</textarea>
								<ck:replace replace="context" basePath="../ckeditor/"></ck:replace>
							</fieldset>
							<br />
						</li>
						<li>
							<fieldset class="fdt">
								<legend>
									搜索关键词( <span class="STYLE1">可供搜索用,多个请用‘,’(逗号)分开</span> )
								</legend>
								<label>关键词：</label><input name="tags" type="text" size="30" value="${FAMOURS_PERSON_ENTITY.tags}" maxlength="80" /> <span class="red"> *</span>( 关键能够有利于用户以及系统搜索 )
							</fieldset>
							<br />
						</li>
						<li>
							<fieldset class="fdt">
								<legend>
									所属语种( <span class="STYLE1">中文/英文 默认为中文数据</span> )
								</legend>

								<c:if test='${FAMOURS_PERSON_ENTITY.encoding=="cn"}'>
									<label>中文</label>
									<input type="radio" name="encoding" value="cn" checked="checked" />
									<label>英文</label>
									<input type="radio" name="encoding" value="en" />
								</c:if>

								<c:if test='${FAMOURS_PERSON_ENTITY.encoding=="en"}'>
									<label>中文</label>
									<input type="radio" name="encoding" value="cn" />
									<label>英文</label>
									<input type="radio" name="encoding" value="en" checked="checked" />
								</c:if>

								<span class="red">*</span> ( 决定当前数据是属于<strong>中文/英文</strong>下的条目 )
							</fieldset>
							<br />
						</li>
						<li class="bottom"><input type="button" name="but_submit" id="but_submit" onclick="sign_submit()" value="提交保存" /> &nbsp;&nbsp;&nbsp; <a style="margin-left:50px;" href="action!toPerson.do">取消并返回</a></li>
						<li><input type="hidden" name="category" value="${FAMOURS_PERSON_ENTITY.category}" /> <input type="hidden" name="isUser" value="${FAMOURS_PERSON_ENTITY.isUser}" /> <input type="hidden" name="userId" value="${FAMOURS_PERSON_ENTITY.userId}" /> <input type="hidden" name="allowReply" value="${FAMOURS_PERSON_ENTITY.allowReply}" /> <input type="hidden" name="clicks" value="${FAMOURS_PERSON_ENTITY.clicks}" /> <input type="hidden" name="supports" value="${FAMOURS_PERSON_ENTITY.supports}" /> <input type="hidden" name="comments" value="${FAMOURS_PERSON_ENTITY.comments}" /> <input type="hidden" name="id" value="${FAMOURS_PERSON_ENTITY.id}" /></li>
					</ul> <!--Content End-->
				</td>
				<td class="right">
					<!--Table Right Side-->
				</td>
			</tr>
			<tr>
				<td class="tbl_but_left"><img src="images/buttom_left2.gif" /></td>
				<td class="tbl_but_middle"><img src="images/buttom_bgs.gif" /></td>
				<td class="tbl_but_right"><img src="images/buttom_right2.gif" /></td>
			</tr>
		</table>
	</form>

	<script type="text/javascript">
	var where = new Array(35); 
	function comefrom(loca,locacity) { this.loca = loca; this.locacity = locacity; } 
	//where[0]= new comefrom("请选择省份名","请选择城市名");
	where[0]= new comefrom("湖南省","娄底市");
	where[1] = new comefrom("北京","东城|西城|崇文|宣武|朝阳|丰台|石景山|海淀|门头沟|房山|通州|顺义|昌平|大兴|平谷|怀柔|密云|延庆"); 
	where[2] = new comefrom("上海","黄浦|卢湾|徐汇|长宁|静安|普陀|闸北|虹口|杨浦|闵行|宝山|嘉定|浦东|金山|松江|青浦|南汇|奉贤|崇明"); 
	where[3] = new comefrom("天津","和平|东丽|河东|西青|河西|津南|南开|北辰|河北|武清|红挢|塘沽|汉沽|大港|宁河|静海|宝坻|蓟县"); 
	where[4] = new comefrom("重庆","万州|涪陵|渝中|大渡口|江北|沙坪坝|九龙坡|南岸|北碚|万盛|双挢|渝北|巴南|黔江|长寿|綦江|潼南|铜梁|大足|荣昌|壁山|梁平|城口|丰都|垫江|武隆|忠县|开县|云阳|奉节|巫山|巫溪|石柱|秀山|酉阳|彭水|江津|合川|永川|南川"); 
	where[5] = new comefrom("河北","石家庄|邯郸|邢台|保定|张家口|承德|廊坊|唐山|秦皇岛|沧州|衡水"); 
	where[6] = new comefrom("山西","太原|大同|阳泉|长治|晋城|朔州|吕梁|忻州|晋中|临汾|运城"); 
	where[7] = new comefrom("内蒙古","呼和浩特|包头|乌海|赤峰|呼伦贝尔盟|阿拉善盟|哲里木盟|兴安盟|乌兰察布盟|锡林郭勒盟|巴彦淖尔盟|伊克昭盟"); 
	where[8] = new comefrom("辽宁","沈阳|大连|鞍山|抚顺|本溪|丹东|锦州|营口|阜新|辽阳|盘锦|铁岭|朝阳|葫芦岛"); 
	where[9] = new comefrom("吉林","长春|吉林|四平|辽源|通化|白山|松原|白城|延边"); 
	where[10] = new comefrom("黑龙江","哈尔滨|齐齐哈尔|牡丹江|佳木斯|大庆|绥化|鹤岗|鸡西|黑河|双鸭山|伊春|七台河|大兴安岭"); 
	where[11] = new comefrom("江苏","南京|镇江|苏州|南通|扬州|盐城|徐州|连云港|常州|无锡|宿迁|泰州|淮安"); 
	where[12] = new comefrom("浙江","杭州|宁波|温州|嘉兴|湖州|绍兴|金华|衢州|舟山|台州|丽水"); 
	where[13] = new comefrom("安徽","合肥|芜湖|蚌埠|马鞍山|淮北|铜陵|安庆|黄山|滁州|宿州|池州|淮南|巢湖|阜阳|六安|宣城|亳州"); 
	where[14] = new comefrom("福建","福州|厦门|莆田|三明|泉州|漳州|南平|龙岩|宁德"); 
	where[15] = new comefrom("江西","南昌市|景德镇|九江|鹰潭|萍乡|新馀|赣州|吉安|宜春|抚州|上饶"); 
	where[16] = new comefrom("山东","济南|青岛|淄博|枣庄|东营|烟台|潍坊|济宁|泰安|威海|日照|莱芜|临沂|德州|聊城|滨州|菏泽"); 
	where[17] = new comefrom("河南","郑州|开封|洛阳|平顶山|安阳|鹤壁|新乡|焦作|濮阳|许昌|漯河|三门峡|南阳|商丘|信阳|周口|驻马店|济源"); 
	where[18] = new comefrom("湖北","武汉|宜昌|荆州|襄樊|黄石|荆门|黄冈|十堰|恩施|潜江|天门|仙桃|随州|咸宁|孝感|鄂州");
	where[19] = new comefrom("湖南","长沙|常德|株洲|湘潭|衡阳|岳阳|邵阳|益阳|娄底|怀化|郴州|永州|湘西|张家界"); 
	where[20] = new comefrom("广东","广州|深圳|珠海|汕头|东莞|中山|佛山|韶关|江门|湛江|茂名|肇庆|惠州|梅州|汕尾|河源|阳江|清远|潮州|揭阳|云浮"); 
	where[21] = new comefrom("广西","南宁|柳州|桂林|梧州|北海|防城港|钦州|贵港|玉林|南宁地区|柳州地区|贺州|百色|河池"); 
	where[22] = new comefrom("海南","海口|三亚"); 
	where[23] = new comefrom("四川","成都|绵阳|德阳|自贡|攀枝花|广元|内江|乐山|南充|宜宾|广安|达川|雅安|眉山|甘孜|凉山|泸州"); 
	where[24] = new comefrom("贵州","贵阳|六盘水|遵义|安顺|铜仁|黔西南|毕节|黔东南|黔南"); 
	where[25] = new comefrom("云南","昆明|大理|曲靖|玉溪|昭通|楚雄|红河|文山|思茅|西双版纳|保山|德宏|丽江|怒江|迪庆|临沧");
	where[26] = new comefrom("西藏","拉萨|日喀则|山南|林芝|昌都|阿里|那曲"); 
	where[27] = new comefrom("陕西","西安|宝鸡|咸阳|铜川|渭南|延安|榆林|汉中|安康|商洛"); 
	where[28] = new comefrom("甘肃","兰州|嘉峪关|金昌|白银|天水|酒泉|张掖|武威|定西|陇南|平凉|庆阳|临夏|甘南"); 
	where[29] = new comefrom("宁夏","银川|石嘴山|吴忠|固原"); 
	where[30] = new comefrom("青海","西宁|海东|海南|海北|黄南|玉树|果洛|海西"); 
	where[31] = new comefrom("新疆","乌鲁木齐|石河子|克拉玛依|伊犁|巴音郭勒|昌吉|克孜勒苏柯尔克孜|博尔塔拉|吐鲁番|哈密|喀什|和田|阿克苏"); 
	where[32] = new comefrom("香港",""); 
	where[33] = new comefrom("澳门",""); 
	where[34] = new comefrom("台湾","|台北|高雄|台中|台南|屏东|南投|云林|新竹|彰化|苗栗|嘉义|花莲|桃园|宜兰|基隆|台东|金门|马祖|澎湖"); 
	where[35] = new comefrom("其它","|北美洲|南美洲|亚洲|非洲|欧洲|大洋洲"); 
	function $$(p){return document.getElementById(p);}
	
	function select() {
	with($$('province')) { var loca2 = options[selectedIndex].value; }
	for(i = 0;i < where.length;i ++) {
	if (where[i].loca == loca2) {
	loca3 = (where[i].locacity).split("|");
	for(j = 0;j < loca3.length;j++) { with($$('city')) { length = loca3.length; options[j].text = loca3[j]; options[j].value = loca3[j];
	var loca4=options[selectedIndex].value;if(length>1){selectedIndex=1;}}}
	break;
	}}
	}
	
	function selectCity() {
	with($$('province')) { var loca2 = options[selectedIndex].value; }
	for(i = 0;i < where.length;i ++) {
	if (where[i].loca == loca2) {
	loca3 = (where[i].locacity).split("|");
	for(j = 0;j < loca3.length;j++) { with($$('city')) { length = loca3.length; options[j].text = loca3[j]; options[j].value = loca3[j];
	var loca4=options[selectedIndex].value;}}
	break;
	}}
	}
	function getResult(city,area) {
	
	with($$('province')) {
	length = where.length;
	for(k=0;k<where.length;k++) { options[k].text = where[k].loca; options[k].value = where[k].loca; }
	options[selectedIndex].text = where[0].loca; options[selectedIndex].value = where[0].loca;
	}
	with($$('city')) {
	loca3 = (where[0].locacity).split("|");
	length = loca3.length;
	for(l=0;l<length;l++) { options[l].text = loca3[l]; options[l].value = loca3[l]; }
	options[selectedIndex].text = loca3[0]; options[selectedIndex].value = loca3[0];
	}
	
	if(city.length<=0) return;
	for(i = 0;i < where.length;i++){
			//alert(where.length);
			if(where[i].loca==city){
				$$('province').options[i].selected=true;
				loca4 = (where[i].locacity).split("|");
				flag=false;
				for(j=0;j<loca4.length;j++){
					//添加至city下拉中
					with($$('city')) {length = loca4.length; options[j].text = loca4[j]; options[j].value = loca4[j];}
					if(area.length>0){if(loca4[j]==area){$$('city').options[j].selected=true;flag=true;}}
				}
				if(!flag&&$$('city').options.length>=1){$$('city').selectedIndex=1;}
			}
		}
	}
</script>

	<script>
	getResult("广东","潮州");
</script>

</body>
</html>
