/*
 *
 * ����LIGHTNING(LNSTUDIO)����Ƽ�������
 * Common JavaScript Of CSJZ.Administrator BackGround Manager;
 * Created by LIGHTNING STUDIO/Ray;
 * 
 */

//List by On Mouse Over
function onMouse(val) {
	val.bgColor = "#DFEFFF";
}

// List by On Mouse Out
function onMouseOut(val) {
	val.bgColor = "";
}

// sendRedDirect
function SendRedirect(url) {
	location.replace(url);
}

function mousOver(dom) {
	document.getElementById(dom.id).style.cssText = "width:680px;height:40px;background-color:#ECF2F9;";
}

function mousOut(dom) {
	document.getElementById(dom.id).style.cssText = "width:680px;height:40px;";
}

// Submit the Form
function sign_submit() {
	document.form1.but_submit.value = '提交中,请稍后..';
	document.form1.but_submit.disabled = true;
	document.form1.submit();
}

function goPage(num, sum) {
	if (num < 1) {
		alert("已经是第一页了!");
		return;
	}
	var sum = parseInt(document.getElementById("sum").value);
	if (num > sum) {
		alert("已经是最后一页了");
		return;
	}
	document.getElementById("num").value = num;
	document.getElementById("pageForm").submit();
}
/**
 * 清除字符串中的标签
 * 
 * @param str
 * @returns
 */
function cleanTag(str) {
	return str.replace(/<[^>].*?>/g, "");
}
/**
 * 截串
 * 
 * @param str
 * @param length
 *            长度
 * @param suffix
 *            如果超过长度，后面跟的字符串
 */
function cutStr(str, length, suffix) {
	if (str.length < length)
		return str;
	else
		return str.substring(0, length - 1) + suffix;
}