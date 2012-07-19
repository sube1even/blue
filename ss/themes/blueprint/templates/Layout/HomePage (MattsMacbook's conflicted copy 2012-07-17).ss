<% require css(event_calendar/css/calendar.css) %>
<% require javascript(event_calendar/javascript/calendar_core.js) %>


		
<div class="slider-container span12">
		<div id="slider" style="position: relative; ">

				<img src="../images/image.png" width="960" height="330" style="position: absolute; z-index: 4; top: 0px; left: 0px; display: block; width: 960px; height: 330px; opacity: 1; ">
			
				<img src="../images/image2.png" width="960" height="330" style="position: absolute; top: 0px; left: 0px; width: 960px; height: 330px; z-index: 3; opacity: 0; display: none; ">
				
				<img src="../images/image3.png" width="960" height="330" style="position: absolute; top: 0px; left: 0px; width: 960px; height: 330px; z-index: 3; opacity: 0; display: none; ">
			

		</div><div id="slider-pages"><a href="#" class="activeSlide">1</a><a href="#" class="">2</a><a href="#" class="">3</a></div>
		<div class="slide-overlay"></div>
	</div>

	<div class="left-panel span8">

		<h1 class="events-heading">Upcoming</h1>

		<div class="event-list">
		

		
			<!--<a href="$RSSLink"><% _t('SUBSCRIBE','Subscribe to the Calendar') %></a>-->

			
			
			
			
			<% control UpcomingEvents %> 
$Event.Title $_Dates $Event.Link, etc.. 
<% end_control %>
			
		
			
			
			
			<% if Events %>
			
					<% control Events %>
					
						
						<div class="event">
							<h3>
							<% if Announcement %>
								$EventTitle
							<% else %>
							
							<a href="$Link">$EventTitle</a>
							<% end_if %>
							
							<span class="event-date">$_Dates</span>
							</h3>	
						</div>	
				
						<% if Announcement %>
						    $Content
						<% else %>
						<div class="event-deets">
						    <% control Event %>$Content.LimitWordCount(60)<% end_control %> 
						    <a href="$Link"><% _t('MORE','more...') %></a>
						</div>
						
						<% end_if %>
											
	
						<!--<a class="btn add" href="$ICSLink"><% _t('ADD','Add to Calendar') %></a>-->
							
					
					<% end_control %>
			
			<% else %>
			<% _t('NOEVENTS','There are no events') %>.
			<% end_if %>


			<a href="camps.html">See all...</a>
			
			




		

		</div>
		
	</div>
	
	<div class="right-panel span5">
		<h1 class="calendar-heading">Calendar</h1>
		<div class="event-calendar">
		
			$LiveCalendarWidget
			
			
		
		</div>
		
	</div>
	
	
	
	
	
	
	
	
	
	
		<div style="display:none"> $Content
		
		$CalendarWidget
		$MonthNavigator
		$CalendarFilterForm</div>