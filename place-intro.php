        <div class="row place_intro mr-auto">
	      <h3><?php the_title()?></h3>
          <div class="col-12 small form-inline row"><strong class="col-4">Type: </strong><div class="nav-link">
          	<?php 
          	$postTypeTerms = get_the_terms( get_the_ID(), 'place_types' );
          	if(is_array($postTypeTerms)){
	          	foreach( $postTypeTerms as $term ) {
	          		echo $term->name. " ";
	          	}
	        }
          	?>
          </div></div>
          <div class="col-12 small form-inline row"><strong class="col-4">Added: </strong>by <a class="nav-link" href="#"><?php echo get_the_author() ?></a></div>
          <div class="col-12 small form-inline row"><strong class="col-4">&nbsp;</strong>on <a class="nav-link">
          	<time  class="text-muted" datetime="<?php the_time('d-m-Y')?>"><?php the_time('M j, Y') ?></time>
          </a></div>
        </div>