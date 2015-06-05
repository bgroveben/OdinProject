// Problems from Project Euler

// #1
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.
var euler1 = function(number){
    total = 0;
    for (var i = 0; i < number; i++){
        if (i % 3 === 0){
            total += i;
        }
        else if (i % 5 === 0) {
            total += i;
        }
    }
    return total;
};
euler1(1000);


// #2
// Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
// By starting with 1 and 2, the first 10 terms will be:
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// By considering the terms in the Fibonacci sequence whose values do not exceed 4000000, find the sum of the even-valued terms.
a = 1;
b = 2;
c = 0;
total = 0;
while (a < 4000000) {
    if (a % 2 === 0){
        total += a;
    }
    c = a + b;
    a = b;
    b = c;
}
console.log(total);


// #3
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?
// Use Seive of Eratosthenes to find all of the prime numbers up to 600851475143 / 2 (300425737571).
var sieve = function(n) {
    // Eratosthenes algorithm to find all primes under n
    var array = [], upperLimit = Math.sqrt(n), output = [];
    // Make an array from 2 to (n-1)
    for (var i = 0; i < n; i++) {
        array.push(true);
    }
    // Remove multiples of primes starting from 2, 3, 5,...
    for (var i = 2; i <= upperLimit; i++) {
        if (array[i]) {
            for (var j = i * i; j < n; j += i) {
                array[j] = false;
            }
        }
    }
    // All array[i] set to true are primes
    for (var i = 2; i < n; i++) {
        if (array[i]) {
            output.push(i);
        }
    }
    return output;
};
// The above code is very thorough, but is not quite what I'm looking for beacuse the run time is so long.
// In addition to the code above, I would then have to go through each of the resulting numbers to find which ones
// are prime factors of 600851475143.
// I used the code below instead.
var optimusPrime = function(x) {
    var i = 2;
    while (i <= x) {
        if (x % i === 0) {
            x /= i;
        }
        else {
            i++;
        }
    }
    return i;
};
optimusPrime(600851475143);
