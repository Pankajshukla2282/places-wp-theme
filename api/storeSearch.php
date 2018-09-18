<?php
$arrSearchInfo = array(
		"search_query" => $_REQUEST["txtPlaceToSearch"],
		"marker_id" => $_REQUEST["hidMatchMarkerId"],
		"search_nearby" => isset($_REQUEST["chkNearBy"])?1:0
	);
$markerId = $arrSearchInfo['marker_id'];
require_once("classes/Markers.php");
$objMarkers = new Markers();
$response = json_encode($objMarkers->storeSearch($arrSearchInfo));
if(!empty($arrSearchInfo['search_nearby']) && $markerId){
	$resMarker = $objMarkers->getMarker($markerId);
	
	$arrMarker = array(
			'center_lat'=>$resMarker[$markerId]['lat'],
			'center_lng'=>$resMarker[$markerId]['lng'],
			'search_radius'=>$arrSearchInfo['search_nearby']);
	$response = json_encode($objMarkers->searchMarkerByLatLng($arrMarker));
}
echo $response;
