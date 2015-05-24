// Flipping a coin
var coinFace = Math.floor(Math.random() * 2);

while(coinFace === 0){
	console.log("Heads! Flipping again...");
	var coinFace = Math.floor(Math.random() * 2);
}
console.log("Tails! Done flipping.");


// Another example:
var understand = true;

while(understand){
	console.log("I'm learning while loops!");
	understand = false;
}


// Avoid infinite loops!
understand = true;

while(understand){
	console.log("I'm learning while loops!");
	//Change the value of 'understand' here!
	understand = false;
}

// Don't bother with '=' or '===' in the condition
var bool = true;

while(bool){  // instead of bool = true or bool === true
    console.log("Less is more!");
    bool = false;
}


// Write a while loop that logs "I'm looping!" to the console three times.
// Remember to set your condition outside the loop!
var count = 0

var loop = function(){
	while(count < 3){
	    count++;
		console.log("I'm looping!");
	}
};
loop();


// Write a while loop that logs "Looped once!" to the console one time.
// Remember to make your condition true outside the loop!
bool = true
var soloLoop = function(){
    while (bool) {
        console.log("Looped once!");
        bool = false;
    }
};
soloLoop();


// Write a For loop and a While loop
for (var i = 1; i < 6; i++) {
    console.log("For loop")  
};

i = true;
while(i) {
    console.log("While loop");
    i = false;
};


// The 'do' / 'while' loop will run at least once
var loopCondition = false;
do {
	console.log("I'm gonna stop looping 'cause my condition is " + loopCondition + "!");	
} while (loopCondition);


// The 'do' / 'while' loop should print a string of your choice to the editor one time.
var getToDaChoppa = function(){
  // Write your do/while loop here!
    var condition = false;
    do {
        console.log("Get To Da Choppa before da loop condition becomes " + condition + "!")   
    } while (condition);
};
getToDaChoppa();


// And for the finale, one of each (for, while, do/while) kind of loop!
for (var i = 1; i < 2; i++) {
    console.log("For loop");  
};

condition = true;
while (condition) {
    console.log("While loop");
    condition = false;
};

condition = false;
do {
    console.log("Do loop");  
} while(condition);