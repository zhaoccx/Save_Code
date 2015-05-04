/**
 * 支付校验函数
 * User: jiaoxiaochuan
 * Date: 12-4-23
 * Time: 下午5:07
 */
function ntabs(tabObj,obj){
	var tabList = document.getElementById(tabObj).getElementsByTagName("li");
	for(i=0; i <tabList.length; i++)
	{
		if (tabList[i].id == obj)
		{
			document.getElementById("tab"+i).className = "selected";
			document.getElementById(tabObj+"_con"+i).style.display = "block";
		}else{
			document.getElementById("tab"+i).className = "";
			document.getElementById(tabObj+"_con"+i).style.display = "none";
		}
	}
}
//校验提交
function checkAndSubmitForYeepay(){
    if(!$("#yeeProtocol").attr('checked')) {
        alert('请阅读列表网账户余额服务协议，并点击同意服务协议');
        return false;
    }
    var money = $("#inputmoney").val();
    if (!checkInputMoney(money) || money<=0) {
        alert('请检查输入的充值金额');
        return false;
    }
    if ($("#yeeBankCode").val() =="") {
        alert("请选择支付银行");
        return false;
    }
    tipShowBox();
    return true;//$("#yeepayform").submit();
}
//选择银行Code
function changeBankCode(bank) {
    $("#yeeBankCode").val(bank);
    $("#otherbank").val('');
}
//选择其他银行code
function selectChangeForBank() {
    $("input[name=bank]").attr('checked', false);
    $("#yeeBankCode").val($("#otherbank").val());
}

//为兼容IE浏览器，注册事件
var i = 0;
function changeForBank(id) {
    i++;
    if (i <= 1) {
        $("#" + id).click();
    }
    i--;
}

//检测财付通盛付通输入金额是否合法
function checkAndSubmitForpay(moneyobj,protocol){
    var flag = $("#"+protocol).attr('checked');
    if(!flag) {
       alert('请阅读列表网账户余额服务协议，并点击同意服务协议');
       return false;
    }
    var money = $('#' + moneyobj).val();
    if (!checkInputMoney(money) || money<=0) {
        alert('请检查输入的充值金额');
        return false;
    }
    tipShowBox();
    return true;
}
//检测输入金额是否合法
function checkInputMoney(money){
    var reg=/^[1]?\d{1,4}\.\d{1,2}$|^[1]?\d{1,4}$/;
    return reg.test(money);
}
//手机充值卡选择面值
function selectMoney(money) {
    var rm = (money * 0.95).toFixed(1);
    $('#mobileMoney').val(rm);
    $('#rm').html(rm);
    $('#fee').html((money * 0.05).toFixed(1));
    return;
}
//手机充值卡提交校验
function checkForprotocol(protocol) {
    var flag = $("#"+protocol).attr('checked');
    if(!flag) {
       alert('请阅读列表网账户余额服务协议，并点击同意服务协议');
       return false;
    }
    tipShowBox();
    return true;
}

//提交时弹出遮罩层
function tipShowBox() {
    $('.btns').openDOMWindow({
	positionType:'centered',
	height:230,
	width:460,
	draggable:1,
    modal : 1,
	overlayOpacity:25,
    windowSourceID : '#rechargezhezhao'
});
    return;
}
function closedw() {
	$(this).closeDOMWindow({anchoredSelector:'#DOMWindow'});
    return false;
}
function finishedPayment() {
    var qstr = window.location.search;
    if (qstr) {
        window.location.href = location.protocol+"//"+location.host+"/my/pay/confirm.php?chid=" + getCookie('s_id');
    } else {
        window.location.href = location.protocol+"//"+location.host+"/my/recharge_record.php";
    }
    return false;
}
/*获取Cookie值*/
function getCookieVal(offset) {
	var endstr = document.cookie.indexOf(";", offset);
	if (endstr == -1) {
		endstr = document.cookie.length;
	}
	return decodeURI(document.cookie.substring(offset, endstr));
}
function getCookie(name) {
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg) {
			return getCookieVal(j);
		}
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0)
			break;
	}
	return;
}
$.formValidator.initConfig( { formID:"epayform",ajaxKeyOfObject:"recharge", wideWord:false,debug:false,submitOnce:false,
        onError:function(msg) {
            return false;
        }
    } );
$('#inputmoney').formValidator({ min:1, onFocus:"",onCorrect:"correct", onEmpty:"填写金额." }).functionValidator().functionValidator({
	fun:function(val){
		var patrn = /^[1]?\d{1,4}\.\d{1,2}$|^[1]?\d{1,4}$/;
		if ( val === "") {
			return "忘记填写金额啦!";
		} else if( val < 0.01) {
			return "充值金额不能小于0.01";
		} else if( val > 19999){
			return "充值金额不能大于19999";
		} else if( !patrn.test(val)){
			return "金额格式不正确,请确认.";
		} else {
			return true;
		}
	}
});
$('#shenginputmoney').formValidator({ min:1, onFocus:"",onCorrect:"correct", onEmpty:"填写金额." }).functionValidator().functionValidator({
	fun:function(val){
		var patrn = /^[1]?\d{1,4}\.\d{1,2}$|^[1]?\d{1,4}$/;
		if ( val === "") {
			return "忘记填写金额啦!";
		} else if( val < 0.01) {
			return "充值金额不能小于0.01";
		} else if( val > 19999){
			return "充值金额不能大于19999";
		} else if( !patrn.test(val)){
			return "金额格式不正确,请确认.";
		} else {
			return true;
		}
	}
});
$('#tenpayinputmoney').formValidator({ min:1, onFocus:"",onCorrect:"correct", onEmpty:"填写金额." }).functionValidator().functionValidator({
	fun:function(val){
		var patrn = /^[1]?\d{1,4}\.\d{1,2}$|^[1]?\d{1,4}$/;
		if ( val === "") {
			return "忘记填写金额啦!";
		} else if( val < 0.01) {
			return "充值金额不能小于0.01";
		} else if( val > 19999){
			return "充值金额不能大于19999";
		} else if( !patrn.test(val)){
			return "金额格式不正确,请确认.";
		} else {
			return true;
		}
	}
});
$('#ypayinputmoney').formValidator({ min:1, onFocus:"",onCorrect:"correct", onEmpty:"填写金额." }).functionValidator().functionValidator({
	fun:function(val){
		var patrn = /^[1]?\d{1,4}\.\d{1,2}$|^[1]?\d{1,4}$/;
		if ( val === "") {
			return "忘记填写金额啦!";
		} else if( val < 0.01) {
			return "充值金额不能小于0.01";
		} else if( val > 19999){
			return "充值金额不能大于19999";
		} else if( !patrn.test(val)){
			return "金额格式不正确,请确认.";
		} else {
			return true;
		}
	}
});
$('#alipayinputmoney').formValidator({ min:1, onFocus:"",onCorrect:"correct", onEmpty:"填写金额." }).functionValidator().functionValidator({
	fun:function(val){
		var patrn = /^[1]?\d{1,4}\.\d{1,2}$|^[1]?\d{1,4}$/;
		if ( val === "") {
			return "忘记填写金额啦!";
		} else if( val < 0.01) {
			return "充值金额不能小于0.01";
		} else if( val > 19999){
			return "充值金额不能大于19999";
		} else if( !patrn.test(val)){
			return "金额格式不正确,请确认.";
		} else {
			return true;
		}
	}
});
