$(document).ready(function() {
	document.onkeydown = function(event){
     	var e = event || window.event || arguments.callee.caller.arguments[0];
     	 if(e && e.keyCode == 13){   
     	 	doLogin();
     	  }
   }  ;
	var isAutoLogin = getCookie("youkang.proxy.is_auto_login");

	if (isAutoLogin == undefined) {
		addCookie("youkang.proxy.is_auto_login", false, 120);
	} else if (isAutoLogin == "false") {
		delCookie("youkang.proxy.ykAgent");
	} else {

		document.getElementById("is_auto_login").checked = true;
		var username = getCookie("youkang.proxy.username");
		document.getElementById("username").value = username;
		if (document.getElementById("error_message").innerHTML != "") {
			delCookie("youkang.proxy.ykAgent");
			document.getElementById("password").value="";
		} else {
			var password = getCookie("youkang.proxy.ykAgent");
			document.getElementById("password").value = password;
		}
	}

})


// 默认保存密码5天
function autoSave() {
	if (document.getElementById("is_auto_login").checked) {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		addCookie("youkang.proxy.is_auto_login", true, 120);
		addCookie("youkang.proxy.username", username, 120);
		addCookie("youkang.proxy.ykAgent", password, 120);
	} else {
		delCookie("youkang.proxy.ykAgent");
	}
}

function addCookie(objName, objValue, objHours) {// 添加cookie
	var str = objName + "=" + escape(objValue);
	if (objHours > 0) {// 为0时不设定过期时间，浏览器关闭时cookie自动消失
		var date = new Date();
		var ms = objHours * 3600 * 1000;
		date.setTime(date.getTime() + ms);
		str += "; expires=" + date.toGMTString();
	}
	document.cookie = str;
}

function getCookie(objName) {// 获取指定名称的cookie的值
	var arrStr = document.cookie.split("; ");
	for ( var i = 0; i < arrStr.length; i++) {
		var temp = arrStr[i].split("=");
		if (temp[0] == objName)
			return unescape(temp[1]);
	}
}

function delCookie(name) {// 为了删除指定名称的cookie，可以将其过期时间设定为一个过去的时间
	var date = new Date();
	date.setTime(date.getTime() - 10000);
	document.cookie = name + "=a; expires=" + date.toGMTString();
}
