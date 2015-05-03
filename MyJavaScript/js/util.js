var MODAL_DIVIDER_KEY = "|";
var PIMS_DEFAULT_DATE_TYPE = "MM/dd/yyyy";
var SMALL_FLOAT_VALUE = 0.001;

function errorMessage(s) {
  alert(s);
}

function infoMessage(s) {
  alert(s);
}

function donothing() {}
function doNothing() {}

function quotes(s) {
  return '"'+s+'"';
}

function trim(inputString) {
   // Removes leading and trailing spaces from the passed string. Also removes
   // consecutive spaces and replaces it with one space. If something besides
   // a string is passed in (null, custom object, etc.) then return the input.
   if (typeof inputString != "string") { return inputString; }
   var retValue = inputString;
   var ch = retValue.substring(0, 1);
   while (ch == " ") { // Check for spaces at the beginning of the string
      retValue = retValue.substring(1, retValue.length);
      ch = retValue.substring(0, 1);
   }
   ch = retValue.substring(retValue.length-1, retValue.length);
   while (ch == " ") { // Check for spaces at the end of the string
      retValue = retValue.substring(0, retValue.length-1);
      ch = retValue.substring(retValue.length-1, retValue.length);
   }
   while (retValue.indexOf("  ") != -1) { // Note that there are two spaces in the string - look for multiple spaces within the string
      retValue = retValue.substring(0, retValue.indexOf("  ")) + retValue.substring(retValue.indexOf("  ")+1, retValue.length); // Again, there are two spaces in each of the strings
   }
   return retValue; // Return the trimmed string back to the user
}

function confirmation(msg) {
	var agree=confirm(msg);
	if (agree)
	  return true;
	else
	  return false;
}

function replaceStr(inStr,oldStr,newStr) {
    // This method is used to match a specifed regular expression(OldStr) against a string(inStr)
    // and replace any match with a new substring(newStr).
  var ret = inStr;
  while (ret.indexOf(oldStr)>-1) {
      ret = ret.replace(oldStr,newStr);
  }
  return ret;
}

function removeStr(inStr) {
  var ret = inStr;
  for (var i=1; i<arguments.length; i++) {
    ret = replaceStr(ret,arguments[i],'');
  }
  return ret;
}

/****************** These are for Combo functions ******************/
// check if the text on the textBox is in list,
// if found, return listIndex;
// if not found, return -1;
function onTheList(panelId,lstId,textId, form) {
  if (form==null || form=="") form="bodyForm";
  var f = 'document.'+form;
  var lstSize = eval(f + '.' + lstId + '.options.length');
  var textContent = trim(eval(f + '.' + textId  + '.value'));
  var foundIndex = -1;
  if (lstSize>0) {
    for (var i=0; i<lstSize; i++) {
      var lstText = trim(eval(f + '.' + lstId + '.options[' + i + '].text'));
      if (textContent==lstText) {
          foundIndex=i;
      }
    }
  }
  return foundIndex;
}

function hilightList(panelId,lstId,textId, form) {
  if (form==null || form=="") form="bodyForm";
  var f = 'document.'+form;
  var foundIndex = onTheList(panelId,lstId,textId, form);
  eval(f + '.' + lstId + '.selectedIndex = ' + foundIndex);
}

function blurTextBox(panelId,lstId,textId, form) {
  if (form==null || form=="") form="bodyForm";
  var f = 'document.'+form;
	if (onTheList(panelId,lstId,textId, form)==-1) {
    	eval( f + '.'+ lstId + '.selectedIndex=-1');
	}
}

function keyDownTextBox(panelId,lstId,textId, form) {
  if (event.keyCode==40) {
      openComboList(panelId,lstId,textId, form);
  }
}

function keyDownList(panelId,lstId,textId,form) {
  if (event.keyCode==13) {
      closeComboList(panelId,lstId,textId, form);
  }
}

function dbClickList(panelId,lstId,textId, form) {
  closeComboList(panelId,lstId,textId, form);
}

// open the select list and focus on it
function openComboList(panelId,lstId,textId, form) {
  if (form==null || form=="") form="bodyForm";
  var f = 'document.'+form;
  hilightList(panelId,lstId,textId, form);
  show(panelId);
  eval( f + '.'+ lstId + '.focus()');
}

// close the select list and focus on text box
function closeComboList(panelId,lstId,textId, form) {
  if (form==null || form=="") form="bodyForm";
  var f = 'document.'+form;
  var selectedIndex = eval( f + '.'+ lstId + '.selectedIndex');
  if (selectedIndex>-1) {
      eval(f + '.' + textId  + '.value = ' + f + '.' + lstId + '.options[selectedIndex].text');
//        eval(f + '.' + textId  + '.selected=true');
//        eval(f + '.' + hiddenTextId + '.value = ' + f + '.' + lstId + '.options[selectedIndex].value');
  }
  hide(panelId);
  eval(f + '.' + textId  + '.focus()');
}

function shiftComboList(panelId,lstId,textId ) {
  if (getObj(panelId).style.display=="block")
    closeComboList(panelId,lstId,textId);
  else {
    openComboList(panelId,lstId,textId);
  }
}
/****************** END for Combo functions ******************/

/****************** for popup modal window functions ******************/
/* It is used to popup a window and de-active the base window.
   On the popup window, user can submit a form.
   Only after close the popup window, base window will be activated.
*/

// One object tracks the current modal dialog opened from this window.
var dialogWin = new Object();

// Generate a modal dialog.
// Parameters:
//    url -- URL of the page/frameset to be loaded into dialog
//    width -- pixel width of the dialog window
//    height -- pixel height of the dialog window
function openDialog(url, width, height,isResizable) {
  if (window.name=="pimsMain") {
    if (isResizable==null)  isResizable=0;
    if (!dialogWin.win || (dialogWin.win && dialogWin.win.closed)) {
      // Initialize properties of the modal dialog object.
      dialogWin.returnedValue = "";
      dialogWin.url = url;
      dialogWin.width = width;
      dialogWin.height = height;
      dialogWin.name = 'ModalChild';

      var w = document.body.clientWidth;
      var h = document.body.clientHeight;

      // Assemble window attributes and try to center the dialog.
      dialogWin.left = window.screenLeft + (w - dialogWin.width) / 2;
      dialogWin.top = window.screenTop + (h - dialogWin.height ) / 2;
      var attr = "left=" + dialogWin.left + ",top=" +
         dialogWin.top + ",resizable="+isResizable+",scrollbars=auto,status=yes,width=" + dialogWin.width +
         ",height=" + dialogWin.height;

      // Generate the dialog and make sure it has focus.
          if (url.indexOf('blank')>-1)
          dialogWin.win=window.open('', dialogWin.name, attr);
      else
          dialogWin.win=window.open(url, dialogWin.name, attr);
          dialogWin.win.moveTo(dialogWin.left,dialogWin.top);
    } else {
      dialogWin.win.focus();
    }
  }
}

// Event handler to inhibit Navigator form element
// and IE link activity when dialog window is active.
function deadend() {
	if (dialogWin.win && !dialogWin.win.closed) {
		dialogWin.win.focus();
		return false;
	}
}

// Since links in IE cannot be disabled, preserve
// IE link onclick event handlers while they're "disabled."
// Restore when re-enabling the main window.
var IELinkClicks;
// Disable form elements and links in all frames for IE.
function disableForms() {
	IELinkClicks = new Array();
  document.body.disabled=true;
	for (var h = 0; h < frames.length; h++) {
	  frames[h].document.body.disabled=true;
		for (var i = 0; i < frames[h].document.forms.length; i++) {
			for (var j = 0; j < frames[h].document.forms[i].elements.length; j++) {
				frames[h].document.forms[i].elements[j].disabled = true;
			}
		}
		IELinkClicks[h] = new Array();
		for (i = 0; i < frames[h].document.links.length; i++) {
			IELinkClicks[h][i] = frames[h].document.links[i].onclick;
			frames[h].document.links[i].onclick = deadend;
		}
	}
}

// Restore IE form elements and links to normal behavior.
function enableForms() {
  document.body.disabled=false;
	for (var h = 0; h < frames.length; h++) {
	  frames[h].document.body.disabled=false;
		for (var i = 0; i < frames[h].document.forms.length; i++) {
			for (var j = 0; j < frames[h].document.forms[i].elements.length; j++) {
				frames[h].document.forms[i].elements[j].disabled = false;
			}
		}
		for (i = 0; i < frames[h].document.links.length; i++) {
			frames[h].document.links[i].onclick = IELinkClicks[h][i];
		}
	}
}

// Grab all Navigator events that might get through to form
// elements while dialog is open. Disable form elements.
function blockEvents() {
	disableForms();
	window.onfocus = checkModal;
}
// As dialog closes, restore the main window's original
// event mechanisms.
function unblockEvents() {
	enableForms();
}

// Invoked by onFocus event handler of EVERY frame,
// return focus to dialog window if it's open.
function checkModal() {
	if (parent.dialogWin.win && !parent.dialogWin.win.closed) {
		parent.dialogWin.win.focus();
	}
}

function popOnLoad() {
 try {
    checkFormInit();
 }
 catch (er) {}
//    gFormValue = getFormValue(); // for checkFormChanged function
    if (opener) opener.blockEvents();
}

function popOnUnLoad() {
    if (opener) opener.unblockEvents();
}

/****************** END for popup modal window functions ******************/

/***************** for disable all fields in the current line **********************/
/* Note: 1) It can be triggered by checkBox or others. If it doesnot use checkBox,
            it must use diableFlag to set true or false;
         2) This function based on hierarchy "id". so:
            a) only disable the fields which is with id and the id not start with "exception";
            b) parent id length < children id length
 */
function disableRemoved(curObj,parentKey,disableFlag) {
  var isChecked = true;
  var isDisabled = true;

  var curId = curObj.id;

  if (disableFlag==null || disableFlag.length==0) {
      isChecked = document.getElementById(curId).checked;
      if (!isChecked) curObj.value="";
      isDisabled = (isChecked) ? true : false ;
  }
  else
      isDisabled = disableFlag;

  var parent = document.getElementById(curId).parentElement;
//  var parent = getParent(parent,parentKey);
  parent = getParent(parent,parentKey);
  var subCollection = parent.children;
  doDisable(subCollection,curId,isDisabled);
}

function getParent(parent,parentKey) {
  // find the parent level
  while (parent.id.length==0 ||
         (parent.id.substr(0,parentKey.length)!=parentKey)) {
    parent = parent.parentElement;
  }
  return parent;
}

/*function getParentForLinks(parent,parentKey) {
  // find the parent level
  while (parent.id.length==0 ||
         (parent.id.substr(0,parentKey.length)!=parentKey)) {
    parent = parent.parentElement;
  }
  return parent;
} */

function doDisable(c,exceptionId,isDiabled) {
  var strException = "exception";
	for (var i=0; i<c.length; i++) {
    if (c.item(i).id!=null &&
        c.item(i).id.length>0 &&
          !document.getElementById(c.item(i).id).contains(document.getElementById(exceptionId)) &&
        c.item(i).id!=exceptionId &&
        c.item(i).id.indexOf(strException)!=0)
//			    document.getElementById(c.item(i).id).disabled = isDiabled;
          if (isDiabled)
      document.getElementById(c.item(i).id).style.color = "#999999";
    else
      document.getElementById(c.item(i).id).style.color = "#000000";
  doDisable(c.item(i).children,exceptionId,isDiabled);
	}
}
/***************** END for disable all fields in the current line **********************/
function setPixelWidth(id,w) {
  if (getObj(id))
    getObj(id).style.pixelWidth = w;
}

function setPixelHeight(id,h) {
  if (getObj(id))
    getObj(id).style.pixelHeight = h;
}

function getIdHeight(id) {
  if (getObj(id))
    return getObj(id).offsetHeight;
  else
    return 0;
}
function getIdWidth(id) {
  if (getObj(id))
    return getObj(id).offsetWidth;
  else
    return 0;
}

function disableField(id,isDisabled,attr) {
  getObj(id).disabled=isDisabled;
  if (attr!=null) {
    if (getObj(id).tagName.toLowerCase().indexOf("input")>-1 ||
        getObj(id).tagName.toLowerCase().indexOf("select")>-1 )  {
      getObj(id).style.backgroundColor = isDisabled ? "#eee" : "";
    }
    if (getObj(id).tagName.toLowerCase().indexOf("img")>-1) {
      var sOpacity = isDisabled ? 50 : 100;
      getObj(id).style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=" + sOpacity + ")";
    }
  }
}

function disableLabel(id,isDisabled,sColor) {
  var c = (isDisabled) ? "#999999" : sColor;
  document.getElementById(id).style.color = c;
}

function pimsCalendar(calName, formName,fieldName,fieldId,textWidth,className,dateStr,withOption) {
  if (withOption==null) withOption = true;
  var textBoxName = fieldName;
  var textBoxId = fieldId;
  var btnName = 'btn' + calName;
  var strBtnImg = '/image/calendar/btn_date_up.gif';
  var strBtnW = 17;
  var strBtnH = 16;
  var strTemp = '';
  var strTxtDateW = (textWidth.length==0) ? "" : 'style="width:'+ (textWidth-strBtnW) + 'px;"';
  var tmpClass = (className==null || className.length==0) ? ' ' : ' class="'+className+'" ';

//  strTemp+=' onBlur="isDate(this.value);"';      // not set focus, let user do "cancel" action
  strTemp+=' onBlur="autoFormatDate(\''+fieldId+'\');"';      // not set focus, let user do "cancel" action
  var aLine='<input' + tmpClass + strTxtDateW +' type="text" id=' + quotes(textBoxId) + ' name=' + quotes(textBoxName) + '  ' + strTemp + 'size="12" value="' + dateStr + '">';
      aLine+='<img ';
      aLine+='onclick="doPimsCalendar(\''+fieldId+'\','+withOption+')"';
      aLine+=' align="absmiddle" border="0" name=' + quotes(btnName) + ' id=' + quotes(btnName) + ' src=' + quotes(strBtnImg) +' width='+ quotes(strBtnW) +' height='+ quotes(strBtnH) +'>';
  document.write(aLine);
}

function doPimsCalendar(txtId,withOption,loadDateType,loadDateArray) {
  if (withOption==null || withOption=='') withOption = true;
  var preDateObj = new pimsCalObj(getObj(txtId).value,loadDateType,loadDateArray);
  var h = withOption ? 204 : 184;
  var bc = getObj(txtId).style.background;
  getObj(txtId).style.background = "#BBBBBB";
  var ret = showModalDialog("/common/calendar.jsp",preDateObj,'help:no;center:yes;status:no;resizable:no;scroll:no;dialogHeight:'+h+'px;dialogWidth:195px;unadorned:yes');
  if (ret)
    getObj(txtId).value = ret;
  getObj(txtId).style.background = bc;
}

//  appCalMonthNumber>1
function doPimsYearCalendar(varName,appCalFrom,appCalMonthNumber,dateLinks) {
    appCalNumber = appCalMonthNumber;

    //local var
    var txtPannelId = "calPannel"+varName;
    var tdId = "calTD"+varName;
    var calObjId = "cal"+varName;
    var tdLinkId = "calTDLink"+varName;
    var monthYear = new Array(appCalNumber);

    var fromObj = new dateObj(parseInt(appCalFrom.substr(3),10),parseInt(appCalFrom.substr(0,2),10),1);

    var aLine = "";
    // dummy dateText field and button
    aLine += '<div id="'+txtPannelId+'" style="clear:right;visibility:hidden">';
    aLine += '<input type="text" name="calText" id="calText">';
    aLine += '<img src="/image/calendar/btn_date_up.gif" name="calBtn" id="calBtn">';
    aLine += '</div>';
    // calendar table
    aLine += '<div id="spiffycalendar" style="hidden"></div>';
    aLine += '<table border="0"><tr>';
    for (var iCal=0; iCal<appCalMonthNumber; iCal++) {
      aLine += '<td><div id='+tdId+iCal+'></div></td>';
    }
    aLine += '</tr><tr>';
    // selected date table
    for (var iCal=0; iCal<appCalMonthNumber; iCal++) {
      aLine += '<td class="calDateLink" id="'+tdLinkId+iCal+'">';
    }
    aLine += '</tr></table>';
    document.write(aLine);

    // draw calendars
    for (var iCal=0;iCal<appCalMonthNumber;iCal++) {
      var strDate = fromObj.toString();
      eval('var '+calObjId+iCal+' = new ctlSpiffyCalendarBox("'+calObjId+iCal+'", "bodyForm", "calText","calBtn")');
      getObj("calText").value= strDate;
      eval(calObjId+iCal+'.show()');
      getObj(tdId+iCal).innerHTML = getObj("spiffycalendar").innerHTML;
      monthYear[iCal] =  getMonth(strDate) + getYear(strDate);  // for assigned dates
      nextMonth(fromObj);
    }
    getObj("spiffycalendar").innerHTML="";

    // draw assigned dates
    if (dateLinks) {
      for (var iCal=0; iCal<dateLinks.length; iCal++) {
        for (var j=0; j<appCalMonthNumber; j++) {
          var strDate = dateLinks[iCal].sDate;
          var linkYear = getYear(strDate);
          var linkMonth = getMonth(strDate);
				// var linkDay = getDay(strDate);
				// var linkStr = dateLinks[iCal].sLink;
          if (linkMonth+linkYear == monthYear[j]) {
/*            if (appCalType=="multiple") {
              var element = document.createElement("div");
              getObj(tdLinkId+j).insertAdjacentElement("beforeEnd",element);
              element.innerHTML='<a target="_blank" href="'+linkStr+'">'+linkMonth+"/"+linkDay+'</a>';
              element.style.textAlign="center";
            }*/
            // assign the date on the calendar
            assignDate(dateLinks[iCal].sDate,dateLinks[iCal].sLink,dateLinks[iCal].sStatus);
          }
        }
      }
    }
    setTodayColor();
}

function pimsJSDebugger(formName,when) {
  var form = document.forms[formName];
  if (when=="Enter") {
    var aLine = "";
    aLine = aLine + "<table border=1>";
    aLine = aLine + "<tr><th>Name</th><th>Value</th><th>Checked</th></tr>";
    for (var i=0;i<form.length;i++) {
        aLine = aLine + "<tr><td>"+form.elements[i].name+"</td><td>"+form.elements[i].value+"</td><td>"+form.elements[i].checked+"</td></tr>";
    }
    aLine = aLine + "</table>";
    var o = new Array(aLine,when);
    showModalDialog('/common/jsDebugger.jsp',o,'help:no;center:yes;status:yes;resizable:yes;dialogHeight:600px;dialogWidth:800px;');
  }
  else {
//    var obj = document.createElement("<input type='hidden' name='type' value='Submit'>");
    eval(formName+'.insertAdjacentElement("AfterBegin",obj)');

    var ft = form.target;
    var fa = form.action;
    form.action='/common/jsDebugger.jsp';
    window.open("/common/blank.jsp", "pimsDebugger","left=100,top=100,scrollbars=yes,resizable=yes,width=800,height=600");
    form.target="pimsDebugger";
    form.submit();
    form.action=fa;
    form.target=ft;
  }
}

function getObj(id,frameId) {
  if (frameId==null)
    return document.getElementById(id);
  else
    return document.frames(frameId).document.getElementById(id);
}

function openPimsDialog(url,w,h,defaultValue) {
  if (w==null) w = 800;
  if (h==null) h = 600;
  return showModalDialog(url,defaultValue,'help:no;center:yes;status:no;resizable:no;dialogHeight:'+h+'px;dialogWidth:'+w+'px;');
}

/*------------------------------------------------------------
    These two functions are to create stripes for any table
  ------------------------------------------------------------*/
function hasClass(obj) {
   var result = false;
   if (obj.getAttributeNode("class") != null) {
       result = obj.getAttributeNode("class").value;
   }
   return result;
}

function stripe(id) {

  // the flag we'll use to keep track of
  // whether the current row is odd or even
  var even = false;

  // if arguments are provided to specify the colours
  // of the even & odd rows, then use the them;
  // otherwise use the following defaults:
  var evenColor = arguments[1] ? arguments[1] : "#fff";
  var oddColor = arguments[2] ? arguments[2] : "#F2F3EB";

  // obtain a reference to the desired table
  // if no such table exists, abort
  var table = document.getElementById(id);
  if (! table) { return; }

  // by definition, tables can have more than one tbody
  // element, so we'll have to get the list of child
  // &lt;tbody&gt;s
  var tbodies = table.getElementsByTagName("tbody");
  // and iterate through them...
  for (var h = 0; h < tbodies.length; h++) {

   // find all the &lt;tr&gt; elements...
    var trs = tbodies[h].getElementsByTagName("tr");

    // ... and iterate through them
    for (var i = 0; i < trs.length; i++) {

      // avoid rows that have a class attribute
      // or backgroundColor style
      if (! hasClass(trs[i]) &&
          ! trs[i].style.backgroundColor) {

        // get all the cells in this row...
        var tds = trs[i].getElementsByTagName("td");

        // and iterate through them...
        for (var j = 0; j < tds.length; j++) {

          var mytd = tds[j];

          // avoid cells that have a class attribute
          // or backgroundColor style
          if (! hasClass(mytd) &&
              ! mytd.style.backgroundColor) {

            mytd.style.backgroundColor =
              even ? evenColor : oddColor;

            mytd.style.borderTop = "1px solid #D7DAC2";

          }
        }
      }
      // flip from odd to even, or vice-versa
      even =  ! even;
    }
  }
}

function errHighlight(id,isHighlight) {
  if (getObj(id)) {
    if (isHighlight)
        getObj(id).style.backgroundColor = "lightBlue";
    else
        getObj(id).style.backgroundColor = "transparent";
  }
}

function setFocus(fieldName) {
   getObj(fieldName).focus();
}

function isNumber(s) {
  return isInteger(s);
}

function isInteger(s) {
  for (var i = 0; i < s.length; i++){
      // Check that current character is number.
      var c = s.charAt(i);
      if (((c < "0") || (c > "9"))) return false;
  }
  return true;
}

function isFloat(s) {
  if (trim(s)=='.' || trim(s)=='-') return false;
  if (s.indexOf('-')>0) return false;
  for (var i = 0; i < s.length; i++){
      // Check that current character is number or with '.'
      var c = s.charAt(i);
      if (((c < "0") || (c > "9")) && c!='.' && c!='-') return false;
  }
  return true;
}

function isCurrency(s) {
  if (trim(s)=='.' || trim(s)==',' || s.indexOf('$')>0) return false;
  var r1 = new RegExp(",","g");
  var r2 = new RegExp("\\$","g");
  var newStr = s.replace(r1,"");
  newStr = newStr.replace(r2,"");
  return isFloat(newStr);
}

function isEmptyString(s) {
  if (trim(s).length==0) return true;
  else return false;
}

function isValidString(s,ValidChars)
{
  if (ValidChars==null) ValidChars = "0123456789abcdefghijklmnopqrstuvwxyz_- ";
  var isValidString=true;
  var Char;
  for (var i = 0; i < s.length && isValidString == true; i++)
  {
    Char = s.toLowerCase().charAt(i);
    if (ValidChars.indexOf(Char) == -1)
       isValidString = false;
  }
  return isValidString;

}

function isValidColor(s)
{
  var ValidChars = "#0123456789abcdef";
  return isValidString(s,ValidChars);
}

function isValidUSPhoneNum(s)
{
  if (isEmptyString(s)) return true;
  var ValidChars = "0123456789-(). ";
  if (!isValidString(s,ValidChars)) return false;
  var numbers = getUSPhoneNum(s);
  if (numbers.substring(0,1)=="1") numbers=numbers.substring(1);
  if (numbers.length!=10) return false;
  return true;
}

function getUSPhoneNum(oldNumber) {
  var newNumber = "";
  for (var i=0; i<oldNumber.length; i++) {
    if (isInteger(oldNumber.substr(i,1)))
      newNumber = newNumber + oldNumber.substr(i,1);
  }
  return newNumber;
}

function isMaxString(s,c) {
  if (s.length>c) return false;
  else return true;
}

function isMinString(s,c) {
  if (s.length<c) return false;
  else return true;
}

function isRange(s,s1,s2) {
  if (s1==null && s2==null)
    return true;
  else if ((s1==null || s1=="none") && parseFloat(s)>parseFloat(s2))
    return false;
  else if ((s2==null || s2=="none") && parseFloat(s)<parseFloat(s1))
    return false;
  else if (parseFloat(s)<parseFloat(s1) ||
      parseFloat(s)>parseFloat(s2))
    return false;
  else
    return true;
}

function isEmail(s) {
  if (trim(s).length>0 && s.indexOf('@')<0) return false;
  else return true;
}

function isWebsite(s) {
  if (trim(s).length==0) return true;
  if (s.indexOf('http://')==0 || s.indexOf('https://')==0) return true;
  else return false;
}

function formatWebsite(id) {
  if (!isWebsite(getObj(id).value)) getObj(id).value = "http://"+getObj(id).value;
}

function isArray(o) {
   if (o.constructor.toString().toLowerCase().indexOf("array")>-1) return true;
   else return false;
}

function getFormValue(formId) {
  if (formId==null) formId="bodyForm";
  var v = "";
  if (getObj(formId)) {
    for (var i=0; i<getObj(formId).elements.length;i++) {
      var e = getObj(formId).elements[i];
      if (e.id!="formValue")
        v = v + e.value + ((e.checked) ? "^" : "");
    }
  }
  return v;
}

function doCancelCloseWindow(isConfirm,formId) {
  if (isConfirm==null) isConfirm = false;
//  if (isConfirm && !checkFormChanged(formId,"cancel")) return;
  if (isConfirm) gConfirmExit = true;
  else gConfirmExit = false;
  window.close();
}

function doCancel(isConfirm,formId) {
  if (isConfirm==null) isConfirm = false;
  if (isConfirm && !checkFormChanged(formId,"cancel")) return;
}

function capFirst(s) {
  return s.substr(0,1).toUpperCase() + s.substr(1);
}

function indexOfArray(a,s) {
  for (var i=0; i<a.length; i++) {
    if (a[i]==s) return i;
  }
  return -1;
}

function isCheckedRadio(formId,radioName) {
  var f = getObj(formId);
  for (var i=0; i<f.elements.length; i++) {
    if (f.elements[i].name == radioName && f.elements[i].checked) return true;
  }
  return false;
}

function isCheckedCheckBox(formId,checkBoxId) {
  var f = getObj(formId);
  if (checkBoxId!=null) {
    for (var i=0; i<f.elements.length; i++) {
      if (f.elements[i].id.indexOf(checkBoxId)>-1 && f.elements[i].checked) return true;
    }
  }
  else {
    for (var i=0; i<f.elements.length; i++) {
      if (f.elements[i].type.indexOf("check")>-1 && f.elements[i].checked) return true;
    }
  }
  return false;
}

function isValuedTextBox(formId) {
  var f = getObj(formId);
  for (var i=0; i<f.elements.length; i++) {
    if (f.elements[i].type.indexOf("text")>-1 && !isEmptyString(f.elements[i].value)) return true;
  }
  return false;
}

function getRadio(formId,radioName) {
  f = getObj(formId);
  c = document.getElementsByName(radioName);
  l = c.length;
  for (var i=0; i<l; i++) {
    if (c.item(i).checked) return c.item(i).value;
  }
  return "";
}

function getRadioId(formId,radioName) {
  f = getObj(formId);
  c = document.getElementsByName(radioName);
  l = c.length;
  for (var i=0; i<l; i++) {
    if (c.item(i).checked) return c.item(i).id;
  }
  return "";
}

function setRadio(formId,radioName,v) {
  f = getObj(formId);
  c = document.getElementsByName(radioName);
  l = c.length;
  for (var i=0; i<l; i++) {
    c.item(i).checked=(c.item(i).value==v);
  }
}

function checkBoxAll(formId,checkBoxId,flag) {
  selectedCount = 0;
  var f = getObj(formId);
  for (var i=0; i<f.elements.length; i++) {
    var item = f.elements[i];
    if (item.id.indexOf(checkBoxId)==0) {
      item.checked = flag;
      if (flag) selectedCount++;
      else selectedCount--;
    }
  }
  if (selectedCount<0) selectedCount=0;
  return selectedCount;
}
//============== end radioSet ============================================================================================================

function show(id) {
  getObj(id).style.display="block";
}

function showInline(id) {
  getObj(id).style.display="inline";
}

function hide(id) {
  getObj(id).style.display="none";
}

function toggleShow(id) {
  if (getObj(id).style.display == "none")
    show(id);
  else
    hide(id);
}

function toggleImgShow(id,toExpandImg,toContractImg,o,isTitle) {
  if (isTitle==null) isTitle = true;
  if (getObj(id).style.display == "none") {
    show(id);
    o.src=toContractImg;
    o.title="Collapse";
  }
  else {
    hide(id);
    o.src=toExpandImg;
    o.title="Expand";
  }
}

function toggleImgShowAll(actionIdKey,toExpandImg,toContractImg,imgIdKey,mToExpandImg,mToContractImg,mObj,start) {
  var i = start;
  if (mObj.src.indexOf(mToExpandImg)>-1) {
    while (getObj(actionIdKey+i)) {
      show(actionIdKey+i);
      var imgObj = getObj(imgIdKey+i);
      imgObj.src=toContractImg;
      imgObj.title="Collapse";
      i++;
    }
    mObj.src = mToContractImg;
    mObj.title = "Collapse All";
  }
  else {
    while (getObj(actionIdKey+i)) {
      hide(actionIdKey+i);
      var imgObj = getObj(imgIdKey+i);
      imgObj.src=toExpandImg;
      imgObj.title="Expand";
      i++;
    }
    mObj.src = mToExpandImg;
    mObj.title = "Expand All";
  }
}

function isHide(id) {
  if (getObj(id).style.display=="none") return true; else return false;
}

function nullArray(len) {
  var ret = new Array(len);
  for (var i=0;i<len;i++) {
    ret[i]=null;
  }
  return ret;
}

// put comma and round of 2 decimals
function currencyFormat(input) {
  if (String(input).indexOf(',')>-1) return input;
  var floatNumber = parseFloat(input);
  if (isNaN(floatNumber)) return input;

  var strIt = String(floatNumber.toFixed(2));
  var loc = strIt.indexOf('.');
  var left = strIt.substring(0,loc);
  var right = strIt.substring(loc);
  var first = left.length%3;
  var ret = "";
  var pos = first;
  ret = ret + left.substring(0,pos);
  while (pos+3<=left.length) {
    if (ret!="") ret = ret + ",";
    ret = ret + left.substring(pos,pos+3);
    pos = pos + 3;
  }
  return ret+right;
}

// round of 2 decimals
function percentFormat(input) {
  var floatNumber = parseFloat(input);
  if (isNaN(floatNumber)) return;
  return floatNumber.toFixed(2);
}

function noCurrencyFormat(input) {
  var s = String(input);
  var aStr = s.split(',');
  var ret = '';
  for (var i=0; i<aStr.length;i++) {
    ret = ret + aStr[i];
  }
  return ret;
}

function getRandomByDate() {
  var d = new Date();
  return d.getFullYear().toString()+
         d.getMonth().toString()+
         d.getDate().toString()+
         d.getHours().toString()+
         d.getMinutes().toString()+
         d.getSeconds();
}

function inArray(ar,item) {
  for (var i in ar) {
    if (item==ar[i]) return true;
  }
  return false;
}

function checkDuplicateList(listIdArray) {
  var ret = new Array();
  var allValueArray = new Array();
  var j = -1;
  for (var i in listIdArray) {
    var listObj = getObj(listIdArray[i]);
    for (var itemI=0; itemI<listObj.options.length;itemI++) {
      allValueArray[++j] = listObj.options[itemI].value;
    }
  }

  allValueArray.sort();
  var lastItem="";
  j = -1;
  for (var i in allValueArray) {
    if (allValueArray[i]==lastItem && !inArray(ret,lastItem))
      ret[++j] = lastItem;
    else
      lastItem = allValueArray[i];
  }

  return ret;
}

function cleanCurrencyFormat(aFieldIds) {
  if (!isArray(aFieldIds)) aFieldIds = new Array(aFieldIds);
  for (i in aFieldIds) {
    var r1 = new RegExp(",","g");
    var r2 = new RegExp("\\$","g");
    var v = getObj(aFieldIds[i]).value;
    v = v.replace(r1,"");
    v = v.replace(r2,"");
    getObj(aFieldIds[i]).value=v;
  }
}

function pimsCalObj(d,type,ar) {
  this.selectedDate = d;
  this.loadDateType = type;
  this.loadDateArray = ar;
}

/***  Related Navigation array used on list and detail page ***/
/***  Since this page is included in all list and detail page, this array is here -- PG ***/
    var relatedNavArray = (
  /* 0  application */    ["activity","meeting","budget","fund","gop","material","org","person","transaction"],
  /* 1  org */            ["activity","fund","material","person","transaction"],
  /* 2  person */         ["activity","meeting","fund","gop","material","org","transaction"],
  /* 3  activity */       ["fund","gop","material","org","person"],
  /* 4  fund */           ["activity","meeting","budget","gop","material","org","person","transaction"],
  /* 5  meeting */        ["fund","gop","material","person"],
  /* 6  budget */         ["fund"],
  /* 7  gop */            ["activity","meeting","fund","material","person"],
  /* 8  material */       ["activity","meeting","fund","gop","org","person"],
  /* 9  review */         ["",""],
  /* 10 transaction */    ["fund","org","person"]);

 
function doSubmitHiddenFrame(url,frameId) {
  if (frameId==null) frameId = "hiddenFrame";
  var sParam = "rdm="+new Date().getTime();
  var sAnd = (url.indexOf("?")>-1) ? "&" : "?";
  if (getObj(frameId))
    getObj(frameId).src=url+sAnd+sParam;
  else
    parent.document.getElementById(frameId).src=url+sAnd+sParam;
}

function doPimsUrlReplace(url,isOpener) {
  if (isOpener==null)
    isOpener = false;
  var sParam = "rdm="+new Date().getTime();
  var sAnd = (url.indexOf("?")>-1) ? "&" : "?";
  if (isOpener)
    opener.location.href = url+sAnd+sParam;
  else
    location.href = url+sAnd+sParam;
}

function isUSZip(s) {
  var ValidChars = "0123456789-";
  return isValidString(s,ValidChars);
}

var minYear=1900;
var maxYear=3100;
function isDate(dateString,isAlert) {
/* allowed date format
    mm-dd-yyyy,
    mm/dd/yyyy,
    mm.dd.yyyy,
    mm dd yyyy,
    mmm dd yyyy,
    mmddyyyy,
    m-d-yyyy,
    m/d/yyyy,
    m.d.yyyy,
    m d yyyy,
    mmm d yyyy,
    m-d-yy,
    m/d/yy,
    m.d.yy,
    m d yy,
    mmm d yy (yy is 20yy)
*/
  if (isAlert==null) isAlert = false;
  var strDate;
  var strDateArray;
  var strDay=0;
  var strMonth=0;
  var strYear=0;
  var intday;
  var intMonth;
  var intYear;
  var booFound = false;
  var strSeparatorArray = new Array("-"," ","/",".");
  var intElementNr;
//  var err = 0;

  var strMonthArray = new Array(12);
  strMonthArray[0] = "January";
  strMonthArray[1] = "February";
  strMonthArray[2] = "March";
  strMonthArray[3] = "April";
  strMonthArray[4] = "May";
  strMonthArray[5] = "June";
  strMonthArray[6] = "July";
  strMonthArray[7] = "August";
  strMonthArray[8] = "September";
  strMonthArray[9] = "October";
  strMonthArray[10] = "November";
  strMonthArray[11] = "December";
  strDate = trim(dateString);
  if (strDate.length < 1) return true;

  for (intElementNr = 0; intElementNr < strSeparatorArray.length; intElementNr++) {
    if (strDate.indexOf(strSeparatorArray[intElementNr]) != -1) {
      strDateArray = strDate.split(strSeparatorArray[intElementNr]);
      if (strDateArray.length != 3) {
        err = 1;
        if (isAlert) alert("Invalid date");
        return false;
      }
      else {
        strDay = strDateArray[0];
        strMonth = strDateArray[1];
        strYear = strDateArray[2];
      }
      booFound = true;
    }
  }

  if (booFound == false) {
    if (strDate.length>5) {
      strDay = strDate.substr(0, 2);
      strMonth = strDate.substr(2, 2);
      strYear = strDate.substr(4);
    }
  }
  if (2==strYear.length)
    strYear = '20' + strYear;

  strTemp = strDay;
  strDay = strMonth;
  strMonth = strTemp;

  intday = parseInt(strDay, 10);

  if (isNaN(intday)) {
    err = 2;
    if (isAlert) alert("Invalid date");
    return false;
  }

  intMonth = parseInt(strMonth, 10);
  if (isNaN(intMonth)) {
    for (var i = 0;i<12;i++) {
      if (strMonth.length<=strMonthArray[i].length &&
          strMonthArray[i].toUpperCase().indexOf(strMonth.toUpperCase())==0) {
        intMonth = i+1;
        strMonth = strMonthArray[i];
        i = 12;
      }
    }
    if (isNaN(intMonth)) {
      err = 3;
      if (isAlert) alert("Invalid month");
      return false;
    }
  }

  intYear = parseInt(strYear, 10);
  if (isNaN(intYear) || intYear<minYear || intYear>maxYear) {
    err = 4;
    if (isAlert) alert("Invalid year");
    return false;
  }
  if (intMonth>12 || intMonth<1) {
    err = 5;
    if (isAlert) alert("Invalid month");
    return false;
  }
  if ((intMonth == 1 || intMonth == 3 || intMonth == 5 || intMonth == 7 || intMonth == 8 || intMonth == 10 || intMonth == 12) && (intday > 31 || intday < 1)) {
    err = 6;
    if (isAlert) alert("Invalid month");
    return false;
  }
  if ((intMonth == 4 || intMonth == 6 || intMonth == 9 || intMonth == 11) && (intday > 30 || intday < 1)) {
    err = 7;
    if (isAlert) alert("Invalid month");
    return false;
  }

  if (intMonth == 2) {
    if (intday < 1) {
      err = 8;
      if (isAlert) alert("Invalid month");
      return false;
    }
    if (LeapYear(intYear) == true) {
      if (intday > 29) {
        err = 9;
      if (isAlert) alert("Invalid date");
        return false;
      }
    }
    else {
      if (intday > 28) {
        err = 10;
        if (isAlert) alert("Invalid date");
        return false;
      }
    }
  }
  return  formatTwoDigits(intMonth) + "/" + formatTwoDigits(intday)+"/" + strYear;
//  return true;
}
function formatTwoDigits(s) {
  if (s<10) return "0"+s;
  else return s;
}
function LeapYear(intYear) {
  if (intYear % 100 == 0) {
    if (intYear % 400 == 0) { return true; }
  }
  else {
    if ((intYear % 4) == 0) { return true; }
  }
  return false;
}
function autoFormatDate(id) {
  var dtStr = getObj(id).value;
  if (isEmptyString(dtStr)) return dtStr;
  var checkResult = isDate(dtStr,true);
  if (checkResult)
    getObj(id).value = checkResult;
  else {
    getObj(id).select();
    setFocus(id);
  }
}

function showTitle(sTitle,o,e,scrollId,maxCharsALine,maxWidth) {
 if (maxCharsALine==null) maxCharsALine = 50;
 if (maxWidth==null) maxWidth = 300;
 var scrollLeft = scrollId==null ? 0 : getObj(scrollId).scrollLeft;
 var scrollTop = scrollId==null ? 0 : getObj(scrollId).scrollTop;
 var titleBox = getObj("pimsTitleBox");
 titleBox.innerHTML = sTitle;
 titleBox.style.height=o.style.height;
 titleBox.style.pixelLeft=e.clientX;
 titleBox.style.pixelTop=e.clientY;
 if (titleBox.innerHTML.length>maxCharsALine) titleBox.style.width=maxWidth; else titleBox.style.width=150;
 if (titleBox.style.pixelLeft+titleBox.offsetWidth > document.body.clientWidth)  titleBox.style.pixelLeft =e.clientX-titleBox.offsetWidth+scrollLeft;
 if (titleBox.style.pixelTop+titleBox.offsetHeight > document.body.clientHeight) titleBox.style.pixelTop =e.clientY+scrollTop-titleBox.offsetHeight;
 titleBox.style.visibility = "visible";
/*<div id="pimsTitleBox" class="pimsTitle"></div>
  <a href="http://www.dynamicdrive.com" onMouseover="test(this,event,0)" onMouseOut="hideTitle()">Dynamic Drive</a>
*/
}
function hideTitle() {
document.getElementById("pimsTitleBox").style.visibility="hidden";
}

function openExternalUrl(url) {
  window.open(url, "_blank");
}

function getKey() {
  event.keyCode=0;
  event.returnValue=false;
  return false;
}

function isCloseWindow() {
  return (window.screenTop>10000)?true:false;
}

function doRefresh(id, refresh) {
  if (isCloseWindow()) {
    if ('false' != refresh )
      doPimsUrlReplace('/common/refreshParent.jsp?close=1&REFRESH_LAST_REQUEST=true&selectedId='+id,true);
  }
}

function confirmExitLink() {
  if (event.srcElement.tagName=="A" || event.srcElement.parentElement.tagName=="A") gConfirmExit = false;
}