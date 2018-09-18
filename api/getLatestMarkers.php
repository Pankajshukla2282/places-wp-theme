<?php
require_once("classes/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->getLatestMarkers());