<?php get_header(); ?>

<div class="container">
  <div class="row">
    
    <div id="content" role="main" class="<?php if(is_active_sidebar('sidebar-widget-area')): ?>col-sm-8<?php else: ?>col-sm-12<?php endif; ?>">
        <?php //get_template_part('loops/content', get_post_format()); ?>
        <?php //get_template_part('loops/content', "places"); ?>
        <?php get_template_part('loops/home', get_post_format()); ?>
        <?php //get_template_part('loops/place', get_post_format()); ?>
        <?php //get_template_part('loops/search-result', get_post_format()); ?>
    </div><!-- /#content -->
    
    <div class="col-sm-4" id="sidebar" role="navigation">
       <?php get_template_part('loops/sidebar', get_post_format()); ?>
    </div>
    
  </div><!-- /.row -->
</div><!-- /.container -->

<?php get_footer(); ?>
