$(document).ready(function() {
    $(document).keydown(function() {
        $('div').animate({left: '+=10px'}, 500);    
    });    
});
// For this to work, mouse-click on the red box, then hit any key.