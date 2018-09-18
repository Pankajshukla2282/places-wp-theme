<?php
require_once(__DIR__ . "/Markers.php");
$objMarkers = new Markers();
echo json_encode($objMarkers->getMarkers());