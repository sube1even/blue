<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    		<% base_tag %>
		<title>$Title &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		
		<% require themedCSS(bootstrap) %> 
		<% require themedCSS(bootstrap-responsive) %> 
		<% require themedCSS(superfish) %> 
		<% require themedCSS(styles) %> 
		


		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/blackcandy/css/ie6.css);
			</style> 
		<![endif]-->
		
		<!--[if IE 7]>
			<style type="text/css">
			 @import url(themes/blackcandy/css/ie7.css);
			</style> 
		<![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

      
    

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

	<body>

						
				
			   <div class="clear"><!-- --></div>










	<div class="container">
	
	
		<!--<h1>$SiteConfig.Title</h1><p>$SiteConfig.Tagline</p>-->

				
	<div class="head span4">
		<div class="logo"> 
			
		</div>
		<div class="logo-lc"><a href="http://www.sa.lca.org.au/" class="link-lc">&nbsp;</a></div>
		$SearchForm
	</div>
				
				
		<% include Navigation %>
  	
		$Layout
		
		

	




		<div class="footer">
				<% include Footer %>
		</div> 
		
		
		
	</div>
	
	


    <!-- javascript
    ================================================== -->

   	
   	

	<% require javascript(themes/blueprint/js/jquery.cycle.all.js) %>
   	<% require javascript(themes/blueprint/js/superfish.js) %>
	<% require javascript(themes/blueprint/js/functions.js) %>

		
  

	</body>
</html>
