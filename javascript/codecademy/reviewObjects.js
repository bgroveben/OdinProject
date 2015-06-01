// Objects in review are closer than they appear.

// Looks For-In To Me
// Examine the languages object. Three properties are strings, whereas one is a number.
// Use a for-in loop to print out the three ways to say hello. 
// In the loop, you should check to see if the property value is a string so you don't accidentally print a number.
var languages = {
    english: "Hello!",
    french: "Bonjour!",
    notALanguage: 4,  // We don't want this one printed out
    spanish: "Hola!"
};
// print hello in the 3 different languages
for(var hello in languages) {
    if (typeof languages[hello] === "string") {
        console.log(languages[hello]);    
    };
}


// Hello? Yes, This is Dog
// Add the sayHello method to the Dog class by extending its prototype.
// sayHello should print to the console: "Hello this is a [breed] dog", where [breed] is the dog's breed.
function Dog (breed) {
    this.breed = breed;
};
// add the sayHello method to the Dog class so all dogs now can say hello
Dog.prototype.sayHello = function() {
    console.log("Hello this is a " + this.breed + " dog");    
};
// Make some dogs to be printed to the console
var yourDog = new Dog("golden retriever");
yourDog.sayHello();
var myDog = new Dog("dachshund");
myDog.sayHello();


// So Meta I Can't Take It!
// I still don't get this one.
// what is this "Object.prototype" anyway...?
// Let's first see what type Object.prototype is. 
var prototypeType = typeof Object.prototype
console.log(prototypeType);  // => object
// now let's examine it!
// If all goes well, you should realize that Object.prototype itself is an object! 
// And since all objects have the hasOwnProperty method, it's pretty easy to check if hasOwnProperty comes from Object.prototype.
var hasOwn = Object.prototype.hasOwnProperty("hasOwnProperty");
console.log(hasOwn); // => true


// Private Eye
// Recall that:
// Public properties can be accessed from outside the class
// Private properties can only be accessed from within the class
// Using constructor notation, a property declared as this.property = "someValue;" will be public, 
// whereas a property declared with var property = "hiddenValue;" will be private.
// Modify the StudentReport class so that no grades will be printed to the console in the for-in loop.
// However, getGPA should still function properly in the last line.
function StudentReport() {
    var grade1 = 4;  // was this.grade1 = 4;
    var grade2 = 2;  // was this.grade2 = 2;
    var grade3 = 1;  // was this.grade3 = 1;
    this.getGPA = function() {
        return (grade1 + grade2 + grade3) / 3;  // was return(this.grade1 + this.grade2 + this.grade3) / 3;
    };
}
var myStudentReport = new StudentReport();
for(var x in myStudentReport) {
    if(typeof myStudentReport[x] !== "function") {
        console.log("Muahaha! " + myStudentReport[x]);
    }
}
console.log("Your overall GPA is " + myStudentReport.getGPA());
