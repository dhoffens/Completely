$(document).on("turbolinks:load", function () {
	//var map = new google.maps.Map(document.getElementById("map"), mapOptions);
	findGeolocations();
});

var map;

function initMap() {
        var mapInit = {lat: 25.7617, lng: -80.1918};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 13,
          center: mapInit
        });
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
	console.log(theLocation);
	// map shows all the pins from current data

	theLocation.forEach(function (theResult){

		var theName = theResult.name;
		console.log(theName);
		var theLat = theResult.latitude;
		console.log(theLat);
		var theLong = theResult.longitude;
		console.log(theLong);

		var myLatLng = {lat: theLat, lng: theLong};
		console.log(myLatLng);

		var marker = new google.maps.Marker({
	          position: myLatLng,
	          map: map,
	          title: theName
	        });

	console.log(marker)
	marker.setMap(map);
	})
}

function handleError (theError) {
	console.log(theError);
}