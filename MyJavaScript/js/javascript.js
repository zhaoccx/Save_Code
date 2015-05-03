function getArea() {
	debugger;
	var r = 10;
	var sqrR = r * r;
	var s = Math.PI * sqrR;
	alert("半径为什么" + s);
	document.write(document.lastModified);
}
this.fac = function getArea() {
	debugger;
//	var r = null;
//	if (typeof (r) == "object") {
//
//		alert("半径为什么" + 'aaaaaaaaaaaa');
//	} else {
//		alert("半径为什么fff" + r);
//	}
//	alert(r);
	var x = 025;
	var y = 9;
	var z = x|y;
	alert(z);
	sumAll(1,'2',3);
	sumAll(100,299);
//	document.write(document.lastModified);
	var dates = new objcd(123, 456, 789);
	for ( var em in dates) {
		document.write(em + ":" + dates[em] + '<br>');
	}
};

function objcd(a,b,c) {
	this.a = a;
	this.b = b;
	this.c = c;
}

function sumAll() {
	var argsAll = sumAll.arguments.length;
	var sum = 0;
	for ( var i = 0; i < argsAll; i++) {
		sum += sumAll.arguments[i];
		
	}
	document.write("Sum is " + sum + "<br>");
	
}

function getTest() {
	var s = new Date();
	alert(s.getTime());
	this.fac = function() {
		var r = 10;
		var sqrR = r * r;
		var s = Math.PI * sqrR;
		alert("半径为什么" + s);
	};
}

function getMytest() {
	var acd = new Date();
	alert(acd.getUTCFullYear());
}

var errorMessage = "";
function checkRequired(s,label){
	if(""==s){
		errorMessage += '请输入"' + label + '".\n';
	}
	
}

function doValidate() {
	errorMessage = "";
	var sUsername = document.userForm.username.value;
	var sPassword = document.userForm.password.value;
	
	checkRequired(sUsername, "用户名中的");
	checkRequired(sPassword, "密码的中");
	
	if("" != errorMessage){
		alert(errorMessage);
		return false;
	}else{
		return true;
	}
	
}

function doSubmit(){
	debugger;
	if(!doValidate()){
		return;
	}
	alert("成功");
}
