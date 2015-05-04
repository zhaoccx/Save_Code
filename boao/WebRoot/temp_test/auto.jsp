<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>搜索词自动完成</title>
<script type="text/javascript" src="js/jquery-1.6.3.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
<script type="text/javascript">
var stockInfoJson = [
	{ name: "深发展A", code: "000001",spell:"sfza" },
	{ name: "万科A", code: "000002",spell:"wka"},
	{ name: "ST 国 农", code: "000004",spell:"stgn" },
	{ name: "世纪星源", code: "000005",spell:"sjxy" },
	{ name: "深振业A", code: "000006" ,spell:"szya"},
	{ name: "ST 达 声", code: "000007" ,spell:"stds"},
	{ name: "ST宝利来", code: "000008" ,spell:"stbll"},
	{ name: "中国宝安", code: "000009" ,spell:"zgba"},
	{ name: "S ST华新", code: "000010" ,spell:"ssthx"},
	{ name: "山航B", code: "200152" ,spell:"shb"},
	{ name: "*ST帝贤B", code: "200160" ,spell:"stdxb"},
	{ name: "雷伊B", code: "200168" ,spell:"lyb"},
	{ name: "宝石B", code: "200413",spell:"bsb" },
	{ name: "小天鹅B", code: "200418" ,spell:"xteb"},
	{ name: "粤高速B", code: "200429" ,spell:"agsb"},
	{ name: "宁通信B", code: "200468" ,spell:"ltxb"},
	{ name: "晨鸣B", code: "200488" ,spell:"cmb"},
	{ name: "珠江B", code: "200505" ,spell:"zjb"},
	{ name: "闽灿坤B", code: "200512" ,spell:"mskb"},
	{ name: "华电国际", code: "600027" ,spell:"hdgj"}
];

$(function(){
	$("#suggest1").autocomplete("getAddr", {
		dataType:"json",
		minChars: 1,
		matchCase:false,//不区分大小写
		autoFill: false,
		max: 10,
		formatItem: function(row, i, max,term) {
			 alert(row); 
			var v = $("#suggest1").val();		
			return  row.data + " (" + row.value + ")";
			if(row.value.indexOf(v) == 0 || row.result.indexOf(v)==0)
			{
				return  row.data + " (" + row.value + ")";
			}
			else
				return false;
		},
		/* 	parse: function(data) {
			var jsons=[];
			for(var i=0;i<data.length;i++){
				jsons[i]=$.toJSON(data[i]);
			}
			return jsons;
            return $.map(eval(data), function(row) {
                return {
                 result: row.result,
                 username: row.username,    //此处无需把全部列列出来，只是两个关键列
                 password: row.password 
               } 
         }, */
		formatMatch: function(row, i, max) {
			return row.data + " (" + row.value+")";
		},
		formatResult: function(row) {
			return row.value;
		},
		reasultSearch:function(row,v)//本场数据自定义查询语法 注意这是我自己新加的事件
		{
			//自定义在value或result中匹配
			if(row.data.value.indexOf(v) == 0 || row.data.result.indexOf(v) == 0)
			{
				return row;
			}
			else
				return false;			
		}
	});
});

</script>
</head>
<body>
	<h1>jquery.autocomplete.js 扩展自定义查询方法</h1>
	<p>
		楚旋--博客园<a href='http://eflylab.cnblogs.com' target='_blank'>http://eflylab.cnblogs.com</a> 本文链接 <a href='http://www.cnblogs.com/eflylab/archive/2009/09/18/1569043.html' target='_blank'>jquery.autocomplete.js 插件的自定义搜索规则</a>
	</p>
	<p>
		<label>StockInfo(local):</label> <input type="text" id="suggest1" />
	</p>
	<p>
		<img style="CURSOR: pointer" onclick="javascript:window.open('http://b.qq.com/webc.htm?new=0&sid=820073292&o=localhost&q=7', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');" border="0" SRC=http://wpa.qq.com/pa?p=1:820073292:1 alt="尼玛，Q我"> <a href="tencent://message/?uin=820073292&Uin=820073292&Site=QQ咨询&Menu=yes" target="_blank"><img src="/templets/default/images/qq.jpg" border="0" width="85" height="30" />QQ在线咨询</a>
	</p>
</body>

</html>