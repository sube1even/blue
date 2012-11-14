<div class="slider-container span12">
		<div id="slider" style="position: relative; ">

			
			<% if MyFiles %>
				<% control MyFiles %>
					<img src="$URL" />
				<% end_control %>
			<% end_if %>
			
	
		</div><div id="slider-pages"><a href="#" class="activeSlide">1</a><a href="#" class="">2</a><a href="#" class="">3</a></div>
		<div class="slide-overlay"></div>
	</div>

	<div class="left-panel span8">

		<h1 class="events-heading">Upcoming</h1>
		
		
		
		<div class="event-list">
			
			<% if Content %>
			<div class="event newstop">
				$Content
			</div>
			<% end_if %>
			
			<!--<a href="$RSSLink"><% _t('SUBSCRIBE','Subscribe to the Calendar') %></a>-->
			
			<% control UpcomingEvents %> 
						
						
							
						<div class="event">
							<h3>
							<% if Announcement %>
								$EventTitle
							<% else %>
							
							<a href="$Event.Link">$Event.Title</a>
							<% end_if %>
							
							<span class="event-date">$_Dates</span>
							</h3>	
						</div>	
				
						<% if Announcement %>
						    $Content
						<% else %>
						<div class="event-deets">
						    <% control Event %>$Content.Summary(25)<% end_control %> 
						    <a href="$Link"><% _t('MORE','more...') %></a>
						</div>
						
						<% end_if %>
											
	
						<!--<a class="btn add" href="$ICSLink"><% _t('ADD','Add to Calendar') %></a>-->
							
					
				
			<% end_control %>
			


			</div>
		
	</div>
	
	<div class="right-panel span5">
		<h1 class="calendar-heading">Calendar</h1>
		<div class="event-calendar">
	
			$LiveCalendarWidget(events) 

				
		
		</div>
		
	</div>
	
	
	
	
	
		<div style="display:none"> $Content
		
		$CalendarWidget
		$MonthNavigator
		$CalendarFilterForm</div>