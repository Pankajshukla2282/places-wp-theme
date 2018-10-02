(function($) {
	$(document).ready(function() {


		var saveNewPlaceFromMap = function(formNewPlace){
			var fields = $(formNewPlace).serializeArray();
			
			//var latlng = marker.getPosition();
			
			/*cachePlaceInfo({
				lat: resp.lat,
            	lng: resp.lng,
            	placeId: resp.placeId,
            	type: respData.types,
            	name: respData.name,
            	address: respData.formatted_address
			});*/
			
			console.debug(fields);

			return false;
		};

		function getAddMapPlaceForm(submitFunctionName){
	    	submitFunctionName = submitFunctionName || "saveNewPlaceFromMap";
	    	var html = '<form id="frmAddNewPlaceUsingMap" name="frmAddNewPlaceUsingMap" onsubmit="javascript:'+ submitFunctionName +'(); void(0); retutn false;">'+
		    	'<table>'+
			    '	<tr><td>Name:</td><td><input type="text" id="name"/></td></tr>'+
			    '	<tr><td>Address:</td><td><input type="text" id="address"/></td></tr>'+
			    '	<tr><td>Type:</td><td><select id="type">'+
			    '	    <option value="bar" SELECTED>bar</option>'+
			    '	    <option value="restaurant">restaurant</option>'+
			    '	</select></td></tr>'+
			    '	<tr><td></td><td><input type="submit" value="Save"/></td></tr>'+
		    	'</table>'+
	    	'</form>';

	    	return html;
	    }

		function cachePlaceInfo(placeInfo){
			console.log("cachePlaceInfo");
			placeInfo.action = "search";
			placeInfo.service = "cachePlaceFromMap";
			
			Utils.jQAjax( "/wp-admin/admin-ajax.php", placeInfo, "POST", function(data){
				console.debug(data);
			});
		}
		
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
				PDMap.enableAddPlaceUsingMap(getAddMapPlaceForm());
				PDMap.addPlaceForm($("#title")[0], function(resp){
					//console.debug(resp);
					$('#place_id').attr('value', resp.placeId);
					$("#place_lat").attr('value', resp.lat);
					$("#place_lng").attr('value', resp.lng);
					
					PDMap.showPlaceDetailsOnFetch(resp.placeId,function(respData){
						//console.debug(respData);
						populatePlaceInfo(respData);
						console.log("cachePlaceInfo calling");
						// Store this place into DB
						cachePlaceInfo({
							lat: resp.lat,
			            	lng: resp.lng,
			            	placeId: resp.placeId,
			            	type: respData.types,
			            	name: respData.name,
			            	address: respData.formatted_address
						});
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
