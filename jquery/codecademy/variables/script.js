// Create a variable called $target in script.js and use the = sign to assign it to the jQuery 
// selector that represents #4 in the ordered list. When you run your code, it should fade away!
$(document).ready(function() {
  var $target = $('ol li:last-child'); 
    $target.fadeOut('fast');
});