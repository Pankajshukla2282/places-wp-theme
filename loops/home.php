	<section class="secHome">
      <div class="jumbotron">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"><img src="<?php echo get_theme_file_uri( 'theme/images/staticmap.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" /></div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <?php get_template_part('latest-searches'); ?>
          	<?php get_template_part('latest-added'); ?>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"><img src="<?php echo get_theme_file_uri( 'theme/images/pd-ads.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" /></div>
        </div>
      </div>
    </section>  