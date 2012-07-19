
  	
		
		<div class="span3 subleft">
	
			<div class="subleft-panel">
	
				<h1><% control Level(1) %>$Title<% end_control %></h1>
				<span class="side-divider"></span>
	
				<ul class="side-menu">
					<% include SideBar %>
				</ul>
				
				
			</div>	
			
		</div>
		
					<% if Level(2) %>
			  	<% include BreadCrumbs %>
			<% end_if %>
			
		<div class="span9 subright row">
		

			<div class="subright-panel row">
			

				
			<% if Menu(2) %>
				
				<!--<div id="Content">-->
			<% end_if %>
					

		
		<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">
	stLight.options({
		publisher:'xa-50046146109fdde8', onhover: false
	});
</script>
			<a href="" class="st_sharethis_custom offset7">SHARE</a>
			
			
			<span class='st_facebook_large' displayText='Facebook'></span>
<span class='st_twitter_large' displayText='Tweet'></span>
<span class='st_pinterest_large' displayText='Pinterest'></span>
<span class='st_email_large' displayText='Email'></span>



			
			<span class="top-divider"></span>
			
			<% include GoogleMapBasic %>
			
			<% if MyFile %>
							<div class="banner-image">
								
								
								<% control MyFile %>
									<img src="$URL" />
								<% end_control %>
							</div>
						<% end_if %>	
			
			<div class="subright-panel-content span5">
				
				
				$Content
				$Form
				$PageComments
				
				
						
				$UserDefinedForm
				
				
		
			</div>
				
			</div>
			
		</div>
	

