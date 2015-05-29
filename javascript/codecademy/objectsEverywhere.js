// Objects, Objects Everywhere

// I.D., Please
// Complete these definitions so that they will have the appropriate types.
var anObj = { job: "I'm an object!" };
var aNumber = 42;
var aString = "I'm a string!";
console.log( typeof anObj ); // should print "object"
console.log( typeof aNumber ); // should print "number"
console.log( typeof aString ); // should print "string"


// Know Thyself
// You should finish myObj by giving it a name property.
var myObj = {
    // finish myObj
    name: "name"
};
console.log( myObj.hasOwnProperty('name') ); // should print true
console.log( myObj.hasOwnProperty('nickname') ); // should print false


// Dressed to Impress
var suitcase = {
    shirt: "Hawaiian"
};
// Write an if statement that checks to see if suitcase has the shorts property.
// If your if statement evaluates to true, print the value of the shorts property.
if (suitcase.hasOwnProperty('shorts')) {
    console.log(suitcase.shorts);
// If your if statement evaluates to false, set the shorts property to any value you wish using dot notation. 
// Then print the value of the shorts property.
} else {
    suitcase.shorts = "blue";
    console.log(suitcase.shorts);
}


// Getting IN-timate
// Use a for-in loop to print out all the properties of nyc.
var nyc = {
    fullName: "New York City",
    mayor: "Bill de Blasio",
    population: 8000000,
    boroughs: 5
};
for(var property in nyc) {
    console.log(property);   
}


// List ALL the Properties!
// Write another for-in loop, but this time print the value of each property in nyc.
var nyc = {
    fullName: "New York City",
    mayor: "Bill de Blasio",
    population: 8000000,
    boroughs: 5
};
// write a for-in loop to print the value of nyc's properties
for (property in nyc) {
    console.log(nyc[property]);    
}
