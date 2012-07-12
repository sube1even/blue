<?php

class EasyMap extends Widget {
	
	static $db = array(
		"MapName" => "Varchar",
		"MapHeight" => "Varchar",
		"MapWidth" => "Varchar",
		"MapLat" => "Varchar",
		"MapLng" => "Varchar",
		"MapText" => "HTMLText",
		"MapZoom" => "Int",
		"MapPanCnt" => "Varchar",
		"MapZoomCnt" => "Varchar",
		"MapTypeCnt" => "Varchar",
		"MapScaleCnt" => "Varchar",
		"MapStreetViewCnt" => "Varchar",
		"MapOverviewCnt" => "Varchar",
		"MapType" => "Enum('ROADMAP, HYBRID, SATELLITE, TERRAIN', 'ROADMAP')"
		);
	
	static $defaults = array(
		"MapName" => "Istanbul",
		"MapHeight" => "200px",
		"MapWidth" => "250px",
		"MapLat" => 41.046654,
		"MapLng" => 29.032509,
		"MapText" => "A wonderful<br/>city connecting <br/><b>Asia and Europe.</b>",
		"MapZoom" => "4",
		"MapPanCnt" => "false",
		"MapZoomCnt" => "true",
		"MapTypeCnt" => "false",
		"MapScaleCnt" => "false",
		"MapStreetViewCnt" => "false",
		"MapOverviewCnt" => "false"
	);
	
	static $title = "Map";
	static $cmsTitle = "Google Map";
	static $description = "Adds a Google Map to your web site";
	
	
    function output() {
    	$id = $this->createMapID();
    	
    	Requirements::javascript("http://maps.google.com/maps/api/js?sensor=false");
		Requirements::javascript("sapphire/thirdparty/jquery/jquery.js");
    	Requirements::javascript("widgets_easymap/jquery.gmap.min.js");

		$mapContainer = "<div style='width:".$this->MapWidth.";height:".$this->MapHeight.";' class='map-container' id='map-container-".$id."'></div>";
		
		$outputStr = $mapContainer.'<script>'
			.'$("#map-container-'.$id.'").gMap({'
			.'latitude: '.$this->MapLat.','
			.'longitude: '.$this->MapLng.','
			.'zoom: '.$this->MapZoom.','
			.'maptype: "'.$this->MapType.'",'
			.'	markers: ['
			.'		{latitude: '.$this->MapLat.', longitude: '.$this->MapLng.', html:"'.$this->MapText.'" }'
			.'	],'
			.'	controls: {'
			.'		panControl: '.$this->MapPanCnt.','
			.'		zoomControl: '.$this->MapZoomCnt.','
			.'		mapTypeControl: '.$this->MapTypeCnt.','
			.'		scaleControl: '.$this->MapScaleCnt.','
			.'		streetViewControl: '.$this->MapStreetViewCnt.','
			.'		overviewMapControl: '.$this->MapOverviewCnt.''
			.'	}'
			;
		$outputStr .='});'
			.'</script>';
		
		return $outputStr;

	}
	
	function createMapID(){
		return $this->ID;
	}
		
	function getCMSFields() {
           
		return new FieldSet(
			new TextField("MapName", "Map Title "),
			new TextField("MapHeight", "Map Height "),
			new TextField("MapWidth", "Map Width "),
			new TextField("MapLat", "Latitude "),
			new TextField("MapLng", "Longitude "),
			new TextField("MapText", "Map Text "),
		    new TextField("MapZoom", "Zoom Level "),
			new DropdownField(
			'MapType',
			'Choose a map type',
			$this->dbObject('MapType')->enumValues()
			),
			new DropdownField(
			   'MapPanCnt',
			   'Pan Control',
			   array(
				 'true' => 'Show',
				 'false' => 'Hide'
			   )
			 ),
			 new DropdownField(
			   'MapZoomCnt',
			   'Zoom Control',
			   array(
				 'true' => 'Show',
				 'false' => 'Hide'
			   )
			 ),
			 new DropdownField(
			   'MapTypeCnt',
			   'Map Type Control',
			   array(
				 'true' => 'Show',
				 'false' => 'Hide'
			   )
			 ),
			 new DropdownField(
			   'MapScaleCnt',
			   'Map Scale Control',
			   array(
				 'true' => 'Show',
				 'false' => 'Hide'
			   )
			 ),
			 new DropdownField(
			   'MapStreetViewCnt',
			   'Street View',
			   array(
				 'true' => 'Show',
				 'false' => 'Hide'
			   )
			 ),
			 new DropdownField(
			   'MapOverviewCnt',
			   'Map Overview',
			   array(
				 'true' => 'Show',
				 'false' => 'Hide'
			   )
			 )
		);

	}
}


?>