        <div class="row latest_searches mx-auto">
          <h7>Latest 5 Searches</h7>
          <?php 
          ////delete_option("pd_topsearches");
          
          $noOfSearches = 6;
          
          $topSearches = get_option("pd_topsearches",'Mudwari');

          $topSearchesArr = array_unique(explode("####", $topSearches));
          $newArray = array();
          for($i=0;$i<$noOfSearches;$i++){
			if (empty($topSearchesArr[$i])) break;
			$args = array(
					'posts_per_page' => 1, 
					'post_status' => 'publish', 
					'post_type' => 'places', 
					's' => $topSearchesArr[$i]
					);
			$pd_post_query = new WP_Query($args);
			if($pd_post_query->have_posts()){
				while ( $pd_post_query->have_posts() ){
					$pd_post_query->the_post();
					echo '<div class="col-12 small"><a class="nav-link" href="'.get_permalink(get_the_ID()).'">'.get_the_title().'</a></div>';
				}
				/* Restore original Post Data */
				wp_reset_postdata();
			}
          }
          unset($topSearchesArr);
          ?>
        </div>
