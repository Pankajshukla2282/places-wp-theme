	<section class="secSidebar">
      <div class="jumbotron">
        <div class="row">
          <div class="col-12"><img src="<?php echo get_theme_file_uri( 'theme/images/pd-ads.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" /></div>
        </div>
      	<div class="row">
          <?php get_sidebar(); ?>
        </div>
        <div class="row">
          <div class="col-12"><img src="<?php echo get_theme_file_uri( 'theme/images/staticmap.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" /></div>
        </div>
        <div class="row">
	       	<div class="col-12">
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
        <div class="row">
          <div class="col-12">
            <?php get_template_part('latest-searches'); ?>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
          	<?php get_template_part('latest-added'); ?>
          </div>
        </div>
      </div>
    </section>
    