EasyMap Widget for SilversStripe 2.4.5+
============================================================================================================
This widget enables you to add a Google Map into the SideBar without a Google Maps API key.

Installation:
-------------
Copy widgets_easymap folder into root of your SilverStripe site, and run:

/dev/build?flush=1 

You can add this widget to your blog using the Widgets tab.

If you are not using the blog module, just add the following lines to your mysite/code/Page.php


	public static $has_one = array(
    "Sidebar" => "WidgetArea"
    );
	
	public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab("Root.Content.Widgets", new WidgetAreaEditor("Sidebar"));
    return $fields;
    }

Then you can use widgets in your themes by adding $Sidebar

If you are using blackcandy or another theme which displays labels as block add the following css to your css file, to fix the TERRAIN checbox inside map when you enable map type selection.

.map-container label {display:inline!important;}

Created by Arda Ayyurek
arda@ayyurek.com