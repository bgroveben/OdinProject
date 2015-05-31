// Object Oriented Programming: Inheriting a Fortune.

// It's All in the Genes
// In object-oriented programming, inheritance allows one class to see and use the methods and properties of another class.

// Create a class named Animal with two properties, name and numLegs. 
// The Animal constructor should have two arguments whose values are assigned to name and numLegs.
function Animal(name, numLegs){
    this.name = name;
    this.numLegs = numLegs;
};
// Next, change the prototype of Animal and add a method sayName that prints to the console 
// "Hi my name is [name]", where [name] is the value of name.
Animal.prototype.sayName = function() {
    console.log("Hi my name is " + this.name)    
};
// provided code to test above constructor and method
var penguin = new Animal("Captain Cook", 2);
penguin.sayName();


// Marching Penguins
// Create a brand new Penguin class constructor
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs;
}
Animal.prototype.sayName = function() {
    console.log("Hi my name is " + this.name);
};
// create a Penguin constructor here
function Penguin(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs;
}
// create a sayName method for Penguins here
Penguin.prototype.sayName = function() {
    console.log("Hi my name is " + this.name);    
};
// our test code
var theCaptain = new Penguin("Captain Cook", 2);
theCaptain.sayName();


// DRY Penguins
// Creating a brand new Penguin was nice, but we did end up reusing a lot of the same code as the Animal class.
// To say that Penguin inherits from Animal, we need to set Penguin's prototype to be Animal.
// the original Animal class and sayName method
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs;
}
Animal.prototype.sayName = function() {
    console.log("Hi my name is " + this.name);
};
// define a Penguin class
function Penguin(name) {  // All penguins have 2 legs, so we only need the function parameter name
    this.name = name;
    this.numLegs = 2;
}
// set its prototype to be a new instance of Animal
Penguin.prototype = new Animal();


// Black (and White) Penguin Magic
// Now for some black magic and to see the power of inheritance!
// We never defined a sayName method for Penguin, but what happens when we try to call it?
// the original Animal class and sayName method
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs;
}
Animal.prototype.sayName = function() {
    console.log("Hi my name is " + this.name);
};
// define a Penguin class
function Penguin(name) {
    this.name = name;
    this.numLegs = 2;
}
// set its prototype to be a new instance of Animal
Penguin.prototype = new Animal();
// Create a Penguin object with the variable name penguin and any name you'd like.
var penguin = new Penguin("Dave");
penguin.sayName();
// => Hi my name is Dave


// Penguins, Properties, and the Prototype
// We saw in the last exercise how Penguin inherited the sayName method from Animal. 
// We now explore how classes can inherit properties as well.
function Penguin(name) {
    this.name = name;
    this.numLegs = 2;
}
// create your Emperor class here and make it inherit from Penguin
function Emperor(name) {
    this.name = name;    
}
Emperor.prototype = new Penguin();
// create an "emperor" object and print the number of legs it has
var emperor = new Emperor("Julius Caesar");
console.log(emperor.numLegs);  // => 2


// Up the Food-I-mean-Prototype Chain
// If JavaScript encounters something it can't find in the current class's methods or properties, 
// it looks up the prototype chain to see if it's defined in a class that it inherits from. 
// This keeps going upwards until it stops all the way at the top: the mighty Object.prototype.
// set up the original classes
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs;
    this.isAlive = true;
}
function Penguin(name) {
    this.name = name;
    this.numLegs = 2;
}
function Emperor(name) {
    this.name = name;
    this.saying = "Waddle waddle";
}
// set up the prototype chain
Penguin.prototype = new Animal();
Emperor.prototype = new Penguin();
// declare a new Emperor
var myEmperor = new Emperor("Jules");
// print out various properties of myEmperor
console.log(myEmperor.saying); // should print "Waddle waddle"
console.log(myEmperor.numLegs); // should print 2
console.log(myEmperor.isAlive); // should print true
