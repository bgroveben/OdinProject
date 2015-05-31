// Privacy Please!

// Open to the Public
// In JavaScript all properties of an object are automatically public. 
// Public means that they can be accessed outside the class. 
// Think of these properties as the information a class is willing to share.
// Declare a third variable called myAge and use it to store the age property of the john object.
function Person(first,last,age) {
   this.firstName = first;
   this.lastName = last;
   this.age = age;
}
var john = new Person('John','Smith',30);
var myFirst = john.firstName;
var myLast = john.lastName;
//declare variable myAge set to the age of the john object.
var myAge = john.age;


// Private Variables
// Private variables are pieces of information you do not want to publicly share,
// and they can only be directly accessed from within the class.
function Person(first,last,age) {
   this.firstname = first;
   this.lastname = last;
   this.age = age;
   var bankBalance = 7500;  // private variable
}
// create your Person 
var john = new Person('John', 'Smith', 27);
// try to print his bankBalance
console.log(john.bankBalance);  // => undefined


// Accessing Private Variables
// Although we cannot directly access private variables from outside the class, there is a way to get around this. 
// We can define a public method that returns the value of a private variable.
function Person(first,last,age) {
   this.firstname = first;
   this.lastname = last;
   this.age = age;
   var bankBalance = 7500;
   // add a method getBalance that returns bankBalance
   this.getBalance = function() {
      // your code should return the bankBalance
      return bankBalance;
   };
}
// create a new person
var john = new Person('John','Smith',30);
console.log(john.bankBalance);  // => undefined
// create a new variable myBalance that calls getBalance()
var myBalance = john.getBalance();
console.log(myBalance);  // => 7500


// Private Methods
// Why did that code work? 
// An object's private variables can only be accessed by other methods that are part of that same object. 
// So, we just used an object's public method to access a private variable!
// The way to access a private method is similar to accessing a private variable. 
// You must create a public method for the class that returns the private method.
function Person(first,last,age) {
   this.firstname = first;
   this.lastname = last;
   this.age = age;
   var bankBalance = 7500;
   // Changing this.returnBalance from the last exercise to var returnBalance makes this method private.
   var returnBalance = function() {
      return bankBalance;
   };  
   // Create a method called askTeller within the Person class that returns the returnBalance method. 
   // This means that it returns the method itself and NOT the result of calling that method. 
   // So you should NOT have parentheses after returnBalance.
   this.askTeller = function() {
      return returnBalance;   
   };
}
var john = new Person('John','Smith',30);
console.log(john.returnBalance);  // => undefined
var myBalanceMethod = john.askTeller();
// Because askTeller returns a method, we need to call it to make it any use.
var myBalance = myBalanceMethod();
console.log(myBalance);  // => 7500


// Passing Arguments
// The askTeller function has been modified within the Person class to directly give you your balance. 
// However, it now needs the account password in order to return the bankBalance.
function Person(first,last,age) {
   this.firstname = first;
   this.lastname = last;
   this.age = age;
   var bankBalance = 7500;
   this.askTeller = function(pass) {
     if (pass == 1234) return bankBalance;
     else return "Wrong password.";
   };
}
var john = new Person('John','Smith',30);
// Create a new variable called myBalance that calls the askTeller function with a password argument, 1234.
var myBalance = john.askTeller(1234);
console.log(myBalance);  // => 7500
