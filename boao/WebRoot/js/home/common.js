// 	JavaScript Document
//	博奥好学网





	//返回顶端
	function b(){
			h = $(window).height();
			t = $(document).scrollTop();
			h=h*0.2;
			if(t > h){
				$('#gotop').show('slow');
			}else{
				$('#gotop').hide('slow');
			}
		}
		$(document).ready(function(e) {
			b();
			$('#gotop').click(function(){
				$(document).scrollTop(0);	
			})
		});
		$(window).scroll(function(e){
			b();		
		})
	//END
	
	
	
	
	
	//添加收藏
	function AddFavorite() {
			var title = document.title;
			var url = location.href;
			if (window.sidebar) {
					window.sidebar.addPanel(title, url, "");
			}else if (document.all) {
        window.external.AddFavorite(url, title);
    	}
			else {
        return true;
    	}
	}
	//END
	

	
	function sear_ulClick(obj) {
		var name =$(obj).attr('name');
		var val  = $(obj).html();
			$('#loanType').val(name);
			$('.sear_ti').html(val);
			$('.sear_ul').hide();
	}
	
	function searchCheck () {
		var loanType = $('#loanType').val();
		var txt = $('#search_top_txt').val();
		
		if(txt=="" || txt.length<=0){
			alert("请输入您想搜索的内容");
			return;
		}
	}
	

	$(function(){
		$('#selectChange').mouseover(function(){
			$('.sear_ul').show();
		});
		
		$('#selectChange').mouseout(function(){
			$('.sear_ul').hide();
		});
	
		$('.sear_ul a').click(function(){
			sear_ulClick(this);
		});
		
	});
	sear_ulClick(obj);

	