// You are now declaring an array.
// Arrays are an awesome data structure!

var junk = ["first string", "second string", 42, 88];
console.log(junk);

// Arrays are numbered staring at 0; print the fourth element of the following array

var junkData = ["Eddie Murphy", 49, "peanuts", 31];
console.log(junkData[3]);

// Let's print out every element of an array using a for loop

var cities = ["Melbourne", "Amman", "Helsinki", "NYC", "LA", "LV", "SFC", "DFW", "DC"];

for (var i = 0; i < cities.length; i++) {
    console.log("I would like to visit " + cities[i]);
}

// Same idea, but with people's names

var names = ["Alice", "Bob", "Carol", "Dave", "Ellen"];

for (var i = 0; i < names.length; i++) {
    console.log("I know someone called " + names[i]);   
}
