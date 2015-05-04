/* --- Swazz Javascript Calendar ---
/* --- v 1.0 3rd November 2006
By Oliver Bryant
http://calendar.swazz.org */

function Fa(a, b)
{
   var c = 0;
   while(a)
   {
      c += a[b];
      a = a.offsetParent
   }
   return c
}

function getObj(objID)
{
    if (document.getElementById) {return document.getElementById(objID);}
    else if (document.all) {return document.all[objID];}
    else if (document.layers) {return document.layers[objID];}
}

function checkClick(e) {
	e?evt=e:evt=event;
	CSE=evt.target?evt.target:evt.srcElement;
	if (getObj('fc'))
		if (!isChild(CSE,getObj('fc')))
			getObj('fc').style.display='none';
}

function isChild(s,d) {
	while(s) {
		if (s==d) 
			return true;
		s=s.parentNode;
	}
	return false;
}

function Left(obj)
{
	var curleft = 0;
	if (obj.offsetParent)
	{
		while (obj.offsetParent)
		{
			curleft += obj.offsetLeft
			obj = obj.offsetParent;
		}
	}
	else if (obj.x)
		curleft += obj.x;
	return curleft;
}

function Top(obj)
{
	var curtop = 0;
	if (obj.offsetParent)
	{
		while (obj.offsetParent)
		{
			curtop += obj.offsetTop
			obj = obj.offsetParent;
		}
	}
	else if (obj.y)
		curtop += obj.y;
	return curtop;
}

document.write('<table id="fc" style="position:absolute;border-collapse:collapse;background:#FFFFFF;border:1px solid #aaa;display:none" cellpadding=2>');
document.write('<tr><td style="cursor:pointer; font-size:11px;" onclick="csubm()">&lt;&lt;</td><td colspan=5 id="mns" align="center" style="font:bold 12px"></td><td align="right" style="cursor:pointer; font-size:11px;" onclick="caddm()">&gt;&gt;</td></tr>');
document.write('<tr style="background:#ABABAB;font-size:12px"><td align=center>日</td><td align=center>一</td><td align=center>二</td><td align=center>三</td><td align=center>四</td><td align=center>五</td><td align=center>六</td></tr>');
for(var kk=1;kk<=6;kk++) {
	document.write('<tr>');
	for(var tt=1;tt<=7;tt++) {
		num=7 * (kk-1) - (-tt);
		document.write('<td id="v' + num + '" style="width:20px;height:18px">&nbsp;</td>');
	}
	document.write('</tr>');
}
document.write('</table>');

document.all?document.attachEvent('onclick',checkClick):document.addEventListener('click',checkClick,false);


// Calendar script
var now = new Date;
var sccm=now.getMonth();
var sccy=now.getFullYear();
var ccm=now.getMonth();
var ccy=now.getFullYear();

var updobj;
function lcs(ielem) {
	updobj=ielem;
	getObj('fc').style.left = Fa(ielem, "offsetLeft") + "px";
	getObj('fc').style.top = Fa(ielem, "offsetTop") + ielem.offsetHeight + 1 + "px";

	getObj('fc').style.display='';
	
	// First check date is valid
	curdt=ielem.value;
	curdtarr=curdt.split('-');
	isdt=true;
	for(var k=0;k<curdtarr.length;k++) {
		if (isNaN(curdtarr[k]))
			isdt=false;
	}
	if (isdt&(curdtarr.length==3)) {
		ccm=curdtarr[1]-1;
		ccy=curdtarr[0];
		prepcalendar(curdtarr[2],ccm,ccy);
	}
	
}

function evtTgt(e)
{
	var el;
	if(e.target)el=e.target;
	else if(e.srcElement)el=e.srcElement;
	if(el.nodeType==3)el=el.parentNode; // defeat Safari bug
	return el;
}
function EvtObj(e){if(!e)e=window.event;return e;}
function cs_over(e) {
	evtTgt(EvtObj(e)).style.background='#FFCC66';
}
function cs_out(e) {
	evtTgt(EvtObj(e)).style.background='#99BBFF';
}
function cs_click(e) {
	updobj.value=calvalarr[evtTgt(EvtObj(e)).id.substring(1,evtTgt(EvtObj(e)).id.length)];
	getObj('fc').style.display='none';
	updobj.focus();
	updobj.blur();
}

var mn=new Array('1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月');
var mnn=new Array('31','28','31','30','31','30','31','31','30','31','30','31');
var mnl=new Array('31','29','31','30','31','30','31','31','30','31','30','31');
var calvalarr=new Array(42);

function f_cps(obj) {
	obj.style.background='#99BBFF';
	obj.style.font='10px Verdana';
	obj.style.color='#111';
	obj.style.textAlign='center';
	obj.style.textDecoration='none';
	obj.style.border='1px solid #6487AE';
	obj.style.cursor='pointer';
}

function f_cpps(obj) {
	obj.style.background='#99BBFF';
	obj.style.font='10px Verdana';
	obj.style.color='#999';
	obj.style.textAlign='center';
	obj.style.border='1px solid #6487AE';
	obj.style.cursor='default';
}

function f_hds(obj) {
	obj.style.background='#FFF799';
	obj.style.font='bold 10px Verdana';
	obj.style.color='#333333';
	obj.style.textAlign='center';
	obj.style.border='1px solid #6487AE';
	obj.style.cursor='pointer';
}

// day selected
function prepcalendar(hd,cm,cy) {
	now=new Date();
	sd=now.getDate();
	td=new Date();
	td.setDate(1);
	td.setFullYear(cy);
	td.setMonth(cm);
	cd=td.getDay();
	getObj('mns').innerHTML=cy +'年'+ mn[cm];
	marr=((cy%4)==0)?mnl:mnn;
	for(var d=1;d<=42;d++) {
		f_cps(getObj('v'+parseInt(d)));
		if ((d >= (cd -(-1))) && (d<=cd-(-marr[cm]))) {
			dip=((d-cd < sd)&&(cm==sccm)&&(cy==sccy));
			htd=((hd!='')&&(d-cd==hd));
			if (dip)
				f_cpps(getObj('v'+parseInt(d)));
			else if (htd)
				f_hds(getObj('v'+parseInt(d)));
			else
				f_cps(getObj('v'+parseInt(d)));

			getObj('v'+parseInt(d)).onmouseover=(dip)?null:cs_over;
			getObj('v'+parseInt(d)).onmouseout=(dip)?null:cs_out;
			getObj('v'+parseInt(d)).onclick=(dip)?null:cs_click;
			
			getObj('v'+parseInt(d)).innerHTML=d-cd;	
			calvalarr[d]=''+cy+'-'+(cm-(-1))+'-'+(d-cd);
		}
		else {
			getObj('v'+d).innerHTML='&nbsp;';
			getObj('v'+parseInt(d)).onmouseover=null;
			getObj('v'+parseInt(d)).onmouseout=null;
			getObj('v'+parseInt(d)).style.cursor='default';
			}
	}
}

prepcalendar('',ccm,ccy);

function caddm() {
	marr=((ccy%4)==0)?mnl:mnn;
	
	ccm+=1;
	if (ccm>=12) {
		ccm=0;
		ccy++;
	}
	cdayf();
	prepcalendar('',ccm,ccy);
}

function csubm() {
	marr=((ccy%4)==0)?mnl:mnn;
	
	ccm-=1;
	if (ccm<0) {
		ccm=11;
		ccy--;
	}
	cdayf();
	prepcalendar('',ccm,ccy);
}

function cdayf() {
if ((ccy>sccy)|((ccy==sccy)&&(ccm>=sccm)))
	return;
else {
	ccy=sccy;
	ccm=sccm;
	//cfd=scfd;
	}
}

function checkall(c,name)
{
  var a = document.getElementsByName(name);
  for(var i=0;i<a.length;i++)
  {
    if(c.checked)
    {
     a[i].checked=true;
    }
    else
    {
    a[i].checked=false;
    }
  }
}