<% require javascript(event_calendar/javascript/jquery-1.2.6.min.js) %>
<% require javascript(event_calendar/javascript/live_calendar_widget.js) %>
<% require css(event_calendar/css/live_calendar_widget.css) %>
<% if Ajax %><% else %><div id="live-calendar-widget"><% end_if %>
<div id="live-calendar-widget-wrap">
<script type="text/javascript">
( function($) {

	$(document).ready(function () {
		$(".livewidgetmonth").hide();
		$(".livewidgetmonth").each(function(){
			if ($(this).attr('selected') == "selected") { $(this).show(); }
			else { $(this).remove(); }
		});
	});

} ) ( jQuery );

</script>

<table class="calendar" cellspacing="0" cellpadding="0" border="0">
	<thead>
		<tr class="calendarHeader">
			<td colspan="9" class="calendarMonthName">
				<div style="position:relative;">
				<a class="month-nav left" href="$PrevMonthLink">&lt;</a>
				&nbsp;
				
				<div class="hidden-select">
				<% control NavigationOptions %>
					<span class="livewidgetmonth" $Selected>$Month</span>
            	<% end_control %>
            	
				<select id="live-calendar-widget-navigator">		
				  <optgroup label="<% _t('JUMPTOMONTH','Jump to...') %>" />		    
          <% control NavigationOptions %>
            <option value="$Link" $Selected>$Month</option>
          <% end_control %>
 				  <optgroup label="<% _t('QUICKLINKS','Quick Links') %>" />
 				  <option value="$QuickMonthLink">This month</option>
 				  <option value="$QuickWeekLink">This week</option>
 				  <option value="$QuickWeekendLink">This weekend</option>
				</select>
				</div>
				
				    

 				
				
				
				
				&nbsp;
				<a class="month-nav right" href="$NextMonthLink">&gt;</a>
				</div>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<!--<td class="calendarDayName">$Sun</td>
			<td class="calendarDayName">$Mon</td>
			<td class="calendarDayName">$Tue</td>
			<td class="calendarDayName">$Wed</td>
			<td class="calendarDayName">$Thu</td>
			<td class="calendarDayName">$Fri</td>
			<td class="calendarDayName">$Sat</td>-->
			
			<td class="calendarDayName">&nbsp;</td>
			<td class="calendarDayName">S</td>
			<td class="calendarDayName">M</td>
			<td class="calendarDayName">T</td>
			<td class="calendarDayName">W</td>
			<td class="calendarDayName">T</td>
			<td class="calendarDayName">F</td>
			<td class="calendarDayName">S</td>
			<td class="calendarDayName">&nbsp;</td>
		</tr>
	</thead>
	<tbody>
  <% control Weeks %>
		<tr>
		<td>&nbsp;</td>
		<% control Days %>
			<td class="$Today $OutOfMonth $CurrentDay $HasEvent">
			 <a href="$ShowDayLink">$Number</a>
			</td>
    <% end_control %>
    		
			<td class="showWeek">
				<a title="<% _t('SHOWWEEK','Show week') %>" href="$ShowWeekLink">&lt;</a>
			</td>
			
		</tr>
  <% end_control %>
	</tbody>
	
</table>

	<div>
		<a href="$CurrentMonthLink" class="CurrentMonthLink">Show month</a>
	</div>

</div>
<% if Ajax %><% else %></div><% end_if %>