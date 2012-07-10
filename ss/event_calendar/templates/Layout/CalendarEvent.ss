<% require css(event_calendar/css/calendar.css) %>
<% require javascript(event_calendar/javascript/calendar_core.js) %>










		
		<div class="span3 subleft">
	
			<div class="subleft-panel">
	
				<h1>$Parent.Title</h1>
				<span class="side-divider"></span>
	
				<ul class="side-menu">
					
					<% include SideBar %>
				</ul>
				
			</div>	
			
		</div>
		
		
		<div class="span9 subright row">
		

			<div class="subright-panel row">
			

		
					
			<% if Level(2) %>
			  	<% include BreadCrumbs %>
			<% end_if %>
		
			<a href="" class="st_sharethis_custom offset7">SHARE</a>
			<span class="top-divider"></span>
					
			<div class="subright-panel-content span5">

				<h1 class="summary">$Title</h1>
				
				<% control CurrentDate %>
				<a href="$ICSLink" title="<% _t('ADD','Add to Calendar') %>">$_Dates</a>
				
				<% if StartTime %>
				
					$_Times
				
				<% end_if %>		
				<% end_control %>




				$Content
				$Form
				$PageComments
				
				<--!<span class="back"><a href="$CalendarBackLink"><% _t('BACKTO','Back to') %> $Parent.Title</a></span>
				<span class="feed"><a href="$RSSLink"><% _t('SUBSCRIBE','Subscribe to the Calendar') %></a></span>-->
				
				
				
				
						
						
					








							<span class="event-date"></span>
							</h3>	
						</div>	
				
						<% if Announcement %>
						    $Content
						<% else %>
						<div class="event-deets">

						    
						</div>
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

