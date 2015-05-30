// You Down With OOP?

// Class is in Session
function Person(name,age) {
  this.name = name;
  this.age = age;
}
// Let's make bob and susan again, using our constructor
var bob = new Person("Bob Smith", 30);
var susan = new Person("Susan Jordan", 35);
// Make your own class, Circle, by building a constructor for it. 
// The constructor for Circle should have one property, radius, and take one argument for the initial radius. 
function Circle(radius) {
  this.radius = radius;    
}


// Teach Snoopy
// So we know that a class will have certain properties and methods, but what keeps track of what a given class can or can't do? 
// What a class has or doesn't have? That is the job of the prototype.
function Dog (breed) {
  this.breed = breed;
}
// here we make buddy and teach him how to bark
var buddy = new Dog("Golden Retriever");
buddy.bark = function() {
  console.log("Woof");
};
buddy.bark();
// here we make snoopy
var snoopy = new Dog("Beagle");
// we need you to teach snoopy how to bark here
snoopy.bark = function() {
  console.log("Aroo");    
};
snoopy.bark();


// How do Classes Help Us?
function Person(name,age) {
  this.name = name;
  this.age = age;
}
// a function that prints the name of any given person
var printPersonName = function (p) {
  console.log(p.name);
};
var bob = new Person("Bob Smith", 30);
printPersonName(bob);
// make a person called me with your name and age
// then use printPersonName to print your name
var me = new Person("Ben Grove", 50);
printPersonName(me);


// Prototype to the Rescue
// Instead of using buddy.bark to add the bark method to just the buddy object, we use Dog.prototype.bark.
// This immediately teaches all Dogs the new method.
function Dog (breed) {
  this.breed = breed;
};
// here we make buddy and teach him how to bark
var buddy = new Dog("golden Retriever");
Dog.prototype.bark = function() {
  console.log("Woof");
};
buddy.bark();
// here we make snoopy
var snoopy = new Dog("Beagle");
/// this time it works!
snoopy.bark();


// Prototype Practice
// Add a meow method to the Cat prototype so that all cats can now meow. 
// This method should print to the console "Meow!". Then call this method for each cat.
function Cat(name, breed) {
    this.name = name;
    this.breed = breed;
}
// let's make some cats!
var cheshire = new Cat("Cheshire Cat", "British Shorthair");
var gary = new Cat("Gary", "Domestic Shorthair");
// add a method "meow" to the Cat class that will allow
// all cats to print "Meow!" to the console
Cat.prototype.meow = function() {
    console.log("Meow!");    
};
// add code here to make the cats meow!
cheshire.meow();
gary.meow();
