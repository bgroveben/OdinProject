// An Objective Review
// Recall we can create objects using either literal notation or constructor notation.
var james = {
    // add properties to this object!
    job: "programmer",
    married: false
};

function Person(job, married) {
    this.job = job;
    this.married = married;
}

// create a "gabby" object using the Person constructor!
var gabby = new Person("student", true);


// Fun with Functions
// Add a speak method to the Person constructor. Whenever speak is called, it should print "Hello!" to the console.
function Person(job, married) {
    this.job = job;
    this.married = married;
    // add a "speak" method to Person!
    this.speak = function() {
        console.log("Hello!");    
    };
}
var user = new Person("Codecademy Student",false);
user.speak();


// Literally Speaking
// We can also add methods to objects in literal notation:
// Take a look at the partially-defined james object. 
// Complete the speak method such that the last two lines in the editor will cause "Hello, I am feeling great" 
// and "Hello, I am feeling just okay" to be printed to the console.
var james = {
    job: "programmer",
    married: false,
    speak: function(mood) {
        console.log("Hello, I am feeling " + mood);   
    }
};
james.speak("great");
james.speak("just okay");


// Can I See Your References?
var james = {
    job: "programmer",
    married: false,
    sayJob: function() {
        // complete this method
        console.log("Hi, I work as a " + this.job);
    }
};
// james' first job
james.sayJob();
// change james' job to "super programmer" here
james.job = "super programmer";
// james' second job
james.sayJob();


// Who's in Your Bracket?
var james = {
    job: "programmer",
    married: false
};
// set to the first property name of "james"
var aProperty = "job";
// print the value of the first property of "james" 
// using the variable "aProperty"
console.log(james[aProperty]);
