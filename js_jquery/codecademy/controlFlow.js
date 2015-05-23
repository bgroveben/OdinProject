// More on Control Flow

// Write a function that returns true if a number is even, false if it is odd.
var isEven = function(number) {
    if (number % 2 === 0) {
        return true;    
    } else {
        return false;
    }
};


// Add an else if clause that deals with something that is not a number.
var isEven = function(number) {
    if (number % 2 === 0) {
        return true;
    } 
    else if (isNaN(number)) {
        return "Not a Number";
    } 
    else {
        return false;
    }
};


// Switch statement
var color = prompt("What's your favorite primary color?","Type your favorite color here");

switch(color) {
  case 'red':
    console.log("Red's a good color!");
    break;
  case 'blue':
    console.log("That's my favorite color, too!");
    break;
  case 'yellow':
    console.log("Yellow is Homer Simpson's skin color!");
    break;
  default:
    console.log("I don't think that's a primary color!");
}


// Another switch statement
var candy = prompt("What's your favorite candy?","Type your favorite candy here.");

switch(candy) {
  case 'licorice':
    console.log("Gross!");
    break;
  case 'gum':
    console.log("I like gum!");
    break;
  case 'beets':
    console.log("...is that even a candy?");
    break;
  default:
    console.log(candy + " is good too!")
}


// More practice with switch statements
var answer = prompt("What kind of music do you like?", "Type your favorite music here");

switch(answer) {
  case 'rock':
    console.log("A rocker! Nice!");
    break;
  case 'country':
    console.log("YeeHaw country boy or girl!");
    break;
  case 'jazz':
    console.log("Dig it, man!");
    break;
  default:
    console.log(answer + " is good too!")
}


// Yet another switch statement
var answer = prompt("Why did you learn to write code?","Put your favorite answer here");
  
switch(answer) {
    case 'build websites':
      console.log("Building web sites is cool!");
      break;
    case 'make phone apps':
      console.log("Phone apps are cool too!");
      break;
    case 'analyze data':
      console.log("Data geeks rule!");
      break;
    case 'make video games':
      console.log("Gamers are hardcore!");
      break;
    default:
      console.log("Computer geekery with " + answer + " is all good!");
}
