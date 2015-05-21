/*
Perfect! You've now got the engine of your search program running. It will:
1. Loop through the array,
2. Compare each letter to the first letter of your name, and if it sees that letter:
3. It will push that letter and all the letters that follow it to an array, stopping when the number of letters it pushes are equal to the number of letters in your name.
*/

/*jshint multistr:true */

var text = "Lorem ipsum dolor amet bacon eiusmod porchetta, Ben \
pancetta mollit quis non pastrami Ben. Laborum lorem velit enim \
flank tongue irure, t-bone eiusmod Ben pork loin prosciutto \
tenderloin Ben belly.";

var myName = "Ben";

var hits = [];

for (i = 0; i <= text.length; i++) {
    if (text[i] === "B") {
        for(var j = i; j < (myName.length + i); j++) {
			hits.push(text[j]);    
        }
    }
}

if (hits === 0) {
    console.log("Your name wasn't found!");
} else {
    console.log(hits);
}

// This script will pick out any word that begins with a capital letter b ("B") and record it as a hit.