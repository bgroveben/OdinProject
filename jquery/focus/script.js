$(document).ready(function() {
    $('input').focus(function() {
        $('input').css('outline-style', 'solid');  // to accommodate Firefox
        $('input').css('outline-color', '#ff0000');    
    });    
});