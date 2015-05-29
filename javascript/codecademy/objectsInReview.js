// Objects in Review

// There are two basic ways to make objects:
// make spencer here with literal notation
var spencer = {
  age: 22,
  country: "United States"
};

// make spencer2 here with constructor notation
var spencer2 = new Object();
spencer2.age = 22;
spencer2.country = "United States";


// Properties
var snoopy = new Object();
snoopy.species = "beagle";
snoopy.age = 10;
// save Snoopy's age and species into variables
// use dot notation for snoopy's species
var species = snoopy.species;  
// use bracket notation for snoopy's age
var age = snoopy["age"];


// Customizing Constructors
// 3 lines required to make harry_potter
var harry_potter = new Object();
harry_potter.pages = 350;
harry_potter.author = "J.K. Rowling";
// A custom constructor for book
function Book (pages, author) {
    this.pages = pages;
    this.author = author;
}
// Use our new constructor to make the_hobbit in one line
var the_hobbit = new Book (320, "J.R.R. Tolkien");


// Methods
function Circle (radius) {
    this.radius = radius;
    this.area = function () {
        return Math.PI * this.radius * this.radius;
        
    };
    // define a perimeter method here
    this.perimeter = function() {
        return 2 * Math.PI * this.radius;    
    };
};