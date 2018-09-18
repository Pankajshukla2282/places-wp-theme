<?php
	$searchTerm = isset($_REQUEST['txtPlaceToSearch']) 	? $_REQUEST["txtPlaceToSearch"]	: null ;
	
	if(empty($searchTerm)){
		echo "Missing search string";
		exit();
	}

	require_once(__DIR__ . "/classes/Markers.php");
	$objMarkers = new Markers();
	echo json_encode($objMarkers->searchMarkers($searchTerm));
