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


// FIZZBUZZ!!!
for (var x = 1; x < 21; x++) {
    if (x % 3 === 0 && x % 5 === 0) {
        console.log("FizzBuzz");    
    } else if (x % 3 === 0) {
        console.log("Fizz");
    } else if (x % 5 === 0) {
        console.log("Buzz");
    } else {
        console.log(x);    
    }   
};


// MORE FIZZBUZZ!
for (var i = 1; i <= 20; i++) {
    if (i % 15 === 0) {
        console.log("FizzBuzz");    
    } else if (i % 3 === 0) {
        console.log("Fizz");    
    } else if (i % 5 === 0) {
        console.log("Buzz");    
    } else {
        console.log(i);    
    }
};


