// Combining Objects With Our Other Tools

// Arrays of Objects
// Our person constructor
function Person (name, age) {
    this.name = name;
    this.age = age;
}
// Now we can make an array of people
var family = new Array();
family[0] = new Person("alice", 40);
family[1] = new Person("bob", 42);
family[2] = new Person("michelle", 8);
// add the last family member, "timmy", who is 6 years old
family[3] = new Person("timmy", 6);
console.log(family);


// Loop the loop
// Our Person constructor
function Person (name, age) {
    this.name = name;
    this.age = age;
}
// Now we can make an array of people
var family = new Array();
family[0] = new Person ("alice", 40);
family[1] = new Person ("bob", 42);
family[2] = new Person ("michelle", 8);
family[3] = new Person ("timmy", 6);
// loop through our new array
for (var i = 0; i < family.length; i++) {
    console.log (family[i]);
};


// Passing Objects Into Functions
// Our person constructor
function Person (name, age) {
    this.name = name;
    this.age = age;
}
// We can make a function which takes persons as arguments
// This one computes the difference in ages between two people
var ageDifference = function(person1, person2) {
    return person1.age - person2.age;
}
var alice = new Person("Alice", 30);
var billy = new Person("Billy", 25);
// get the difference in age between alice and billy using our function
var diff = ageDifference(alice, billy);
console.log(diff);


// This time try making your own function that takes objects as parameters!
// Our person constructor
function Person (name, age) {
    this.name = name;
    this.age = age;
}
// We can make a function which takes persons as arguments
// This one computes the difference in ages between two people
var ageDifference = function(person1, person2) {
    return person1.age - person2.age;
};
// Make a new function, olderAge, to return the age of
// the older of two people
var olderAge = function(person1, person2) {
    return Math.max(person1.age, person2.age);    
};
// Let's bring back alice and billy to test our new function
var alice = new Person("Alice", 30);
var billy = new Person("Billy", 25);
console.log("The older person is " + olderAge(alice, billy));


// Customizing Constructors
// In addition to the basic Object constructor, we can define our own custom constructors.
// 3 lines required to make harry_potter
var harry_potter = new Object();
harry_potter.pages = 350;
harry_potter.author = "J.K. Rowling";
// A custom constructor for book
function Book (pages, author) {
    this.pages = pages;
    this.author = author;
}
// Use our new constructor to make the_hobbit in one line
var the_hobbit = new Book (320, "J.R.R. Tolkien");


// Methods
// Methods are like functions that are associated with a particular object.
function Circle (radius) {
    this.radius = radius;
    this.area = function () {
        return Math.PI * this.radius * this.radius; 
    };
    // Define a method perimeter that calculates the perimeter of a circle.
    this.perimeter = function() {
        return 2 * Math.PI * this.radius;    
    };
};
