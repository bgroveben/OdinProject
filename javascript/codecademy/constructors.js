// A constructor is a way to make an object.

// here we make bob using the Object constructor
var bob = new Object();
bob.name = "Bob Smith";
// add bob's age here and set it equal to 20
bob.age = 20;


// Instead of using the Object constructor which is empty and has no properties, 
// we can make our own constructors which have properties.
function Person(name,age) {
  this.name = name;
  this.age = age;
}
// Let's make bob and susan again, using our constructor
var bob = new Person("Bob Smith", 30);
var susan = new Person("Susan Jordan", 25);
// help us make george, whose name is "George Washington" and age is 275
var george = new Person("George Washington", 275);


// Finish the Dog constructor we have started . You can include whatever parameters and properties you want.
// Use the Cat constructor as an example.
function Cat(age, color) {
  this.age = age;
  this.color = color;
}
// make a Dog constructor here
function Dog(name, breed) {
  this.name = name;
  this.breed = breed;
}


// In a constructor, we don't have to define all the properties using parameters. See how we set the species to be "Homo Sapiens".
// This means that when we create any Person, their species will be "Homo Sapiens".
function Person(name,age) {
  this.name = name;
  this.age = age;
  this.species = "Homo Sapiens";
}
var sally = new Person("Sally Bowles", 39);
var holden = new Person("Holden Caulfield", 16);
console.log("sally's species is " + sally.species + " and she is " + sally.age);
console.log("holden's species is " + holden.species + " and he is " + holden.age);


// In addition to setting properties, constructors can also define methods.
// Define a new method, calcPerimeter, which calculates and returns the perimeter for a Rectangle in terms of height and width.
function Rectangle(height, width) {
  this.height = height;
  this.width = width;
  this.calcArea = function() {
      return this.height * this.width;
  };
  // put our perimeter function here!
  this.calcPerimeter = function() {
      return (this.height * 2) + (this.width * 2);
  };
}
var rex = new Rectangle(7,3);
var area = rex.calcArea();
var perimeter = rex.calcPerimeter();


// Create a new object rabbit1 with the adjective "fluffy", a new object rabbit2 with the adjective "happy", 
// and a new object rabbit3 with the adjective "sleepy".
// Use the method describeMyself to print out in the console a sentence about each object you just created!
function Rabbit(adjective) {
    this.adjective = adjective;
    this.describeMyself = function() {
        console.log("I am a " + this.adjective + " rabbit");
    };
}
// now we can easily make all of our rabbits
var rabbit1 = new Rabbit("fluffy");
var rabbit2 = new Rabbit("happy");
var rabbit3 = new Rabbit("sleepy");
