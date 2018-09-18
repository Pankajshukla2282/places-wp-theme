<?php
$arrMarker = array(
		'center_lat'=>$_REQUEST['lat'],
		'center_lng'=>$_REQUEST['lng'],
		'search_radius'=>isset($_REQUEST['radius'])?25:0
		);
require_once("classes/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->searchMarkerByLatLng($arrMarker));