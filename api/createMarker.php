<?php
$arrMarker = array(
		'marker_name'=>$_REQUEST['txtName'],
		'marker_type'=>$_REQUEST['selType'],
		'marker_lat'=>$_REQUEST['hidLatitude'],
		'marker_lng'=>$_REQUEST['hidLongitude']);

require_once("classes/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->createMarker($arrMarker));