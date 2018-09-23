<?php

function pd_enqueues() {

	/* Styles */

	wp_register_style('jquery-ui-css', get_template_directory_uri() . '/theme/jquery-ui-1.12.1.custom/jquery-ui.min.css', false, '4.0.0-beta', null);
	wp_enqueue_style('jquery-ui-css');
	
	wp_register_style('bootstrap-css', get_template_directory_uri() . '/theme/css/bootstrap.min.css', false, '4.0.0-beta', null);
	wp_enqueue_style('bootstrap-css');

	wp_register_style('font-awesome-css', get_template_directory_uri() . '/theme/css/font-awesome.min.css', false, '4.7.0', null);
	wp_enqueue_style('font-awesome-css');

  	wp_register_style('pd-css', get_template_directory_uri() . '/theme/css/places.css', false, null);
	wp_enqueue_style('pd-css');

	/* Scripts */

	//wp_deregister_script( 'jquery' );
	//wp_register_script('jquery',  get_template_directory_uri() . '/theme/js/jquery-3.2.1.min.js', 'json2', '3.2.1', true);
	wp_enqueue_script( 'jquery' );
	
	//wp_register_script('jquery-ui',  get_template_directory_uri() . '/theme/jquery-ui-1.12.1.custom/jquery-ui.min.js', false, '2.8.3', true);
	wp_enqueue_script( 'jquery-ui' );
	wp_enqueue_script( 'jquery-ui-autocomplete' );
	/* Note: this enqueue above uses WordPress's onboard jQuery. You can enqueue other pre-registered scripts from WordPress too. See:
	https://developer.wordpress.org/reference/functions/wp_enqueue_script/#Default_Scripts_Included_and_Registered_by_WordPress */

	wp_register_script('pd-jsmap', get_template_directory_uri() . '/theme/js/googleApi.js', false, null, false);
	wp_enqueue_script('pd-jsmap');
	
  	wp_register_script('modernizr',  get_template_directory_uri() . '/theme/js/modernizr.min.js', false, '2.8.3', true);
	wp_enqueue_script('modernizr');

	wp_register_script('popper',  get_template_directory_uri() . '/theme/js/popper.min.js', false, '1.11.0', true);
	wp_enqueue_script('popper');

  	wp_register_script('bootstrap-js', get_template_directory_uri() . '/theme/js/bootstrap.min.js', false, '4.0.0-beta', true);
	wp_enqueue_script('bootstrap-js');

	//Load angular
	//wp_register_script('angularjs', get_template_directory_uri() . '/theme/js/angular.min.js', false, '1.6.4', true);
	//wp_enqueue_script('angularjs');
	//wp_enqueue_script('angularjs-route', get_template_directory_uri() .'/theme/js/angular-route.min.js');
	//wp_enqueue_script('scripts', get_stylesheet_directory_uri() . '/js/scripts.js', array( 'angularjs', 'angularjs-route' ));
	
	wp_register_script('pd-jsutils', get_template_directory_uri() . '/theme/js/utils.js', false, null, false);
	wp_enqueue_script('pd-jsutils');
	
	wp_register_script('pd-js', get_template_directory_uri() . '/theme/js/places.js', array( 'jquery', 'pd-jsutils', 'pd-jsmap' ), null, true);
	//wp_register_script('pd-js', get_template_directory_uri() . '/theme/js/places.js', false, null, true);
	wp_enqueue_script('pd-js');
	
	if (is_singular() && comments_open() && get_option('thread_comments')) {
		wp_enqueue_script('comment-reply');
	}
}
add_action('wp_enqueue_scripts', 'pd_enqueues', 1);


function pd_admin_enqueues() {

	/* Styles */

	wp_register_style('jquery-ui-css', get_template_directory_uri() . '/theme/jquery-ui-1.12.1.custom/jquery-ui.min.css', false, '4.0.0-beta', null);
	wp_enqueue_style('jquery-ui-css');

	wp_register_style('pd-css', get_template_directory_uri() . '/theme/css/editor-style.css', false, null);
	wp_enqueue_style('pd-css');
	
	/* Scripts */

	//wp_deregister_script( 'jquery' );
	//wp_register_script('jquery',  get_template_directory_uri() . '/theme/js/jquery-3.2.1.min.js', 'json2', '3.2.1', true);
	wp_enqueue_script( 'jquery' );

	//wp_register_script('jquery-ui',  get_template_directory_uri() . '/theme/jquery-ui-1.12.1.custom/jquery-ui.min.js', false, '2.8.3', true);
	wp_enqueue_script( 'jquery-ui' );
	wp_enqueue_script( 'jquery-ui-autocomplete' );
	/* Note: this enqueue above uses WordPress's onboard jQuery. You can enqueue other pre-registered scripts from WordPress too. See:
	 https://developer.wordpress.org/reference/functions/wp_enqueue_script/#Default_Scripts_Included_and_Registered_by_WordPress */

	wp_register_script('pd-jsmap', get_template_directory_uri() . '/theme/js/googleApi.js', false, null, false);
	wp_enqueue_script('pd-jsmap');

	wp_register_script('pd-jsutils', get_template_directory_uri() . '/theme/js/utils.js', false, null, false);
	wp_enqueue_script('pd-jsutils');

	wp_register_script('pd-js', get_template_directory_uri() . '/theme/js/placesAdmin.js', array( 'jquery-ui-autocomplete', 'pd-jsutils', 'pd-jsmap' ), null, true);
	wp_enqueue_script('pd-js');
}
add_action( 'admin_enqueue_scripts', 'pd_admin_enqueues' );