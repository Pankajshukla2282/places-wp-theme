//https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=API_KEY
//https://maps.googleapis.com/maps/api/geocode/output?parameters
//"status" : "OK"
//https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=API_KEY
//https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&location_type=ROOFTOP&result_type=street_address&key=API_KEY
//http://maps.googleapis.com/maps/api/geocode/json?address=Empire+State+Building&sensor=true
//http://maps.googleapis.com/maps/api/geocode/json?address=naish+scout+reservation&components=country:US&sensor=false
//http://maps.googleapis.com/maps/api/geocode/json?address=naish+scout+reservation&components=administrative_area:KS|country:US&sensor=false
//https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=cruise&key=YOUR_API_KEY

var PDMap = PDMap || {
	map: null,
	mapHTMLelement: null,
	placeService: null,
	infoWindow: null,
	geocoder: null,
	recentAdded: [], // recently added 5 places
	recentSearches: [], // recently searched 5 places
	markersOnMap: [],
	markerAnchorPoint: null,
	markerScaledSize: null,
	customIcons: null,
	userLocation: null,
	mapBounds: null,
	autocomplete: null,
    createLatLng: function(lat, lng){
		return new google.maps.LatLng(parseFloat(lat), parseFloat(lng));
	},
	load: function (apiURL, callback) {
	  this.mapHTMLelement = this.mapHTMLelement || document.getElementById("map");
	  	  
	  //apiURL = apiURL||"https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318&markers=color:red%7Clabel:C%7C40.718217,-73.998284&key=AIzaSyBqk3Ib6anN-jsMDHwyQKm4UYX3mRi_m-Q";
	  
	  //apiURL = apiURL||"https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&signed_in=false&libraries=geometry,places&callback=PDMap.init";
	  //apiURL = apiURL||"https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=geometry,places&callback=PDMap.init";
	  //apiURL = apiURL||"https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyBqk3Ib6anN-jsMDHwyQKm4UYX3mRi_m-Q&libraries=geometry,places&callback=PDMap.init";
	  apiURL = apiURL||"https://maps.googleapis.com/maps/api/js?key=AIzaSyBqk3Ib6anN-jsMDHwyQKm4UYX3mRi_m-Q&libraries=geometry,places&callback=PDMap.init";
	  
	  console.debug(this.map);
	  if(!this.map){
		  Utils.loadScript(apiURL, callback);
	  }
    },
    init: function(){
    	var lat = 21.00, lng = 78.00, radius = 250;
        
    	this.userLocation = this.createLatLng(lat, lng);
		this.markerAnchorPoint = new google.maps.Point(10, 10);
		this.markerScaledSize = new google.maps.Size(10, 17);
    	this.geocoder = new google.maps.Geocoder();
        this.infoWindow = new google.maps.InfoWindow;
        this.mapBounds = new google.maps.LatLngBounds();
    	this.customIcons = {
		  restaurant: {
		    icon: {
		    	//url: new google.maps.MarkerImage('/wp-content/themes/mapdemo/pink_Marker.png', new google.maps.Size(20, 34) );
		    	url: '//labs.google.com/ridefinder/images/mm_20_blue.png',
	            anchor: this.markerAnchorPoint,
	            scaledSize: this.markerScaledSize
		    }
		  },
		  bar: {
		    icon: {
		    	url: '//labs.google.com/ridefinder/images/mm_20_red.png',
	            anchor: this.markerAnchorPoint,
	            scaledSize: this.markerScaledSize
		    }
		  }
		};

    	//console.debug(this.mapHTMLelement);
    	this.map = new google.maps.Map(this.mapHTMLelement, {
          center: this.userLocation,
          zoom: 8,
          panControl: false,
          mapTypeId: 'terrain'
        });
        
        //var styles = [{"featureType": "landscape", "stylers": [{"saturation": -100}, {"lightness": 65}, {"visibility": "on"}]}, {"featureType": "poi", "stylers": [{"saturation": -100}, {"lightness": 51}, {"visibility": "simplified"}]}, {"featureType": "road.highway", "stylers": [{"saturation": -100}, {"visibility": "simplified"}]}, {"featureType": "road.arterial", "stylers": [{"saturation": -100}, {"lightness": 30}, {"visibility": "on"}]}, {"featureType": "road.local", "stylers": [{"saturation": -100}, {"lightness": 40}, {"visibility": "on"}]}, {"featureType": "transit", "stylers": [{"saturation": -100}, {"visibility": "simplified"}]}, {"featureType": "administrative.province", "stylers": [{"visibility": "off"}]}, {"featureType": "water", "elementType": "labels", "stylers": [{"visibility": "on"}, {"lightness": -25}, {"saturation": -100}]}, {"featureType": "water", "elementType": "geometry", "stylers": [{"hue": "#ffff00"}, {"lightness": -25}, {"saturation": -97}]}];
        //this.map.set('styles', styles);
    	
    	//this.getUserGeoLocation();
    	
        this.placeService = new google.maps.places.PlacesService(this.map);
    },
    getUserGeoLocation: function(){
    	var that = this;
		// Try HTML5 geolocation
		if(!navigator.geolocation) {
			// Browser doesn't support Geolocation
		} else {
			navigator.geolocation.getCurrentPosition(function(position) {
				//console.log(position);
				var pos = that.createLatLng(position.coords.latitude,position.coords.longitude);
				that.map.setCenter(pos);
				that.placeMarkers([{
		    		point: pos,
		            type: "restaurant",
		    	    title:"Hello World!",
		    	    name:"Mudwari",
		    	    address:"Panna",
		    	    description: "marker description"
		        }]);
			}, function() {
				//The Geolocation service failed
			});
		}
    },
    bindInfoWindow: function(marker, map, infoWindow, html) {
    	google.maps.event.addListener(marker, 'click', function() {
          infoWindow.setContent(html);
          infoWindow.open(map, marker);
	    });
	},
	setMarkerMap: function(map, markers){
	  markers = markers || this.markersOnMap;
	  for (var i = 0; i < markers.length; i++) {
		  markers[i].setMap(null);
      }	  
	},
	clearMarkers: function() {
		this.setMarkerMap(null, null);
		this.markersOnMap.length = 0;
		this.markersOnMap = [];
    },
	placeMarkers: function(markers){
		var that = this;
        var loopCount = 0, point, reqObj;
        this.clearMarkers();
        for (var i in markers) {
          var html = this.getHTMLOfMarker(markers[i]);
          loopCount++;

          var icon = that.customIcons[markers[i].type] || {icon: "//www.google.com/mapfiles/marker.png"};

          reqObj = {map:that.map};
          reqObj.icon = icon.icon;
          //reqObj.animation = google.maps.Animation.BOUNCE;
          reqObj.title = markers[i].title || markers[i].name || "Place name"; 
        	  
          reqObj.position = point = markers[i].point || that.createLatLng((markers[i].lat),(markers[i].lng));
          
          var marker = new google.maps.Marker(reqObj);
          this.markersOnMap.push(marker);
          
          that.bindInfoWindow(marker, that.map, that.infoWindow, html);
          
          that.mapBounds.extend(point);
        }
        
        that.map.fitBounds(that.mapBounds);
        
        if(loopCount == 1){
	  	  that.map.setCenter(point);
	  	  that.map.setZoom(9);
	    }
    },
    getHTMLOfMarker: function(marker){
		var description = marker.description || "";
		//var detailPageUrl = "api/bootstrap.php?cb=PDMap.placeMarkers&service=getPlaceDetails&markerId="+(marker.id);
		description = description.substring(0, 200);
		//description += '... <a href="javascript:void(0);" onclick="javascript:Utils.jQAjax(\'' + detailPageUrl + '\'); PDMap.infoWindow.close();">Details</a>';
		description += '... <a href="javascript:void(0);" onclick="javascript:navigate(\'placedetail\', {placeId: '+marker.id+'}); PDMap.infoWindow.close();">Details</a>';

		var html = '<div id="content">'+
		'<div id="siteNotice">'+
		'</div>'+
		'<h1 id="firstHeading" class="firstHeading">' + (marker.name) + ', ' + (marker.address) + '</h1>'+
		'<div id="bodyContent">'+
		'<p>'+description+'</p>'+
		'</div>'+
		'</div>';
		  
		return html;
    },
    showPlaceDetailsOnFetch: function(place_id, callback){
    	this.getDetailsFromPlaceId(place_id, function(resp){
     		  callback(resp);
      	});
    },
    getDetailsFromPlaceId: function(place_id, callback){
    	var that = this;
		this.placeService.getDetails({
      	  placeId: place_id
      	}, function(place, status) {
		  if (status == google.maps.places.PlacesServiceStatus.OK) {
			console.log("getDetailsFromPlaceId: ok");
			//console.debug(place);
			that.map.setCenter(place.geometry.location);
			that.placeMarkers([{
  		        point: place.geometry.location,
  		        icon: place.icon,
  	            type: place.types,
  	    	    title: place.name,
  	    	    name: place.name,
  	    	    address: place.formatted_address,
  	    	    description: place.name
  	        }]);
			callback(place);
		  }else{
			  console.log("getDetailsFromPlaceId: error");
			  callback({});
		  }
		});
    },
    addPlaceForm: function(elemSearchBox, callback){
    	this.enableSearchSuggestions(elemSearchBox, function(resp){
   		  callback(resp);
    	});
    },
    enableSearchSuggestions: function(elemSearchBox, callback){
    	var that = this;
    	this.autocomplete = new google.maps.places.Autocomplete(elemSearchBox);
    	this.autocomplete.setTypes(['geocode']);
    	this.autocomplete.bindTo('bounds', this.map);
    	
    	this.autocomplete.addListener('place_changed', function() {
            var place = that.autocomplete.getPlace();

            if (!place.geometry) {
            	callback({});
            }
            callback({
            	lat: place.geometry.location.lat(),
            	lng: place.geometry.location.lng(),
            	placeId: place.place_id, // Store this place_id in DB for future use
                location: place.geometry.location
            });
        });
    },
    disableSearchSuggestions: function(){
    	if(!this.autocomplete){
    		return;
    	}
        google.maps.event.removeListener(this.autocomplete, 'place_changed', function(){});
    },
    getPlaceFromAddress: function(txtAddress){
		this.geocoder.geocode( { 'address': txtAddress}, function(results, status) {
	      if (status == google.maps.GeocoderStatus.OK) {
	    	console.debug(results[0]);
	      } else {
	        alert("Geocode was not successful for the following reason: " + status);
	      }
	    });
	},
	codeLatLng: function(txtCSVLatLng) {
	    var latlngStr = txtCSVLatLng.split(",",2);
	    var lat = parseFloat(latlngStr[0]);
	    var lng = parseFloat(latlngStr[1]);
	    var latlng = this.createLatLng(lat, lng);
	    this.geocoder.geocode({'latLng': latlng}, function(results, status) {
	      if (status == google.maps.GeocoderStatus.OK) {
	        return (results[1]);
	      } else {
	        alert("Geocoder failed due to: " + status);
	      }
	    });
	},
	enableAddPlaceUsingMap: function(newPlaceFormhtml){
		var that = this;
		google.maps.event.addListener(that.map, 'click', function(event) {
          marker = new google.maps.Marker({
            position: event.latLng,
            map: that.map
          });
          that.bindInfoWindow(marker, that.map, that.infoWindow, newPlaceFormhtml);
        });
	},
	disableAddPlaceUsingMap: function(){
		var that = this;
		google.maps.event.clearListeners(that.map, 'click');
	},
	searchLocation: function(txtSearchElem, ulSearchSuggestionsElem){
		var that = this;
        if (txtSearchElem.value.length > 2) {
        	
        	/*this.placeService.nearbySearch({
        	  location: new google.maps.LatLng(),
        	  radius: 25000, //meters
        	  rankBy: google.maps.places.RankBy.PROMINENCE,
        	  type: "locality"
        	}, function(results, status) {
        	  if (status == google.maps.places.PlacesServiceStatus.OK) {
    		    for (var i = 0; i < results.length; i++) {
    		      var place = results[i];
    		      createMarker(results[i]);
    		    }
    		  }
    		});*/

        	        	        	
        	
/*        	that.autocomplete.getQueryPredictions({ input: txtSearchElem.value }, function(predictions, status){
        		if (status != google.maps.places.PlacesServiceStatus.OK) {
					alert(status);
					return;
				}

				var node;
				if(!ulSearchSuggestionsElem){
					ulSearchSuggestionsElem = document.createElement("UL");
					txtSearchElem.parentNode.appendChild(ulSearchSuggestionsElem);
				}else{
					while( ulSearchSuggestionsElem.hasChildNodes() ){
						ulSearchSuggestionsElem.removeChild(ulSearchSuggestionsElem.lastChild);
					}
				}
				for (var i = 0, prediction; prediction = predictions[i]; i++) {
					console.log(prediction);
					node = document.createElement("LI");
					node.onclick = function(e){
						txtSearchElem.value = this.textContent || this.innerText;
					};
					node.appendChild(document.createTextNode(prediction.description));
					ulSearchSuggestionsElem.appendChild(node);
				}
			});
*/
        }
    }
};
