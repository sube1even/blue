<% if GoogleMapBasic %>
	<div id="GoogleMapBasic">
		<% if StaticMap %>
		<a href="$GoogleMapBasicExternalLink">
			<img src="$GoogleMapBasicStaticMapSource(240,210)" alt="$Address.ATT" width="240" height="210" />
		</a>
		<div class="staticInfoWindowContent">$InfoWindowContent</div>
		<% else %>
			$GoogleMapBasic
		<% end_if %>
	</div>
<% end_if %>


