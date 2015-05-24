// Introduction to Functions in JS

// To run this file, go to https://dharmoslap.github.io/RunJS/, and drag and drop the icon into the browser window.

var speed = 65;
// Complete the condition in the ()s on line 5
if (speed > 80) {
	// Use console.log() to print "Slow down"
	console.log("Slow down");
} 
else {
	// Use console.log() to print "Drive safe"
    console.log("Drive safe");
}


// This is what a function looks like:
var divideByThree = function (number) {
    var val = number / 3;
    console.log(val);
};
// On line 12, we call the function by name
// Here, it is called 'dividebythree'
// We tell the computer what the number input is (i.e. 6)
// The computer then runs the code inside the function!
divideByThree(21);


// Below is the greeting function!
// See line 32
// We can join strings together using the plus sign (+)
// See the hint for more details about how this works.
var greeting = function (name) {
    console.log("Great to see you," + " " + name);
};
// On line 35, call the greeting function!
greeting("Ben");


//!! Each line of code inside { } must end with a semi-colon.
//!! The entire function ends with a semi-colon.


// Write your foodDemand function below.
// Last hint: In your reusable block of code, end each line
// with a semicolon (;)
var foodDemand = function(food) {
   console.log("I want to eat" + " " + food); 
};
foodDemand("pizza");


//!!  At the end of each line of code (within the { }) and after the entire function (after the { }), please put a semi-colon.


// Nicely written function:
var calculate = function (number) {
    var val = number * 10;
    console.log(val);
};
// Badly written function with syntax errors on line 60! Fix it!
// greeting var func{name}(console.log(name)))}
var greeting = function (name) {
    console.log(name);  
};
greeting("Ben")


// You want to declare a function that calculates the cost of buying 5 oranges.
// You then want to calculate the cost of the 5 all together.
// Write a function that does this called orangeCost().
// It should take a parameter that is the cost of an orange, and multiply it by 5.
// It should log the result of the multiplication to the console.
// Call the function where oranges each cost 5 dollars.
var orangeCost = function (cost) {
    var total = cost * 5;
    console.log(total);
};
orangeCost(1);


// Using the return keyword.
// Parameter is a number, and we do math with that parameter.
var timesTwo = function(number) {
    return number * 2;
};
// Call timesTwo here!
var newNumber = timesTwo(8)
console.log(newNumber);


// Define quarter here.
var quarter = function (number) {
    return number / 4;
};
if (quarter(12) % 3 === 0 ) {
  console.log("The statement is true");
} else {
  console.log("The statement is false");
}


// Functions with two parameters.
var perimeterBox = function (length, width) {
    return length + length + width + width;  
};
perimeterBox(8,12);


// Variables defined outside a function are accessible anywhere once they have been declared. They are called global variables and their scope is global.
var my_number = 7; //this has global scope
var timesTwo = function(number) {
    my_number = number * 2;
    console.log("Inside the function my_number is: ");
    console.log(my_number);
}; 
timesTwo(7);
console.log("Outside the function my_number is: ")
console.log(my_number);
// Variables defined inside a function are local variables. They cannot be accessed outside of that function.
var my_number = 7; //this has global scope
var timesTwo = function(number) {
    my_number = number * 2;
    console.log("Inside the function my_number is: ");
    console.log(my_number); // 14
}; 
timesTwo(7);
console.log("Outside the function my_number is: ") 
console.log(my_number); // 7


// Write a function called nameString()
// It should take name as a parameter.
// The function returns a string equal to "Hi, I am" + " " + name.
// Call nameString() by passing it your name, and use console.log to print the output.
var nameString = function (name) {
    return "Hi, I am" + " "	+ name;	
};
console.log(nameString("Ben"));


var sleepCheck = function (numHours) {
    if (numHours >= 8)
        return "You're getting plenty of sleep! Maybe even too much!";
    else
        return "Get some more shut eye!";
};
console.log(sleepCheck(8));