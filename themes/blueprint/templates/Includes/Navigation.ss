<ul class="navigation sf-menu span12">	
 	<% control Menu(1) %>	  
  		<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode">$MenuTitle.XML</a>
   
  		
  		<% if Children %> 
            <ul> 
            <% control Children %> 
               <li><a class="$LinkingMode" href="$Link" title="Go to the {$Title} page">$MenuTitle</a></li> 
            <% end_control %> 
            </ul> 
         <% end_if %> 
				

	
		</li>
<% end_control %>
</ul>
  		
  		
  		
  		
  				  	