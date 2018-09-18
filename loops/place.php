	<section id="secPlaceDetails">
	<?php if(have_posts()): while(have_posts()): the_post(); ?>
      <div class="jumbotron">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"><img src="<?php echo get_theme_file_uri( 'theme/images/staticmap.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" /></div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">  
            <?php get_template_part('place-intro'); ?>
            <?php get_template_part('related-places'); ?>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"><img src="<?php echo get_theme_file_uri( 'theme/images/pd-ads.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" /></div>
        </div>
        <div class="row">
		  <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		  	<h5>Details:</h5>
		  	<section class="align-top pull-left">
		      <?php the_post_thumbnail(); ?>
		      <?php the_content()?>
		    </section>
		  </div>
	      <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
	      	<div class="row latest_connectivity mx-auto">
	          <h7>Connectivity</h7>
	          <dl>
	            <div class="col-12 small"><dt>By Airways:</dt><dd>Jkalkj lsl s</dd></div>
	            <div class="col-12 small"><dt>By Railways:</dt><dd>Kakljls kjlkslkjl</dd></div>
	            <div class="col-12 small"><dt>By Roadways:</dt><dd>Ilwkjlkw skjls</dd></div>
	          </dl>
	        </div>
        </div>
      </div>
    </div>
  <?php endwhile; ?>
  <?php else: ?>
  <?php wp_redirect(get_bloginfo('url').'/404', 404); exit; ?>
  <?php endif; ?>
  </section>
  