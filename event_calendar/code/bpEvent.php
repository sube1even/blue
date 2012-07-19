<?php
/**
 * Defines the bpRegister page type
 */
class Event extends CalendarEvent {
    static $db = array(
    	'CampRegisterButtonTitle' => 'Text',
        'CampRegisterLink' => 'Text'
        
    );
    static $has_one = array(

    );
    
    static $many_many = array (
		'MyFiles' => 'File'
	);
    
    
    function getCMSFields() {
        $fields = parent::getCMSFields();
         
        $fields->addFieldToTab('Root.Content.Main', new TextField('CampRegisterButtonTitle',_t('CampRegisterButtonTitle','Register Button Title')), 'Content');
        $fields->addFieldToTab('Root.Content.Main', new TextField('CampRegisterLink',_t('CampRegisterLink','Register URL')), 'Content');
        

        
        $fields->addFieldToTab("Root.Content.Files", new MultipleFileAttachmentField('MyFiles','Upload some files'));
         
        return $fields;
    }
    
    
 
	    
    
}
 
class Event_Controller extends CalendarEvent_Controller  {
     
}
  
?>