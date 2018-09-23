	<section id="secPlaceDetails">
	<?php
	 global $postMetaInfo;
	 if(have_posts()): while(have_posts()): the_post();
	 $postMetaInfo = get_post_meta(get_the_ID());
	 ?>
	  <input type="hidden" id="currentPlaceId" value="<?php echo $postMetaInfo['place_id'][0];?>" />
      <div class="jumbotron">
        <div class="row">
          <div class="col-12 place_name"><h3><?php echo $postMetaInfo['place_name'][0];//the_title()?></h3></div>
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
		  			</div>
		  		</div>
		        <div class="row">
		          <div class="col-12">
					<?php echo $postMetaInfo['place_address'][0];?>
		          </div>
		        </div>
		  		<div class="row">
		          <div class="col-12">
					<?php get_template_part('loops/map');?>
		          	<?php the_content()?>
		          </div>
		        </div>
		  		<div class="row">
		          <div class="col-12">
					<div class="row latest_connectivity mx-auto">
			          <h7>Connectivity</h7>
			            <div class="col-12 small"><dt>By Airways:</dt><dd><?php echo $postMetaInfo['place_connectivity_air'][0];?></dd></div>
			            <div class="col-12 small"><dt>By Railways:</dt><dd><?php echo $postMetaInfo['place_connectivity_rail'][0];?></dd></div>
			            <div class="col-12 small"><dt>By Roadways:</dt><dd><?php echo $postMetaInfo['place_connectivity_road'][0];?></dd></div>
			        </div>
		          </div>
		        </div>
		        <div class="row">
			       	<div class="col-12">
						<?php get_template_part('related-places'); ?>				  			
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
  