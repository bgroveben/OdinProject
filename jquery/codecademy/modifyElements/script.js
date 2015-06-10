$(document).ready(function() {
    // $('#text').addClass('highlighted');  //  make #text div highlighted when clicked 
    // $('#text').toggleClass('highlighted');  // Change your .addClass() to a .toggleClass().
    $( "#text" ).click(function() {
  		$( this ).toggleClass( "highlighted" );  // toggle highlighting on #text div
	});
});