// First, a review of functions:

// Accepts a number x as input and returns its square
var square = function (x) {
  return x * x;
};
// Write the function multiply below
// It should take two parameters and return the product
var multiply = function (x,y) {
    return x * y;  
};
multiply(4,5)


// Now on to methods:
// A method is just like a function associated with an object.
// Here is bob again, with his usual properties:
var bob = new Object();
bob.name = "Bob Smith";
bob.age = 30;
// this time we have added a method, setAge
bob.setAge = function (newAge){
  bob.age = newAge;
};
// here we set bob's age to 40
bob.setAge(40);
// bob's feeling old.  Use our method to set bob's age to 20
bob.setAge(20);


// Methods serve several important purposes when it comes to objects.
// They can be used to change object property values. The method setAge allows us to update bob.age.
// They can be used to make calculations based on object properties. 
// Functions can only use parameters as an input, but methods can make calculations with object properties. 
// For example, we can calculate the year bob was born based on his age with our getYearOfBirth method.
var bob = new Object();
bob.age = 17;
// this time we have added a method, setAge
bob.setAge = function (newAge){
  bob.age = newAge;
};
bob.getYearOfBirth = function () {
  return 2015 - bob.age;
};
console.log(bob.getYearOfBirth());


// The keyword this acts as a placeholder, and will refer to whichever object called that method when the method is actually used.
// To show this way of making setAge works just like the one in exercise 2, use bob's setAge method to change his age to 50.
// here we define our method using "this", before we even introduce bob
var setAge = function (newAge) {
  this.age = newAge;
};
// now we make bob
var bob = new Object();
bob.age = 30;
// and down here we just use the method we already made
bob.setAge = setAge;
// change bob's age to 50 here
bob.setAge(50);


// here we define our method using "this", before we even introduce bob
var setAge = function (newAge) {
  this.age = newAge;
};
// now we make bob
var bob = new Object();
bob.age = 30;
bob.setAge = setAge;
// make susan here, and first give her an age of 25
var susan = new Object();
susan.age = 25;
susan.setAge = setAge;
// here, update Susan's age to 35 using the method
susan.setAge(35);


// Finish the method setWidth. It should take a parameter newWidth. It will change the property width to the given parameter.
// Then use the two methods setHeight and setWidth to change rectangle's height to 6 and width to 8.
var rectangle = new Object();
rectangle.height = 3;
rectangle.width = 4;
// here is our method to set the height
rectangle.setHeight = function (newHeight) {
  this.height = newHeight;
};
// help by finishing this method
rectangle.setWidth = function (newWidth) {
  this.width = newWidth;
};
// here change the width to 8 and height to 6 using our new methods
rectangle.setHeight(6);
rectangle.setWidth(8);


// Add another method called calcArea, which returns the area of square in terms of sideLength. 
// Use the calcPerimeter function as a guide.
var square = new Object();
square.sideLength = 6;
square.calcPerimeter = function() {
  return this.sideLength * 4;
};
// help us define an area method here
square.calcArea = function() {
  return this.sideLength * this.sideLength;  
};
var p = square.calcPerimeter();
var a = square.calcArea();
