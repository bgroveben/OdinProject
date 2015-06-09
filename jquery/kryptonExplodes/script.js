$(document).ready(function() {
    $('div').click(function() {
        $('div').effect('explode');
        // uncomment the following line if you just want to make krypton bounce rapidly
        // $('div').effect('bounce', {times:3}, 500);
        // uncomment the following line if you want to make krypton slide into view
        // $('div').effect('slide');    
    });    
});
// For this to work, make sure you have both th jQuery and jQueryUI libraries in script tags in index.html
