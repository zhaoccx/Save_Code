/**
 * 列表网用户中心
 */
$(document).ready(function() {

    $('.my_checkbox_all').click(function() {
        var flag = this.checked;
        $(':checkbox').each(function() {
            if($(this).attr('disabled')!='disabled') {
                $(this).attr('checked', flag);
            }
        });
        selectRefresh();
    });
    $('.my_delete_all').click(function() {
        var val = selectCheckbox();
        if (val) {
            if (confirm('您确定彻底删除所选项吗？(若选中的有置顶或定向推广中的信息，将结束服务且不退款！)')) {
                $('#infor').submit();
            }
        } else {
            alert('请您选择彻底删除的信息');
            return false;
        }

    });
    $('table :checkbox').each(function(){
        $(this).click(function(){
            selectRefresh();
        });
    });
    selectRefresh();
});
//选中刷新信息
function selectRefresh() {
    var params = '';
    var href = $('.refresh').attr('href');
	var timer_href = $('.timer_refresh').attr('href');
    if (undefined == href || timer_href==undefined) {
        return;
    }
    $('table :checkbox').each(function(){
        var flag = this.checked;
        if (flag) {
            params += $(this).val() + '|';
        }
    });
    params = params.replace(/^(.*?)\|$/g,'$1');
    href = getHref(href);
	timer_href = getHref(timer_href);
    if (params) {
        href = href + '?id=' + params;
		timer_href = timer_href + '?id=' + params;
	}
	$('.refresh').attr('href', href);
	$('.timer_refresh').attr('href', timer_href);

    return;
}
//返回无参数url
function getHref(href) {
    if (href.lastIndexOf('?') != -1) {
        href = href.substring(0,href.lastIndexOf('?'));
    }
    return href;
}

//判断是否选中checkbox
function selectCheckbox() {
    var val = '';
    $('table :checkbox').each(function() {
        if ($(this).attr('checked')) {
            val = $(this).val();
            return false;
        }
    });
    return val;
}

//恢复信息操作。p是判断过期信息，来使用不同js操作
function renew(postid, p) {
    var delurl = '';
    if (document.URL.indexOf('?') == -1) {
        delurl = document.URL + '?delposts=' + postid;
    } else {
        delurl = document.URL + '&delposts=' + postid;
    }
    if (postid) {
        $.post('/cgi-bin/ajax/delepost.php',
            {pid:postid,type:'renew'},
            function(data) {
	            $("#yc-jump").css({
		            position:'absolute',
		            left: ($(window).width() - $('#yc-jump').outerWidth())/2,
		            top: ($(window).height() - $('#yc-jump').outerHeight())/2 + $(document).scrollTop()
	            });
	            $("#yc-jump").fadeIn(400,function(){$("#yc-jump").delay(800).fadeOut(400,function(){window.location.href = window.location.href;})});
            }
        );
    }
    return false;
}

//删除隐藏信息
function delePost(postid, p) {

//    if (p == 1) {
//        if (confirm("您确定彻底删除该信息吗？")) {
//            if (postid) {
//                $('#infor').submit();
//            }
//        }
//        return;
//    }

	var action = '';
	if (p==4) {
		action = 'hidden';
	} else {
		action = 'del';
		var notice = '';
		if (p==1) {
			notice = '该信息处于置顶中，删除后将结束置顶！您确定彻底删除该信息吗？';
		} else if (p==2) {
			notice = '该信息处于定向推广中，删除后将结束定向推广！您确定彻底删除该信息吗？';
		} else if (p==3) {
			notice = '该信息处于置顶和定向推广中，删除后将结束置顶和定向推广！您确定彻底删除该信息吗？';
		} else if (p==0) {
			notice = '您确定彻底删除该信息吗？';
		}

		if (!confirm(notice)) {
			return;
		}
	}

    var delurl = '';
    if (document.URL.indexOf('?') == -1) {
        delurl = document.URL + '?delposts=' + postid;
    } else {
        delurl = document.URL + '&delposts=' + postid;
    }
    if (postid) {
        $.ajax({
            type: "POST",
            url: "/cgi-bin/ajax/delepost.php",
            data: "pid=" + postid + "&action="+action,
            success: function(msg) {
	            $("#yc-jump").css({
		            position:'absolute',
		            left: ($(window).width() - $('#yc-jump').outerWidth())/2,
		            top: ($(window).height() - $('#yc-jump').outerHeight())/2 + $(document).scrollTop()
	            });
	            $("#yc-jump").fadeIn(400,function(){$("#yc-jump").delay(800).fadeOut(400,function(){window.location.href = window.location.href;})});
            }
        });
    }

    return false;
}

function ptop1(postid) {
	var refresh = arguments[1] === undefined ? false : arguments[1];
	//$('#r_id').attr('disabled','disabled');
	$.getJSON('/cgi-bin/ajax/postactions.php?postid=' + postid + '&action'+ '=refresh', '',
		function(data) {
			if (data.success && data.success == 1) {
				$(this).closeDOMWindow({anchoredSelector:'#DOMWindow'});
				window.location.href = window.location.href;
			} else {
				window.location.href = '/my/pay/refresh.php?id='+postid;
			}
		});
    return false;
}
//select all
function selectAll(obj) {
    var flag = obj.checked;
    $(':checkbox').each(function() {
        $(this).attr('checked', flag);
    });
}

$('.my_edit_refresh').openDOMWindow({
	positionType:'centered',
	eventType:'click',
	height:180,
	width:350,
	draggable:1,
	overlayOpacity:25,
	windowSource:'ajax',
	windowHTTPType:'get'
});
$("a[name='timer_refreshzhong']").openDOMWindow({
	positionType:'centered',
	eventType:'click',
	height:415,
	width:480,
	draggable:1,
	overlayOpacity:25,
	windowSource:'ajax',
	windowHTTPType:'get',
	windowSourceID:1,
	functionCallOnOpen: function(){
	// 获取this 的 source id
	//	取出 postid
	//		扔到 全局变量
		var start = this.windowSourceID.indexOf("id=");
		souceid = Number(this.windowSourceID.substr(start+3));
	}
});
$("a[title='我要申诉']").openDOMWindow({
	positionType:'centered',
	eventType:'click',
	height:350,
	width:570,
	draggable:1,
	overlayOpacity:25,
	windowHTTPType:'get',
	windowSourceID:1,
	windowSource:'iframe',
	windowTitle:'申诉',
	showClose:1
});

$('.close').closeDOMWindow({anchoredSelector:'#DOMWindow',eventType:'click'});

function closedw() {
	$(this).closeDOMWindow({anchoredSelector:'#DOMWindow'});
}