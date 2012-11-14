( function($) {

$(document).ready(function(){ 
   
    
    	
$("ul.navigation").superfish({ 
           //animation: {height:'show'},  
            delay:     1200             
        });


 		//if ($('#slider').length != 0) {
 			$('#slider').after('<div id="slider-pages">').cycle({ 
    			fx:     'fade', 
    			speed:  '700', 
    			timeout: '3900', 
    			pager:  '#slider-pages',
    			pause:   true,
    			pauseOnPagerHover: true
			});
		//}
		

        $('.share').hover(function (){ $('.social-icons').stop().animate({right:'0'});
        		$('.st_facebook_custom,.st_pinterest_custom,.st_twitter_custom,.st_email_custom').hover(function (){ $(this).find('img').css('margin-top','-80px') },function (){ $(this).find('img').css('margin-top','0px') });        	
        	},function (){$('.social-icons').animate({right:'-125px'}); }); 
        $('.social-icons-wrap').hover(function (){$('.social-icons').stop().animate({right:'0'}); 
        	$('.st_facebook_custom,.st_pinterest_custom,.st_twitter_custom,.st_email_custom').hover(function (){ $(this).find('img').css('margin-top','-80px') },function (){ $(this).find('img').css('margin-top','0px') });
        },function (){$('.social-icons').stop().animate({right:'-125px'}); }); 
                
        
}); 


} ) ( jQuery );