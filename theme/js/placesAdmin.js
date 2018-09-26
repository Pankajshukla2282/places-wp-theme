(function($) {
	$(document).ready(function() {

		/*
		 * TODO: Develope for storing newly added place
		 * 
		 <div id="table">
<table>
<tr><td>Name:</td> <td><input type='text' id='name'/> </td> </tr>
<tr><td>Address:</td> <td><input type='text' id='address'/> </td> </tr>
<tr><td>Type:</td> <td><select id='type'> +
           <option value='bar' SELECTED>bar</option>
           <option value='restaurant'>restaurant</option>
           </select> </td></tr>
           <tr><td></td><td><input type='button' value='Save' onclick='saveData()'/></td></tr>
</table>
</div>
		 
		 * 
		 * $( "#frmAddNewPlaceUsingMap" ).on('submit', function() {
			var fields = $('#frmSearch').serializeArray();
			
			$.each( fields , function( i, field ){
				if(field.name == "service"){
					field.value = "storeSearch";
				}
			});
			
			var latlng = marker.getPosition();
			
			Utils.jQAjax( "/wp-admin/admin-ajax.php", fields, "POST", function(data){
				console.debug(data);
			});

			return false;
		});*/
		
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
