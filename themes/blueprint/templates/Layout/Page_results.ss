  	
		
		<div class="span3 subleft">
	
			<div class="subleft-panel">
	
				<h1>$Title</h1>
				<span class="side-divider"></span>
	
				
				
				
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
					
			
		
			<a href="" class="st_sharethis_custom offset7">SHARE</a>
			<span class="top-divider"></span>
			
			<h1>$Title</h1>
			
			<div class="subright-panel-content span5">
				
		
					<% if Results %>
					    <ul id="SearchResults">
					      <% control Results %>
					        <li>
					            <% if MenuTitle %>
					              <h3><a class="searchResultHeader" href="$Link">$MenuTitle</a></h3>
					            <% else %>
					              <h3><a class="searchResultHeader" href="$Link">$Title</a></h3>
					            <% end_if %>
							  <% if Content %>
					          	$Content.FirstParagraph(html)
							  <% end_if %>
					          <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">blueprintministries.org.au{$Link}</a>
					        </li>
					      <% end_control %>
					    </ul>
					  <% else %>
					    <p>Sorry, your search query did not return any results.</p>
					  <% end_if %>
				
					  <% if Results.MoreThanOnePage %>
					    <div id="PageNumbers">
					      <% if Results.NotLastPage %>
					        <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
					      <% end_if %>
					      <% if Results.NotFirstPage %>
					        <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
					      <% end_if %>
					      <span>
					        <% control Results.SummaryPagination(5) %>
					          <% if CurrentBool %>
					            $PageNum
					          <% else %>
					            <a href="$Link" title="View page number $PageNum">$PageNum</a>
					          <% end_if %>
					        <% end_control %>
					      </span>
				      
					    </div>
					 <% end_if %>
			
				
						
				
				
				
		
			</div>
				
			</div>
			
		</div>
	











