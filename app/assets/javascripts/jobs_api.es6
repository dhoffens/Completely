$(document).on("turbolinks:load", function () {
	findGeolocations();
});

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
		var theLat = theResult.latitude;
		var theLong = theResult.longitude;
		var myLatLng = {lat: theLat, lng: theLong};
	
	var newmarker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: theName
        });
	})
}

function handleError (theError) {
	console.log(theError);
}