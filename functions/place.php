<?php

/**
 * Add Place post type
 */
function create_place_post_type() {
	register_post_type( 'places',
		array(
			'labels' => array(
				'name' => 'Places',
				'singular_name' => 'Place',
				'add_new' => 'Add New',
				'add_new_item' => 'Add New Place',
				'edit_item' => 'Edit Place',
				'new_item' => 'New Place',
				'view_item' => 'View Place',
				'search_items' => 'Search Places',
				'not_found' =>  'Nothing Found',
				'not_found_in_trash' => 'Nothing found in the Trash',
				'parent_item_colon' => ''
			),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'query_var' => true,
			//'menu_icon' => get_stylesheet_directory_uri() . '/yourimage.png',
			'rewrite' => true,
			'rewrite' => array('slug' => 'places'),
			'capability_type' => 'post',
			'hierarchical' => false,
			'menu_position' => null,
			//'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'post-formats' ),
			'supports' => array('title','editor','thumbnail')
		)
	);
	
	//Place countries taxonomy
	register_taxonomy("place_types", array("places"), array(
		"hierarchical" => false,
		"label" => "Place Types",
		"singular_label" => "Place Type",
		"rewrite" => true
	));
}
add_action( 'init', 'create_place_post_type' );

/* // Move all "advanced" metaboxes above the default editor
add_action('edit_form_after_title', function() {
	global $post, $wp_meta_boxes;
	do_meta_boxes(get_current_screen(), 'advanced', $post);
	unset($wp_meta_boxes[get_post_type($post)]['advanced']);
});
 */
/**
 * Add place custom fields
 */
function add_place_meta_boxes() {
	add_meta_box("pd_meta", "Place Details", "add_contact_details_place_meta_box", "places", "advanced", "high");
}
function add_contact_details_place_meta_box()
{
	global $post;
	$custom = get_post_custom( $post->ID );

	?>
	<style>.width47 {width:47%;}.width99 {width:99%;}</style>
	<div id="map" class="width47" style="height: 300px; display:inline-block; overflow: hidden;"></div>
	<div class="width47" style="display:inline-block; vertical-align: top; margin-left: 5px; overflow: hidden;">
		<input type="hidden" id="place_id" name="place_id" value="<?= @$custom["place_id"][0] ?>" />
		<input type="hidden" id="place_lat" name="place_lat" value="<?= @$custom["place_lat"][0] ?>" />
		<input type="hidden" id="place_lng" name="place_lng" value="<?= @$custom["place_lng"][0] ?>" />
		<label class="width99">Name:</label><br />
		<input type="text" id="place_name" name="place_name" value="<?= @$custom["place_name"][0] ?>" class="width99" />
		<label class="width99">Address:</label><br />
		<textarea rows="5" id="place_address" name="place_address" class="width99"><?= @$custom["place_address"][0] ?></textarea>
		<label class="width99">Website:</label><br />
		<input type="text" id="place_website" name="place_website" value="<?= @$custom["place_website"][0] ?>" class="width99" />
		<label class="width99">How you are related to it:</label><br />
		<select id="place_relation" name="place_relation" class="width99">
			<option value="home" <?php if(@$custom["place_relation"][0] == "home") echo " selected "?>>Home</option>
			<option value="maternal" <?php if(@$custom["place_relation"][0] == "maternal") echo " selected "?>>Maternal</option>
			<option value="in-laws" <?php if(@$custom["place_relation"][0] == "in-laws") echo " selected "?>>In-Laws Home</option>
		</select>
	</div>
	<?php
}
/**
 * Save custom field data when creating/updating posts
 */
function save_place_custom_fields(){
  global $post;
 
  if ( $post )
  {
    update_post_meta($post->ID, "place_address", @$_POST["place_address"]);
    update_post_meta($post->ID, "place_website", @$_POST["place_website"]);
    update_post_meta($post->ID, "place_name", @$_POST["place_name"]);
    update_post_meta($post->ID, "place_id", @$_POST["place_id"]);
    update_post_meta($post->ID, "place_lat", @$_POST["place_lat"]);
    update_post_meta($post->ID, "place_lng", @$_POST["place_lng"]);
    update_post_meta($post->ID, "place_relation", @$_POST["place_relation"]);
  }
}
add_action( 'admin_init', 'add_place_meta_boxes' );
add_action( 'save_post', 'save_place_custom_fields' );

// Show posts of 'post', 'page' and 'places' post types on home page
function add_places_to_query( $query ) {
	if ( is_home() && $query->is_main_query() )
		$query->set( 'post_type', array( 'page', 'places' ) );
	return $query;
}
add_action( 'pre_get_posts', 'add_places_to_query' );
