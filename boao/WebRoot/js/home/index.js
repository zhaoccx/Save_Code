// JavaScript Document
function show_span(n,obj){
	if(obj!=null){
		obj.className = 'current';
	}
	if(document.getElementById("show_sp"+n)!=null)
	{
		document.getElementById("show_sp"+n).style.display = "";
	}
	if(document.getElementById("xin"+n)!=null)
	{
		document.getElementById("xin"+n).style.display = "";
	}
	if(document.getElementById("show_live"+n)!=null)
	{
		document.getElementById("show_live"+n).style.display = "";
	}
}
function hid_span(m,obj){
	if(obj!=null){
		obj.className = '';
	}
	if(document.getElementById("show_sp"+m)!=null)
	{
		document.getElementById("show_sp"+m).style.display = "none";
	}
	if(document.getElementById("xin"+m)!=null)
	{
		document.getElementById("xin"+m).style.display = "none";
	}
	if(document.getElementById("show_live"+m)!=null)
	{
		document.getElementById("show_live"+m).style.display = "none";
	}
}
function show_bg(k){
	document.getElementById("li_bg"+k).className ="current" ;
	}
function hid_bg(k){
	document.getElementById("li_bg"+k).className="" ;
	}
 function showDIV(menuname,hover,n) //定义函数
 {
   for(i=1; i<=n; i++) //通过FOR循环制造可循环ID
   {
    var menuli=document.getElementById(menuname+i); //获取menu对象ID并赋值给menuli
	 var content=document.getElementById("con_"+menuname+"_"+i);  //获取content对象ID并赋值给menuli(隐藏显示部分)
	 menuli.className=i==hover?"current":""; 
	 //三元运算符，相当于if,这句话的整句意思就是先将I赋值给menuli.className，然后与hover变量比较看是否完全相等，是就返回true（即current），不是，则返回false（空值）。menuli.className为current即为当前显示样式，为空则不表现
	 content.style.display=i==hover?"block":"none";
	 // 同上，当i==hover时，对象display:block;否则display:none;
   }
   if(hover==2&&menuname=='a_Stab')
   {
	   $(".jCarouselLite2").width(942).css({'margin-left':'7px','height':'70px'});
   }
 }


//faq
function Jfaqsearch(fURL, o)
{
	var s = $("#sfaq").val();
	switch (s)  {
		case '请输入关键字':
		case '':
			if (o == 't') {
				window.open(fURL);
			}
			break;
		default:
			if (o == 's') {
				window.open(fURL + 'S_URL' + s);
			} else if (o == 't') {
				window.open(fURL + 'T_URL' + s);
			}
			break;
	}
}

