	<section class="secSidebar">
      <div class="jumbotron">
        <div class="row">
          <div class="col-12">
          	<?php get_sidebar();?>
          </div>
        </div>
        <!-- <div class="row">
          <div class="col-12">
          	<?php //if(!is_home() && !is_front_page()){get_template_part('related-places');} ?>
          </div>
        </div>
         -->
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
    