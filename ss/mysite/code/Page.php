<?php
class Page extends SiteTree {

	public static $db = array(
	);
	
	

	public static $has_one = array(
	
	'MyFile' => 'File'
	);
	

	static $many_many = array (
	'MyFiles' => 'File'
	);
	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab("Root.Content.Files", new MultipleFileAttachmentField('MyFiles','Upload some files'));
	$fields->addFieldToTab("Root.Content.Banner", new FileAttachmentField('MyFile','Upload a file'));

	return $fields;
}


/*
static $has_one = array (
'MyFile' => 'File'
);
 
public function getCMSFields() {
$fields = parent::getCMSFields();
$fields->addFieldToTab("Root.Content.File", new FileAttachmentField('MyFile','Upload a file'));
return $fields;
}



static $many_many = array (
'MyFiles' => 'File'
);

public function getCMSFields() {
$fields = parent::getCMSFields();
$fields->addFieldToTab("Root.Content.Files", new MultipleFileAttachmentField('MyFiles','Upload some files'));
return $fields;
}
*/




}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);
	

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form'); 
		//Requirements::themedCSS('jquery.ui.selectmenu'); 
	}


	

public function UpcomingAnnouncements()
{
return DataObject::get_one("Calendar")->upcomingEvents(5, "is_announcement =1");
} 

public function UpcomingNonAnnouncements()
{
return DataObject::get_one("Calendar")->upcomingEvents(5, "is_announcement =0");
} 





	    




public static $has_one = array(
	"Sidebar" => "WidgetArea"
	);
	

	
	public function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab("Root.Content.Widgets", new WidgetAreaEditor("Sidebar"));
	
	return $fields;
}


}