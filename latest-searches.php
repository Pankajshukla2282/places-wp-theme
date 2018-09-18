        <div class="row latest_searches mx-auto">
          <h7>Latest 5 Searches</h7>
          <?php 
          ////delete_option("pd_topsearches");
          function getLatestSearches($noOfSearches){
          	$topSearches = get_option("pd_topsearches",'Mudwari,Amravati,Pune,Mumbai,Delhi,Kolkata');
          	
          	$topSearchesArr = array_unique(explode("</a>", $topSearches));
          	$newArray = array();
          	for($i=0;$i<$noOfSearches;$i++){
          		if (empty($topSearchesArr[$i])) break;
          		echo '<div class="col-12 small">'.$topSearchesArr[$i].'</a></div>';
          	}
          	unset($topSearchesArr);
          }
          getLatestSearches(6);
          ?>
        </div>
