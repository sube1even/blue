<% require css(event_calendar/css/calendar.css) %>
<% require javascript(event_calendar/javascript/calendar_core.js) %>










		
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
			

		
					
			<% if Level(2) %>
			  	<% include BreadCrumbs %>
			<% end_if %>
		
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
				<a href="$ICSLink" title="<% _t('ADD','Add to Calendar') %>">$_Dates</a>
				
				<% if StartTime %>
				
					$_Times
				
				<% end_if %>		
				<% end_control %>




				$Content
				$Form
				$PageComments
				
				<!--<span class="back"><a href="$CalendarBackLink"><% _t('BACKTO','Back to') %> $Parent.Title</a></span>
				<span class="feed"><a href="$RSSLink"><% _t('SUBSCRIBE','Subscribe to the Calendar') %></a></span>-->
				
				
				
				
				<% if Events %>
			
					<% control Events %>
						
						
						
						<div class="event">
							<h2>
							<% if Announcement %>
								$EventTitle
							<% else %>
							
							<a href="$Link">$EventTitle</a>
							<% end_if %>
							
							<span class="event-date">$_Dates</span>
							</h2>	
						</div>	
				
						<% if Announcement %>
						    $Content
						<% else %>
						<div class="event-deets">
						    <!--<% control Event %>
						    	$Content.LimitWordCount(60)<% end_control %>
						    <a href="$Link"><% _t('MORE','more...') %></a>-->
						</div>
						
						<% end_if %>
											
	
						<!--<a class="btn add" href="$ICSLink"><% _t('ADD','Add to Calendar') %></a>-->
							
					
					<% end_control %>
			
			<% else %>
			<% _t('NOEVENTS','There are no events') %>.
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
























