<?php
$markerId = $_REQUEST['markerId'];
require_once("classes/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->getRelatedMarkersData($markerId));