	
//var pdapp = angular.module('pdapp', []);

(function($) {
	$(document).ready(function() {

		// Comments
		
		$('.commentlist li').addClass('card');
		$('.comment-reply-link').addClass('btn btn-secondary');

		// Forms
		
		$('select, input[type=text], input[type=email], input[type=password], textarea').addClass('form-control');
		$('input[type=submit]').addClass('btn btn-primary');

    	// Pagination fix for ellipsis
    	
		$('.pagination .dots').addClass('page-link').parent().addClass('disabled');

		// You can put your own code in here
		
		$('#btnSearch').on('click',function(){
			var fields = $('#frmSearch').serializeArray();
			$(location).attr('href',$("#hidMatchPlaceLink").attr('value'));
			
			$.each( fields , function( i, field ){
				if(field.name == "service"){
					field.value = "storeSearch";
				}
			});
			console.debug(fields);
			Utils.jQAjax( "/wp-admin/admin-ajax.php", fields, "POST", function(data){
				console.debug(data);
			});
			return false;
		});

		$( "#frmSearch" ).on('submit', function() {
			return false;
		});

		function loadMapInPage(){console.log("load init");
			PDMap.load(null, function(){console.log("load");
				PDMap.addPlaceForm($("#txtPlaceToSearch")[0], function(resp){console.log("form");
					console.debug(resp);
					$('#hidMatchMarkerId').attr('value', resp.placeId);
				});
			});
		}
		
		$( "#txtPlaceToSearch" )
		 .bind( "keydown", function( event ) {
	        if ( event.keyCode === $.ui.keyCode.TAB &&
	            $( this ).autocomplete( "instance" ).menu.active ) {
	          event.preventDefault();
	        }
	      })
		 .autocomplete({
			 minLength: 3,
			 source: function( request, response ) {
			    Utils.jQAjax( "/wp-admin/admin-ajax.php", $('#frmSearch').serialize(), "GET", function(data){
			    	response( data );
				});
			 },
			 focus: function( event, ui ) {
				 $( "#txtPlaceToSearch" ).val( ui.item.name );
				 return false;
			 },
			 select: function( event, ui ) {
				 $( "#txtPlaceToSearch" ).val( ui.item.name );
				 $( "#hidMatchMarkerId" ).val( ui.item.id );
				 $( "#hidMatchPlaceLink" ).val( ui.item.link );
				 return false;
			 },
			 open: function() {
				 $( "#hidMatchMarkerId" ).val("");
		     },
		     close: function() {
				// Nothing 
		     }
		 })
		 .autocomplete( "instance" )._renderItem = function( ul, item ) {
			 return $( "<li>" )
			 .append( "<a>" + item.name + "</a>" )
			 .appendTo( ul );
		};
		
		loadMapInPage();
	});
})(jQuery);
