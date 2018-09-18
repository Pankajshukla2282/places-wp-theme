<?php
class Db{	
	private $con = NULL;
	function __construct($dbHost="localhost",$dbUser="root", $dbPass="", $dbName="placedetails"){
		// Opens a connection to a mySQL server
		$con=mysql_connect ($dbHost, $dbUser, $dbPass);
		if (!$con) {
			die('Not connected : ' . mysql_error($con));
		}

		// Set the active mySQL database
		$db_selected = mysql_select_db($dbName, $con);
		if (!$db_selected) {
			die ('Can\'t use db : ' . mysql_error($con));
		}
		$this->con = $con;
	}

	function select($table, $fieldNames="*", $whereCond = " 1 "){
		$query = "SELECT $fieldNames FROM ".$table." WHERE ".$whereCond;
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		}
		
		return $result;
	}
	function getUserData($fieldNames="*", $whereCond = " 1 "){
		// Select all the rows in the users table
		/* $query = "SELECT $fieldNames FROM users WHERE ".$whereCond;
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		} */
		$result = $this->select($table, $fieldNames, $whereCond);
		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			unset($row['password']);
			$recs[$row['id']] = $row;
		}
		return $recs;
	}
	
	function createMarker($fieldNamesCSV, $fieldValuesCSV){
		$query = "INSERT INTO markers (".$fieldNamesCSV.") VALUES (".$fieldValuesCSV.")";
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		}
		return @mysql_insert_id($this->con);
	}

	function updateMarker($markerId, $fieldNamesCSV, $fieldValuesCSV){
		$query = "UPDATE markers SET (".$fieldNamesCSV.") VALUES (".$fieldValuesCSV.") WHERE id = ".$markerId;
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		}
		return @mysql_affected_rows($this->con);
	}
	
	function getMarkerData($fieldNames="*", $whereCond = " 1 "){
		// Select all the rows in the markers table
		/* $query = "SELECT $fieldNames FROM markers WHERE ".$whereCond;
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		} */
		$result = $this->select($table, $fieldNames, $whereCond);
		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			$recs[$row['id']] = $row;
		}
		return $recs;
	}

	function getMarkerDataByUser($userIds_csv){
		// Select all the rows in the markers table
		//$query = "SELECT m.*, map.id as map_id, map.user_id, map.is_owner FROM user_marker map LEFT JOIN markers m ON(map.marker_id=m.id) WHERE user_id = ".$userIds_csv;
		/* $query = "SELECT m.*, map.id as map_id, map.user_id, map.is_owner FROM user_marker map LEFT JOIN markers m ON(map.marker_id=m.id) WHERE user_id IN (".$userIds_csv.")";
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		} */
		$table = " user_marker map LEFT JOIN markers m ON(map.marker_id=m.id) ";
		$fieldNames = " m.*, map.id as map_id, map.user_id, map.is_owner ";
		$whereCond = " user_id IN (".$userIds_csv.") ";
		$result = $this->select($table, $fieldNames, $whereCond);
		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			$recs[$row['id']] = $row;
		}
		return $recs;
	}
	
	function getMarkersIn25KM($center_lat, $center_lng, $radius){
		// Search the rows in the markers table
		
		// Miles
		//$query = sprintf("SELECT address, name, lat, lng, ( 3959 * acos( cos( radians('%s') ) * cos( radians( lat ) ) * cos( radians( lng ) - radians('%s') ) + sin( radians('%s') ) * sin( radians( lat ) ) ) ) AS distance FROM markers HAVING distance < '%s' ORDER BY distance LIMIT 0 , 20",
		
		// Kilometers
		$query = sprintf("SELECT *, ( 6371 * acos( cos( radians('%s') ) * cos( radians( lat ) ) * cos( radians( lng ) - radians('%s') ) + sin( radians('%s') ) * sin( radians( lat ) ) ) ) AS distance FROM markers HAVING distance < '%s' ORDER BY distance",
				mysql_real_escape_string($center_lat),
				mysql_real_escape_string($center_lng),
				mysql_real_escape_string($center_lat),
				mysql_real_escape_string($radius));
		$result = mysql_query($query);
		
		//$result = mysql_query($query);
		if (!$result) {
			die("Invalid query: " . mysql_error());
		}
		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			$recs[$row['id']] = $row;
		}
		return $recs;
	}
	
	function getLatestMarkers($fieldNames="*"){
		// Select all the rows in the markers table
		/* $query = "SELECT $fieldNames FROM markers WHERE 1 ORDER BY added_time DESC LIMIT 0, 5";
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		} */
		$result = $this->select("markers", $fieldNames, " 1 ORDER BY added_time DESC LIMIT 0, 5");
		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			$recs[$row['id']] = $row;
		}
		return $recs;
	}
	
	function getLatestSearches($fieldNames="*"){
		// Select all the rows in the markers table
		/* $query = "SELECT $fieldNames FROM markers WHERE id IN (SELECT marker_id FROM searches ORDER BY search_time DESC) ORDER BY added_time DESC LIMIT 0, 5";
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		} */
		$result = $this->select("markers", $fieldNames, " id IN (SELECT marker_id FROM searches ORDER BY search_time DESC) ORDER BY added_time DESC LIMIT 0, 5");
		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			$recs[$row['id']] = $row;
		}
		return $recs;
	}

	function storeSearch($fieldNamesCSV, $fieldValuesCSV){
		$query = "INSERT INTO searches (".$fieldNamesCSV.") VALUES (".$fieldValuesCSV.")";
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		}
		return @mysql_insert_id($this->con);
	}

	function getRelatedMarkersData($markerId){
		// Select all the users and relation in the user_marker table where marker_id is $markerId
		// Then select all markers in user_marker table where user_id IN (selected users) 
		//$query = "SELECT map.id as map_id, map.user_id, map.is_owner, map.relation_id FROM user_marker map WHERE map.user_id IN (SELECT m.user_id FROM user_marker m WHERE m.marker_id = ".$markerId.")";
		/* $query = "SELECT m.*, map.id as map_id, map.user_id, map.is_owner, map.relation_id FROM user_marker um, user_marker map LEFT JOIN markers m ON(map.marker_id=m.id) WHERE um.marker_id = ".$markerId." AND map.user_id=um.user_id";
		$result = mysql_query($query, $this->con);
		if (!$result) {
			die('Invalid query: ' . mysql_error($this->con));
		} */
		$table = " user_marker um, user_marker map LEFT JOIN markers m ON(map.marker_id=m.id) ";
		$fieldNames = " m.*, map.id as map_id, map.user_id, map.is_owner, map.relation_id ";
		$whereCond = " um.marker_id = ".$markerId." AND map.user_id=um.user_id ";
		$result = $this->select($table, $fieldNames, $whereCond);

		$recs = array();
		while ($row = @mysql_fetch_assoc($result)){
			$recs[$row['map_id']] = $row;
		}
		return $recs;
	}
}
