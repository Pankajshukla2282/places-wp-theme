<?php
require_once(__DIR__ . "/Db.php");
class Users{
	var $objDb;
	function __construct(){
		$this->objDb = new Db();
	}

	function signIn($username, $password){
		return $result = $this->objDb->getUserData("*", " username = '".$username."' AND password = '".$password."' AND status = 'ACTIVE'");
	}
}