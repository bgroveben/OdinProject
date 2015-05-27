// Introduction to Objects 1

// Declare a variable named answer. Assign to it the Boolean value that the expression evaluates to. 
// Delete the default code in the editor and run your code.
// (((3 * 90) === 270) || !(false && (!false)) || "bex".toUpperCase() === "BEX");
var answer = true;


// Look at the array multiplesOfEight, and find the one that doesn't fit.
// Replace X in line 6 such that the variable answer is assigned the Boolean value of true.
// Here is an array of multiples of 8. But is it correct?
var multiplesOfEight = [8,16,24,32,40,58];
// Test to see if a number from the array is NOT a true
// multiple of eight. Real multiples will return false.
var answer = multiplesOfEight[5] % 8 !== 0;  // The correct answer could also be: multiplesOfEight[-1]


// Create an object called bob that has no information inside the brackets.
var bob = {};


// See the console for the object I have created about myself. 
// Can you create an object called me that describes your age and which country you live in?
var Spencer = {
  age: 22,
  country: "United States"
};

// make your own object here called me
var me = {
    age: 27,
    country: "BenLand"
};


// Finish the exercise by filling in the code in lines 50 and 51 to access the name and age for susan and 
// save those into the given global variables.
var bob = {
  name: "Bob Smith",
  age: 30
};
var susan = {
  name: "Susan Jordan",
  age: 25
};
// here we save Bob's information
var name1 = bob.name;
var age1 = bob.age;
// finish this code by saving Susan's information
var name2 = susan.name;
var age2 = susan.age;


// Use bracket notation to save the dog's weight and age into variables as well.
// Take a look at our next example object, a dog
var dog = {
  species: "greyhound",
  weight: 60,
  age: 4
};
var species = dog["species"];
// fill in the code to save the weight and age using bracket notation
var weight = dog["weight"];
var age = dog["age"];


// Inspect the susan1 object carefully and note the use of object literal notation.
// Use constructor notation to create susan2, which should have the same properties and values as susan1.
// Our bob object again, but made using a constructor this time 
var bob = new Object();
bob.name = "Bob Smith";
bob.age = 30;
// Here is susan1, in literal notation
var susan1 = {
  name: "Susan Jordan",
  age: 24
};
// Make a new susan2 object, using a constructor instead
var susan2 = new Object();
susan2.name = "Susan Jordan";
susan2.age = 24;


// help us make snoopy using literal notation
// Remember snoopy is a "beagle" and is 10 years old.
var snoopy = {
    species: "beagle",
    age: 10
};
// help make buddy using constructor notation
// buddy is a "golden retriever" and is 5 years old
var buddy = new Object();
buddy.species = "golden retriever";
buddy.age = 5;


// Create an object named 'bicycle' that has 3 properties.
// Literal notation:
var bicycle = {
    speed: 0,
    gear: 1,
    frame_material: "carbon fiber"
};
// Constructor notation:
var bicycle = new Object();
bicycle.speed = 0;
bicycle.gear = 1;
bicycle.frame_material = "carbon fiber";
