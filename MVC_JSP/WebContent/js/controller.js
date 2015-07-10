/*
 * 	Function used to get the id of the link clicked
 * 	Then it passes the appropriate link id as an argument 
 * 	to showDynamicContent function  
 */

$('.navLink').click(function() {

	var linkId = $(this).attr("id");

	switch (linkId) {

	case "coreTags":

		showDynamicPage(linkId);
		break;

	case "formattingTags":

		showDynamicPage(linkId);
		break;

	case "sqlTags":

		showDynamicPage(linkId);
		break;

	case "xmlTags":

		showDynamicPage(linkId);
		break;

	case "jstlFunctions":

		showDynamicPage(linkId);
		break;

	default:
		//alert("no linkId match");
	}

});

function showDynamicPage(linkId) {
	
	//Clear master content #page-wrapper
	clearMainDiv();
	
	//show dynamic content
	$("#page-wrapper").load("views/" + linkId + ".jsp #content");
}

/*
 * 	Function used to clear the content in the master page 
 * 						#page-wrapper 
 */
function clearMainDiv() {
	$('#page-wrapper').empty();
}