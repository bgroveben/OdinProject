// This is a Choose Your Own Adventure game from the Codecademy Javascript track.

// To run this file, go to https://dharmoslap.github.io/RunJS/, and drag and drop the icon into the browser window.

// Check if the user is ready to play!

confirm("I am ready to play!");

var age = prompt("What's your age?");

if (age < 13)
{
    console.log("Play at your own risk, youngster.");
}
else
{
    console.log("Let's get going!");
}

console.log("You are at a Justin Bieber concert, and you hear this lyric 'Lace my shoes off, start racing.'");

console.log("Suddenly, Bieber stops and says, 'Who wants to race me?'");

var userAnswer = prompt("Do you want to race Bieber on stage?");

if (userAnswer === "yes")
{
    console.log("You and Bieber start racing. It's neck and neck! You win by a shoelace!");   
}
else
{
    console.log("Oh no! Bieber shakes his head and sings 'I set a pace, so I can race without pacing.'"); 
}

var feedback = prompt("Please rate this game 0-10; a higher number means a better game.");

if (feedback > 8)
{
    console.log("Thank you! We should race at the next concert!");    
}
else
{
    console.log("I'll keep practicing coding and racing.");  
}