<?php

function pd_setup() {
	add_editor_style('theme/css/editor-style.css');
	add_theme_support('post-thumbnails');
	update_option('thumbnail_size_w', 170);
	update_option('medium_size_w', 470);
	update_option('large_size_w', 970);
}
add_action('init', 'pd_setup');

if (! isset($content_width))
	$content_width = 600;

function pd_excerpt_readmore() {
	return '&nbsp; <a href="'. get_permalink() . '">' . '&hellip; ' . __('Read more', 'pd') . ' <i class="fa fa-arrow-right"></i>' . '</a></p>';
}
add_filter('excerpt_more', 'pd_excerpt_readmore');

// Add post formats support. See http://codex.wordpress.org/Post_Formats
add_theme_support('post-formats', array('aside', 'gallery', 'link', 'image', 'quote', 'status', 'video', 'audio', 'chat'));

add_filter( 'body_class', function($classes){
	$classes[] = 'body_center';
	return $classes;
});

function pd_theme_activation(){
	global $wpdb;

	$sql = "CREATE TABLE IF NOT EXISTS `pd_markers` ("
	    ."`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,"
	    ."`name` VARCHAR( 60 ) NOT NULL ,"
	    ."`address` VARCHAR( 80 ) NOT NULL ,"
	    ."`lat` FLOAT( 10, 6 ) NOT NULL ,"
	    ."`lng` FLOAT( 10, 6 ) NOT NULL ,"
	    ."`type` VARCHAR( 30 ) NOT NULL"
	.") ENGINE = MYISAM;";

	require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
	dbDelta( $sql );
}
add_action("after_switch_theme", "pd_theme_activation");
