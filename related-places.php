	    <div class="row latest_relatives mx-auto">
          <h7>Relative 5 places</h7>
          <?php $pd_post_query = new WP_Query( array( 'author' => get_the_author_meta("ID"), 'posts_per_page' => 5, 'post_status' => 'publish', 'post_type' => 'places', 'order'=> 'ASC', 'orderby' => 'post_date')); ?>
	      <?php if($pd_post_query->have_posts()): ?>
          <?php while ( $pd_post_query->have_posts() ) : $pd_post_query->the_post(); ?>
  		  <div class="col-12 small"><a class="nav-link" href="<?php the_permalink(); ?>"><?php the_title()?></a></div>
  		  <?php endwhile; ?>
		  <?php wp_reset_postdata(); ?>
		  <?php endif; ?>
        </div>
