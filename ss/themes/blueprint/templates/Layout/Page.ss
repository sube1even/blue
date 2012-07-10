
  	
		
		<div class="span3 subleft">
	
			<div class="subleft-panel">
	
				<h1>$Title</h1>
				<span class="side-divider"></span>
	
				<ul class="side-menu">
					<% include SideBar %>
				</ul>
				
			</div>	
			
		</div>
		
		
		<div class="span9 subright row">
		

			<div class="subright-panel row">
			

				
			<% if Menu(2) %>
				
				<!--<div id="Content">-->
			<% end_if %>
					
			<% if Level(2) %>
			  	<% include BreadCrumbs %>
			<% end_if %>
		
			<a href="" class="st_sharethis_custom offset7">SHARE</a>
			<span class="top-divider"></span>
					
			<div class="subright-panel-content span5">
				$Content
				$Form
				$PageComments
				
				
				
				
				
				
				
				
				
				
				
				
				
				
		
			</div>
				
			</div>
			
		</div>
	

