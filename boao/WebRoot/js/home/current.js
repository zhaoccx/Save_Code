	current = {
		init : function(box){
			$(box).each(function(i,v){
				$(v).mouseover(function(){
					$(this).addClass("current");
				});
				$(v).mouseout(function(){
					$(this).removeClass("current");
				});
			});
		}
	}
		
	$(".jCarouselLite1").jCarouselLite({auto: 3000,speed: 3000,visible:6});
	$(".jCarouselLite1").width(942).css({'margin-left':'7px'});
	
	$(".jCarouselLite2").jCarouselLite({auto: 3000,speed: 3000,visible:6});
	$(".jCarouselLite2").width(942).css({'margin-left':'7px','height':'0','padding':'0'});
	
	$(".jCarouselLite_success").jCarouselLite({auto: 3000,speed: 800,visible:4,vertical:true,scroll:1});
	$(".jCarouselLite_success").css({'left':'10px','margin':'7px 0'});
	
	$(".jCarouselLite_shenqing").css({'display':'block'});
	$(".jCarouselLite_shenqing").jCarouselLite({auto: 3000,speed: 1400,visible:1,vertical:true,scroll:1});

	current.init(".jigou");
	
	current.init(".tech");