	<?php 
	$postMetaInfo = get_post_meta(get_the_ID());
	echo "<div>Place Name is - ".$postMetaInfo['place_name'][0]."</div>";
	echo "<div>Place Address is - ".$postMetaInfo['place_address'][0]."</div>";
	echo "<div>Place Id is - ".$postMetaInfo['place_id'][0]."</div>";
	echo "<div>Place Lat is - ".$postMetaInfo['place_lat'][0]."</div>";
	echo "<div>Place Long is - ".$postMetaInfo['place_lng'][0]."</div>";
	
	?>
	<section id="secMap" class="embed-responsive embed-responsive-1by1"><!--secMap Starts-->
      <div id="map" class="embed-responsive-item">
      	<img src="<?php echo get_theme_file_uri( 'theme/images/staticmap.png' );?>" width="100%" class="d-inline-block align-top img-fluid" alt="" />
      </div>
	</section><!--secMap End-->