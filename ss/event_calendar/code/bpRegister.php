<?php
/**
 * Defines the bpRegister page type
 */
class Camp extends CalendarEvent {
    static $db = array(
    	'CampRegisterButtonTitle' => 'Text',
        'CampRegisterLink' => 'Text'
    );
    static $has_one = array(
    );
    
    
    
    function getCMSFields() {
        $fields = parent::getCMSFields();
         
        $fields->addFieldToTab('Root.Content.Main', new TextField('CampRegisterButtonTitle',_t('CampRegisterButtonTitle','Register Button Title')), 'Content');
        $fields->addFieldToTab('Root.Content.Main', new TextField('CampRegisterLink',_t('CampRegisterLink','Register URL')), 'Content');
         
        return $fields;
    }
    
}
 
class Camp_Controller extends CalendarEvent_Controller  {
     
}
  
?>