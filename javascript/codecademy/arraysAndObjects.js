// Arrays and Objects in JS

// Create an array called list in the editor. It can contain any data you want! Make sure it has at least three elements.
var list = ["string", 42, 3.14];


// Log the third element of the languages array to the console.
var languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"];
console.log(languages[2]);


// Under your existing code, log the number of elements in languages to the console.
var languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"];
console.log(languages[2]);
console.log(languages.length);


// Go ahead and use a for loop to log each element of the languages array to the console.
var languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"];
for (var i = 0; i < languages.length; i++) {
    console.log(languages[i]);    
}


// Heterogeneous arrays
var myArray = [42, true, "string"];


// You can make a two-dimensional array by nesting arrays one layer deep.
// This one has three rows and three columns
var newArray = [[1,2,3],[4,5,6],[7,8,9]];


// You may have three elements in the first row, one element in the second row, and two elements in the third row. 
// JavaScript allows those, and they're called jagged arrays.
var jagged = [[1,2,3],[4,5],[6,7,8,9]];


// Objects

// Using objects, we can put our information and the functions that use that information in the same place.
var phonebookEntry = {};

phonebookEntry.name = 'Oxnard Montalvo';
phonebookEntry.number = '(555) 555-5555';
phonebookEntry.phone = function() {
  console.log('Calling ' + this.name + ' at ' + this.number + '...');
};

phonebookEntry.phone();


// Objects are just collections of information (keys and values) between curly braces, like this:
var me = {
    name: "Ben",
    age: 27
};
// The above example uses object literal notation.


// Recreate your me object in the editor, but this time, use the object constructor. 
// Once you make it, use either the [] notation or the . notation to give it a name property with a 
// string value (your name) and an age property with a number value (your age).
var me = new Object();
me["name"] = "Ben";
me.age = 27;


// Create three objects called object1, object2, and object3 in the editor. 
// Use either literal notation or the object constructor, and give your objects any properties you like!
var object1 = new Object();
object1["name"] = "Ben";
object1.age = 27;

var object2 = {
    name: "Tony Stark",
    avenger: "Iron Man"
};

var object3 = {
    item: "toaster",
    quantity: 5
};


// Review Time!

// Create an array, myArray. Its first element should be a number, its second should be a boolean, 
// its third should be a string, and its fourth should be... an object!
var myArray = [66, true, "string", [{name: "Bob", age: 34}]];


// Make an array called newArray. It should be 2D (that is, it should contain two elements that, in turn, are arrays) 
// and jagged (those two arrays should be of different lengths, like in the example above).
// The ultimate kicker? Make one of your inner arrays contain an object!
var newArray = [[1,2],[3,{name: "Dave", weight: 170},5]];


// Add a key called interests to myObject. Give this key an array value (the array can contain whatever you like).
var myObject = {
  name: 'Eduardo',
  type: 'Most excellent',
  interests: ['Coding', 'Sleeping']
};


// You're almost there! Last step: forge your very own object in the fires of Mount JavaScript.
var myOwnObject = {
    name: "Object",
    language: "Javascript",
    properties: 3
};
