// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("turbolinks:load", function () {
	console.log("JavaScript!");
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
}

function handleError (theError) {
	console.log(theError);
}