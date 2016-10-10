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
	//console.log(theLocation)
	theLocation.forEach(function (theResult){
		console.log(theResult)
		var theName = theResult.name;
		//console.log("the name", theName);
		var theDesc = theResult.description;
		var address = theResult.address;
		var budgetLow = theResult.budget_low;
		var budgetHigh = theResult.budget_high;
		var theLat = theResult.latitude;
		//console.log("the lat", theLat);
		var theLong = theResult.longitude;
		//console.log("the long", theLong);
		var myLatLng = {lat: theLat, lng: theLong};
		//console.log("my latlng", myLatLng);

		var marker = new google.maps.Marker({
	          position: myLatLng,
	          map: map,
	          title: theName,
	          desc: theDesc,
	          address: address,
	          budgetlow: budgetLow,
	          budgethigh: budgetHigh
	        });
	
		marker.setMap(map);

	google.maps.event.addListener(marker, 'click', (function(marker) {
    	return function() {
    // make use of `marker.custom_param`
        var markerName = marker.title
        //console.log(markerName)
        var markerDesc = marker.desc
        //console.log(markerDesc)
        var markeraddress = marker.address
        //console.log(markeraddress)
        var markerbudgetlow = marker.budgetlow
        //console.log(markerbudgetlow)
        var markerbudgethigh = marker.budgethigh
        //console.log(markerbudgethigh)
    	$('#myModal').modal('show');
    	//appendJobTitleToModalHead();
    	
    	$('.modal-title').html(markerName);
    	
    	var modalBody = `
    		Description: ${markerDesc} <br>
    		Location: ${markeraddress} <br>
    		Pay Range: $${markerbudgetlow} - $${markerbudgethigh} <br>
    	`;

    	$('.modal-body').html(modalBody)


    }
    })(marker));
})
	}


function handleError (theError) {
	console.log(theError);
}