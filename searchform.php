<form class="small" role="search" name="frmSearch" id="frmSearch" method="post">
	<div class="input-group row">
		<input type="hidden" name="action" value="api" />
		<input type="hidden" name="service" value="searchMarkers" />
		<input type="hidden" name="hidMatchMarkerId" id="hidMatchMarkerId" value="<?php echo @esc_html($hidMatchMarkerId) ?>" />
		<input type="hidden" name="hidMatchPlaceLink" id="hidMatchPlaceLink" value="<?php echo @esc_html($hidMatchPlaceLink) ?>" />
		<input class="form-control col-md-12" type="text" value="<?php echo get_search_query() ?>" name="txtPlaceToSearch" id="txtPlaceToSearch" placeholder="Enter place to search" />
		<span class="input-group-btn">
			<button type="submit" class="btn btn-secondary" id="btnSearch" name="btnSearch"><?php echo esc_attr_x('Load Place', 'pd') ?></button>
		</span>
	</div>
	<div class="input-group row">
		<label class="checkbox"><input type="checkbox" name="chkRelated" id="chkRelated" class="" value="0" /> Show related places</label>
	</div>
</form>

