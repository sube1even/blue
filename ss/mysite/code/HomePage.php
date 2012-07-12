<?php
/**
 * Defines the HomePage page type
 */
 
class HomePage extends Page {
   static $db = array(
   );
   static $has_one = array(
   );
}



 
class HomePage_Controller extends Page_Controller {


function UpcomingEvents() 
{ 
//return DataObject::get_one("Calendar")->upcomingEvents(99); 
//return DataObject::get_one("Calendar")->upcomingEvents(5, "Camps"); 

$set = new DataObjectSet(); 
foreach(DataObject::get("Calendar") as $cal) { 
$set->merge($cal->upcomingEvents(4)); 
} 
$arr = $set->toArray(); 
CalendarUtil::date_sort($arr); 
return new DataObjectSet($arr); 

}



     
}