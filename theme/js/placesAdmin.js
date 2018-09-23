(function($) {
	$(document).ready(function() {
		function populatePlaceInfo(placeInfo){
			//console.debug(placeInfo);
			$("#place_id").attr('value', placeInfo.place_id);
			$("#place_address").attr('value', placeInfo.formatted_address);
			$("#place_name").attr('value', placeInfo.name);
			$("#place_website").attr('value', placeInfo.url);
		}
		
		function loadMapInPage(){
			$('#title-prompt-text').text("");
			PDMap.load(null, function(){
				PDMap.getUserGeoLocation();
				PDMap.addPlaceForm($("#title")[0], function(resp){
					//console.debug(resp);
					$('#place_id').attr('value', resp.placeId);
					$("#place_lat").attr('value', resp.lat);
					$("#place_lng").attr('value', resp.lng);
					
					PDMap.showPlaceDetailsOnFetch(resp.placeId,function(resp){
						//console.debug(resp);
						populatePlaceInfo(resp);
					});
				});

				// At the time of edit form load
				if($("#place_id").attr('value').length > 5){
					PDMap.showPlaceDetailsOnFetch($("#place_id").attr('value'),function(resp){
						//console.debug(resp);
						populatePlaceInfo(resp);
					});
				}
			});
		}
		
		loadMapInPage();
	});
})(jQuery);
