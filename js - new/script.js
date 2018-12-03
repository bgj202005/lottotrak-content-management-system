$(document).ready(function() { 
	$('ul.menu').superfish({ 
		delay:       600,                            // one second delay on mouseout 
		animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation 
		speed:       'normal',                          // faster animation speed 
		autoArrows:  false,                           // disable generation of arrow mark-up 
		dropShadows: false                            // disable drop shadows 
	}); 
	
	$('.download-button').hover(
		function(){$(this).find('span').stop().animate({opacity: 0}, 350)},
		function(){$(this).find('span').stop().animate({opacity: 1}, 350)}
	)
	
}); 

$(function(){
// IPad/IPhone
	var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
    ua = navigator.userAgent,
 
    gestureStart = function () {
        viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
    },
 
    scaleFix = function () {
      if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
        viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
        document.addEventListener("gesturestart", gestureStart, false);
      }
    };
scaleFix();
// Menu Android
	var userag = navigator.userAgent.toLowerCase();
	var isAndroid = userag.indexOf("android") > -1; 
	if(isAndroid) {
		$('.menu').responsiveMenu({autoArrows:true});
	}
});
