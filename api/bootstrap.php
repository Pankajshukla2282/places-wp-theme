<?php
$ip 			= rawurlencode($_SERVER["REMOTE_ADDR"]);
$agent 			= rawurlencode($_SERVER["HTTP_USER_AGENT"]);

$service= isset($_REQUEST['service']) 	? $_REQUEST["service"]	: null ;
$cb= isset($_REQUEST['cb']) ? $_REQUEST["cb"]	: null;
if(empty($cb)){
	$cb= isset($_REQUEST['callback']) ? $_REQUEST["callback"]	: null ;
}
$return= isset($_REQUEST['return']) 	? $_REQUEST["return"]	: "json" ;
$errors=false;
$response='';

if(empty($service)){
	echo "Missing Service";
	exit();
}

unset($_REQUEST['service']);
unset($_REQUEST['cb']);
unset($_REQUEST['callback']);


//$url = 'http://www.placedetails.com/api/'.$service.'.php';
$url = get_template_directory_uri() . '/api/'.$service.'.php';
$arrPostdata=array_merge($_GET,$_POST);

$ipAddress = !empty($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
if ( !empty($ipAddress) ) {
	$arrPostdata['ipaddress'] = $ipAddress;
}
$language=$_SERVER['HTTP_ACCEPT_LANGUAGE'];
if(!empty($language)){
	$arrPostdata['language'] = $language;
}

$arrPostdata['ip'] = urlencode($ipAddress);
$arrPostdata['agent'] = urlencode($agent);

$postdata = http_build_query($arrPostdata);

require_once ("Apicaller.php");
require_once ("Output.php");
if ( !empty($postdata) ) {
	list($output,$info) = Apicaller::makePostRequest($url,$postdata);
	new Output(json_decode($output, true), $return, $cb);
}
