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

function pd_search_main() {
	// we send ajax request to ajax_url
	
	$callback = $_REQUEST['callback'];
	$term = $_REQUEST['txtPlaceToSearch'];

	
	// check for term, if doesnt exist die
	$results = array();
	$args = array(
	   'post_type' => 'places',
	   'post_status' => 'publish',
	   'orderby' => 'place_name',
	   'order'  => 'ASC',
	   's' => $term
	);

	$the_query = new WP_Query( $args );

	// The Loop
	if ( $the_query->have_posts() ) {
		while ( $the_query->have_posts() ) {
			$the_query->the_post();
			$id = get_the_ID();
			$results[$id]['id'] = $id;
			$results[$id]['name'] = get_the_title();
			$results[$id]['link'] = get_permalink( $id );
		}
	}
	
	/* Restore original Post Data */
	wp_reset_postdata();
		
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

add_action( 'wp_ajax_search', 'pd_search_main' );
add_action( 'wp_ajax_nopriv_search', 'pd_search_main' );
