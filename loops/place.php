	<section id="secPlaceDetails">
	<?php if(have_posts()): while(have_posts()): the_post(); ?>
      <div class="jumbotron">
        <div class="row">
          <div class="col-12 place_name"><h3><?php the_title()?></h3></div>
        </div>
      	<div class="row">
          <div class="col-6"></div>
          <div class="col-6">  
            <?php get_template_part('place-intro'); ?>
          </div>
        </div>
        <div class="row">
		  <div class="col-12">
		  	<section class="align-top pull-left">
		  		<div class="row">
			       	<div class="col-12">
						<?php the_post_thumbnail('large');?>
						<?php the_content()?>
		  			</div>
		  		</div>
		        <div class="row">
		          <div class="col-12">
		          	<?php get_template_part('loops/map');?>
		          </div>
		        </div>
		  		<div class="row">
			       	<div class="col-6">
						<?php get_template_part('related-places'); ?>				  			
		  			</div>
		  			<div class="col-6">
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
		      
		    </section>
		  </div>
      </div>
    </div>
  <?php endwhile; ?>
  <?php else: ?>
  <?php wp_redirect(get_bloginfo('url').'/404', 404); exit; ?>
  <?php endif; ?>
  </section>
  