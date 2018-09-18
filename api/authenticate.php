<?php
$username= isset($_REQUEST['txtUsername']) 	? $_REQUEST["txtUsername"]	: null ;
$password= isset($_REQUEST['txtPassword']) 	? $_REQUEST["txtPassword"]	: null ;

if(empty($username)){
	echo "Missing Username";
	exit();
}

if(empty($password)){
	echo "Missing Password";
	exit();
}
require_once("classes/Users.php");
$objUsers = new Users();
echo json_encode($objUsers->signIn($username, $password));