<?php
$userId= isset($_REQUEST['userId']) 	? $_REQUEST["userId"]	: null ;

if(empty($userId)){
	echo "Missing User Id";
	exit();
}
require_once("classes/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->getMarkersByUserId($userId));