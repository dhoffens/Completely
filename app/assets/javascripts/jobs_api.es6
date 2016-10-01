$(document).on("turbolinks:load", function () {
});

var map;

function initMap() {
        var mapInit = {lat: 25.7617, lng: -80.1918};
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 13,
          center: mapInit
        });
		findGeolocations();
    }

function findGeolocations () {

	$.ajax({
		type: "GET",
		url: "/api/jobs",
		success: showGeolocations,
		error: handleError
	});
}

function showGeolocations (theLocation) {
	// map shows all the pins from current data
	theLocation.forEach(function (theResult){

		var theName = theResult.name;
		//console.log("the name", theName);
		var theLat = theResult.latitude;
		//console.log("the lat", theLat);
		var theLong = theResult.longitude;
		//console.log("the long", theLong);
		var myLatLng = {lat: theLat, lng: theLong};
		//console.log("my latlng", myLatLng);

		var marker = new google.maps.Marker({
	          position: myLatLng,
	          map: map,
	          title: theName
	        });
	
		marker.setMap(map);

		google.maps.event.addListener(marker, 'click', function() {
  			$('#myModal').modal('show');
		});
	})
}

function handleError (theError) {
	console.log(theError);
}