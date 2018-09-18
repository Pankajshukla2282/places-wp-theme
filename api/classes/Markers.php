<?php
require_once(__DIR__ . "/Db.php");
class Markers{
	var $objDb;
	var $markers;
	var $latestMarkers;
	var $latestSearches;
	function __construct(){
		$this->objDb = new Db();
		$this->markers = array();
	}

	function getMarkers(){
		$this->markers = $this->objDb->getMarkerData();
		return $this->markers;
	}

	function searchMarkers($searchTerm){
		return $result = $this->objDb->getMarkerData("*", " name LIKE '%".$searchTerm."%'");
	}

	function searchMarkerByLatLng($arrMarker){
		return $this->objDb->getMarkersIn25KM($arrMarker['center_lat'], $arrMarker['center_lng'], $arrMarker['search_radius']);
	}
	
	function getMarkersByUserId($userId){
		$this->markers = $this->objDb->getMarkerDataByUser($userId);
		return $this->markers;
	}
	
	function getMarker($markerId){
		if(empty($markerId)){
			return null;
		}
		if(empty($this->markers[$markerId])){
			$this->getMarkers();
		}
		if(empty($this->markers[$markerId])){ // Check again, if available in DB
			return null;
		}else{
			return array($markerId=>($this->markers[$markerId]));
		}
	}
	
	function createMarker($arrMarker){
		if(empty($arrMarker)){
			return null;
		}else{
			foreach($arrMarker as $k=>$v){
				$arrMarker[$k] = mysql_real_escape_string($v);
			}
			$fieldNamesCSV = "name,type,lat,lng";
			$fieldValuesCSV = "'".$arrMarker['marker_name']."','".$arrMarker['marker_type']."','".$arrMarker['marker_lat']."','".$arrMarker['marker_lng']."'";
			return $this->objDb->createMarker($fieldNamesCSV, $fieldValuesCSV); // Returns inserted markerId
		}
	}

	function getLatestMarkers(){
		$this->latestMarkers = $this->objDb->getLatestMarkers();
		return $this->latestMarkers;
	}
	
	function storeSearch($arrSearchInfo){
		if(empty($arrSearchInfo)){
			return null;
		}else{
			foreach($arrSearchInfo as $k=>$v){
				$arrSearchInfo[$k] = mysql_real_escape_string($v);
			}
			$fieldNamesCSV = "marker_id,search_query,search_nearby";
			$fieldValuesCSV = $arrSearchInfo['marker_id'].",'".$arrSearchInfo['search_query']."',".$arrSearchInfo['search_nearby'];
			return $this->objDb->storeSearch($fieldNamesCSV, $fieldValuesCSV, $arrSearchInfo['search_query']); // Returns inserted searchId
		}
	}
	
	function getLatestSearches(){
		$this->latestSearches = $this->objDb->getLatestSearches();
		return $this->latestSearches;
	}

	function getRelatedMarkersData($markerId){
		if(empty($markerId)){
			return null;
		}
		return $this->objDb->getRelatedMarkersData($markerId);
	}
}