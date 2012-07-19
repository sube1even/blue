<% require css(event_calendar/css/calendar.css) %>
<% require javascript(event_calendar/javascript/calendar_core.js) %>










		
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
			

		
		
			<a href="" class="st_sharethis_custom offset7">SHARE</a>
			<span class="top-divider"></span>
			
						<% if MyFile %>
							<div class="banner-image">
								
								
								<% control MyFile %>
									<img src="$URL" />
								<% end_control %>
							</div>
						<% end_if %>
						
					
			<div class="subright-panel-content span5">

				<h1 class="summary">$Title</h1>
				
				<% control CurrentDate %>
					<!--<a href="$ICSLink" title="<% _t('ADD','Add to Calendar') %>">$_Dates</a>-->
					<h2>$_Dates</h2>
				
				<% if StartTime %>
				
					$_Times
				
				<% end_if %>		
				<% end_control %>




				$Content
				$Form
				$PageComments
				
				<!--<span class="back"><a href="$CalendarBackLink"><% _t('BACKTO','Back to') %> $Parent.Title</a></span>
				<span class="feed"><a href="$RSSLink"><% _t('SUBSCRIBE','Subscribe to the Calendar') %></a></span>-->
				
				
				
				
						
						
					




						</div>	
				
						<% if Announcement %>
						    $Content
						<% else %>
						<div class="event-deets">

						    
						</div>
						<% end_if %>
					
			
		

						<div class="subright-panel-menu span3">
						
						<% if MyFiles %>
							<div class="download-list">
								<h2 class="download">Download</h2>
								<span class="rightmenu-divider"></span>
								
								<% control MyFiles %>
									<div class="download-item"><a href="$URL" class="download-itemlink">$Title</a> [$Size]</div>
								<% end_control %>
							</div>
						<% end_if %>
								
							<% if GoogleMapBasic %>
								
							
								<h2 class="location">Location</h2>
								<span class="rightmenu-divider"></span>			
								<div class="address">
									<p>$Address</p>
								</div>
								<div id="GoogleMapBasic">
									<% if StaticMap %>
									<a href="$GoogleMapBasicExternalLink">
										<img src="$GoogleMapBasicStaticMapSource(240,210)" alt="$Address.ATT" width="240" height="210" />
									</a>
									<!--<div class="staticInfoWindowContent">$InfoWindowContent</div>-->
									<% else %>
										$GoogleMapBasic
									<% end_if %>
								</div>
							<% end_if %>
							
							
							<% if CampRegisterLink %>
								
								<div class="CampRegisterLinkWrap"><a href="$CampRegisterLink" class="CampRegisterLink">$CampRegisterButtonTitle</a></div>
								
							<% end_if %>
							
						</div>
				

				
				
				
				
				
				
				
				
		
			</div>
			
				
			
			
		</div>
	





<% if OtherDates %>

					<% _t('ADDITIONALDATES','Additional Dates') %>
					
					<% control OtherDates %>
						<!--<a href="$Link" title="$Event.Title">$_Dates</a>-->

					
							
					<% end_control %> 
					
				<% end_if %>



