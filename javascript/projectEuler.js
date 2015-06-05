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
// I used the code below instead. The while loop executes until the largest prime factor of 600851475143 is found.
var optimusPrime = function(x) {
    var i = 2;
    while (i <= x) {
        if (x % i === 0) {  // check to see if i is divisible by x
            x /= i;  // x = x/i, working our way up to the largest prime factor
        }
        else {
            i++;  // lather, rinse, repeat 
        }
        console.log(i);  // In this case, all numbers from 3 to 6857 are printed out
    }
    return i;
};
optimusPrime(600851475143);
// When I tried this code on other numbers, the browser crashed, so I think I understand why it works, but I'm not quite sure.
// Also, what if the output 6857 wasn't a prime factor, but just a factor that happened to be prime?
// Project Euler says I got the right answer, but this method may have some flaws.
// So... I found this on a Github gist --https://gist.github.com/andyhd/3216358-- and it actually returned 
// much more desirable and predictable results, meaning I got the correct answer and it didn't crash my browser when I changed
// the value of n.
function factors(n) {
  var i;
  var out = [];
  var sqrt_n = Math.sqrt(n);
  for (i = 2; i <= sqrt_n; i++) {
    if (n % i === 0) {
      out.push(i);
    }
  }
  return out;
}
function primep(n) {
  return factors(n).length === 0;
}
function largestPrimeFactor(n) {
  return factors(n).filter(primep).pop();
}
largestPrimeFactor(600851475143);
// For a thorough explanation of why the above program works see:
// https://tomajwinter.wordpress.com/2013/06/26/26-06-13-javascript-koans-highest-prime/
