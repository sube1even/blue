<?php
/**
 * Defines the ArticleHolder page type
 */
class Events extends Calendar {
    static $db = array(
    );
    static $has_one = array(
    );
    
    static $allowed_children = array('Event');
}
  
class Events_Controller extends Calendar_Controller {
     
}
  
?>