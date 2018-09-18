(function($) {
	$(document).ready(function() {
		
		/*function createFetchButton(){
			$('<input/>', {
				"type": 'button',
			    "id": 'place_fetch',
			    "name": 'place_fetch',
			    "value": 'Get place data',
			    "class": 'btn btn-primary',
			    "click": function(){
					PDMap.showPlaceDetailsOnFetch($("#place_id").attr('value'), function(resp){
						removeFetchButton();
						populatePlaceInfo(resp);
					});
					return false;
				}
			}).appendTo('#titlewrap');
		}*/

		function populatePlaceInfo(placeInfo){
			//console.debug(placeInfo);
			//$('#postbox-container-2').appendTo('#titlediv');
			$("#place_id").attr('value', placeInfo.place_id);
			$("#place_address").attr('value', placeInfo.formatted_address);
			$("#place_name").attr('value', placeInfo.name);
			$("#place_website").attr('value', placeInfo.url);
		}
		
		/*function removeFetchButton(){
			$('#place_fetch').remove();
		}*/
		
		function loadMapInPage(){
			$('#title-prompt-text').text("");
			PDMap.load(null, function(){
				//$('#postbox-container-2').appendTo('#titlediv');
				PDMap.addPlaceForm($("#title")[0], function(resp){
					//console.debug(resp);
					$('#place_id').attr('value', resp.placeId);
					$("#place_lat").attr('value', resp.lat);
					$("#place_lng").attr('value', resp.lng);
					/*createFetchButton();*/
					
					PDMap.showPlaceDetailsOnFetch(resp.placeId,function(resp){
						//console.debug(resp);
						//removeFetchButton();
						populatePlaceInfo(resp);
					});
				});

				// At the time of edit form load
				if($("#place_id").attr('value').length > 5){
					PDMap.showPlaceDetailsOnFetch($("#place_id").attr('value'),function(resp){
						//console.debug(resp);
						//removeFetchButton();
						populatePlaceInfo(resp);
					});
				}
			});
		}
		
		loadMapInPage();
	});
})(jQuery);
