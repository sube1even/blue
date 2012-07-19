<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'bluepri1_ss',
	"password" => 'S98ay9w9wG',
	"database" => 'bluepri1_ss',
	"path" => '',
);



MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('blackcandy');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();

//===================---------------- START googlemapbasic MODULE ----------------===================
//MUST SET
Object::add_extension('SiteTree', 'GoogleMapBasic');
Object::add_extension('ContentController', 'GoogleMapBasic_Controller');
//DEFAULT
GoogleMapBasic::set_key("AIzaSyDxexHHjcaPQX3KPRyHkFZffD9yRjXSMkg"); //see http://code.google.com/apis/maps/signup.html
//OTHER SITES
//GoogleMapBasic::add_key("abcdef", $url = "http://www.mysite.com"); //see http://code.google.com/apis/maps/signup.html

//MAY SET
//GoogleMapBasic::set_js_location("mysite/javascript/MyMap.js"); //customise JS
//GoogleMapBasic::set_exclude_from_classes(array("HomePage"));  // add relevant page classes
//GoogleMapBasic::set_include_in_classes(array("ContactUsPage"));  //add relevant page classes
//===================---------------- END googlemapbasic MODULE ----------------===================

//Director::set_environment_type('dev');

FulltextSearchable::enable();

SiteTree::$breadcrumbs_delimiter = " <span class='breadcrumb-delimiter'>&nbsp;</span> ";