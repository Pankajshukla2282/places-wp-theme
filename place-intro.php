        <div class="row place_intro mr-auto small">
          	<div class="col-12 form-inline">
          		is <?php 
	          	$postTypeTerms = get_the_terms( get_the_ID(), 'place_types' );
	          	if(is_array($postTypeTerms)){
		          	foreach( $postTypeTerms as $term ) {
		          		echo $term->name. " ";
		          	}
		        }
	          	?> place of <a class="nav-link" href="#"><?php echo get_the_author() ?></a>
          	</div>
        </div>