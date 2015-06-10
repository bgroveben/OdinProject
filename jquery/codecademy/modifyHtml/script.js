$(document).ready(function() {
    var $paragraph = $("<p>This is a paragraph</p>");  // Assign paragraph to a variable
    // Go ahead and add a <p> tag .after() the <div> with the ID #one.
    $('#one').after($paragraph);
    // Select the <p> tag you created and move it after the <div> with id #two
    $('#two').after($paragraph);
    // .remove(), not only deletes an element's content, but deletes the element itself.
    // Go ahead and .remove() your <p> tag from the HTML document.
    $('p').remove();
});