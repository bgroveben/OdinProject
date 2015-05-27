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