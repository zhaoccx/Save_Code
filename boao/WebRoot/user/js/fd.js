/**用户反馈与建议
 * Created by JetBrains PhpStorm.
 * User: jiaoxiaochuan
 * Date: 12-10-8
 * Time: 上午11:34
 * To change this template use File | Settings | File Templates.
 */
$(function(){
    var str = '';
    if (getCookie('_fd')) {
        str = '<span class="button-disabled button-bg">已反馈</span>';
    } else {
        str = '<span class="button button-cursor">提交反馈</span>';
    }

    var _str = '<div class="fd-btn">';
        _str += '<a rel="nofollow" href="#" class="feedback" title="欢迎给列表网找问题和提建议"></a>';
        _str += '<a href="#" class="fd-top" title="回到顶部">回到顶部</a>';
        _str += '<div class="fdTips fb-open hide green">反馈已发送！';
        _str += '</div><div class="fdCnt">';
        _str += '<h3><cite class="red">* </cite>您对列表网的意见和建议：</h3>';
        _str += '<textarea name="fdCnt" placeholder=""></textarea>' + str;
        _str += '</div></div>';
        $('body').append(_str);
	var $body = window.opera ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body');
	var $flag = false;
	$(window).scroll(function(){
		if ($('.fd-btn').offset().top > 450) {
			$('.fd-btn .fd-top').css('display', 'inline-block');
		} else {
			$('.fd-btn .fd-top').css('display', 'none');
			$flag = false;
		}
	});
	$('.fd-btn .fd-top').click(function(){
		if ($flag == false) {
			$body.animate({scrollTop: 0}, 500);
			$flag = true;
		}
		return false;
	});
	var fd_btn = $('.fd-btn'),
		feedback = $('.feedback', fd_btn),
		fdCnt = $('.fdCnt'),
		sendBtn = $('.button', fd_btn),
		content = $('textarea', fd_btn),
		fdTips = $('.fdTips', fd_btn),
		fd_class = 'fb-open',
		$hiden = function(){
			fd_btn.animate({
				right: '-=350'
			})
			fdCnt.removeClass(fd_class);
		},
		$show = function(){
			fdTips.hide();
			fdCnt.show();
			fd_btn.animate({
				right: '+=350'
			});
			fdCnt.addClass(fd_class);
		},
        disableBtn = function () {
            sendBtn.removeClass('button-cursor');
            sendBtn.addClass('button-bg');
            sendBtn.unbind('click').text('已反馈');
        };
	feedback.length && feedback.on('click', function(e){
		e.preventDefault();
		fdCnt.hasClass(fd_class) ? $hiden() : $show();
	});

	sendBtn.on('click', function(){
		var text = $.trim(content.val());
		if(text === '') return alert('内容不可为空！');
        if(text.length > 500) return alert('建议内容在500字以内');
		$.post('/cgi-bin/ajax/rightfeedback.php',{referer: $('#referer').val(), content: text}, function(){
            disableBtn();
			fdCnt.hide();
			fdTips.show();
			setTimeout(function(){
				$hiden();
			}, 2000);
			content.val('');
		})
	});
})
function getCookie(name) {
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg) {
			return getCookieVal(j)
		}
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0)
			break
	}
	return
}
function getCookieVal(offset) {
	var endstr = document.cookie.indexOf(";", offset);
	if (endstr == -1) {
		endstr = document.cookie.length
	}
	return decodeURI(document.cookie.substring(offset, endstr))
}