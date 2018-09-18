<?php
$markerId= isset($_REQUEST['placeId']) 	? $_REQUEST["placeId"]	: null ;

if(empty($markerId)){
	echo "Missing Marker Id";
	exit();
}
require_once("classes/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->getMarker($markerId));