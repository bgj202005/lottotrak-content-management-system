$(document).ready(function() { 
	$(".lightbox-image").append("<span></span>");
	
	$('.lightbox-image')
		.live('mouseenter',function(){
			$(this).find('img').stop().animate({opacity: 0.2}, 200).parent().find('span').stop().animate({top:0}, 200);
		})
		.live('mouseleave',function(){
			$(this).find('img').stop().animate({opacity: 1}, 200).parent().find('span').stop().animate({top:-115}, 200);
	});
});