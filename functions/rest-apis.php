<?php
//Test adding basic REST API custom endpoints.

// API calls handler
function pd_api_bootstrap( $request ) {
	require_once(get_template_directory() . '/api/bootstrap.php');
	wp_die();
}
/*
add_action( 'rest_api_init', function () {
	register_rest_route( 'api/v1', '/bootstrap/', array(
		'methods' => 'GET,POST',
		'callback' => 'cb_api_bootstrap',
	) );
} );
 */


// And these two actions are the ajax search actions
// we use the hook wp_ajax_{action} to define our ajax action
// here we defined the 'search' action
// for both logged in and out users
// in your case you probably dont need the 'nopriv' hook, for logged out users
add_action( 'wp_ajax_api', 'pd_api_bootstrap' );
add_action( 'wp_ajax_nopriv_api', 'pd_api_bootstrap' );

function ajax_search() {
	// we send ajax request to ajax_url
	
	$callback = $_REQUEST['callback'];
	$term = $_REQUEST['txtPlaceToSearch'];
	
	// check for term, if doesnt exist die
die("ajax_search");
	
	header("Content-Type: application/json");
	$outData = json_encode($results);

	if(empty($callback)){
		echo $outData;
	}else{
		echo "$callback($outData);";
	}
	
	// kill process
	// all ajax actions in WP need to die when they are done!
	wp_die();
}

