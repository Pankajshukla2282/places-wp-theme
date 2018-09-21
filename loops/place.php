	<section id="secPlaceDetails">
	<?php if(have_posts()): while(have_posts()): the_post(); ?>
      <div class="jumbotron">
        <div class="row">
          <div class="col-12">  
            <?php get_template_part('place-intro'); ?>
            <?php get_template_part('related-places'); ?>
          </div>
        </div>
        <div class="row">
		  <div class="col-12">
		  	<h5>Details:</h5>
		  	<section class="align-top pull-left">
		      <?php the_post_thumbnail(); ?>
		      <?php the_content()?>
		    </section>
		  </div>
      </div>
    </div>
  <?php endwhile; ?>
  <?php else: ?>
  <?php wp_redirect(get_bloginfo('url').'/404', 404); exit; ?>
  <?php endif; ?>
  </section>
  