( function($) {

$(document).ready(function(){ 
   
    
    	/*
$("ul.navigation").superfish({ 
           //animation: {height:'show'},  
            delay:     1200             
        });
*/

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
		

         
                
        
}); 


} ) ( jQuery );