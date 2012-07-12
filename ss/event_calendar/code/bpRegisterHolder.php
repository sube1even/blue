<?php
/**
 * Defines the ArticleHolder page type
 */
class Camps extends Calendar {
    static $db = array(
    );
    static $has_one = array(
    );
    
    static $allowed_children = array('Camp');
}
  
class Camps_Controller extends Calendar_Controller {
     
}
  
?>