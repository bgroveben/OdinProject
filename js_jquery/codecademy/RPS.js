// Rock, paper, scissors game.

var userChoice = prompt("Do you choose rock, paper, or scissors?");

var computerChoice = Math.random();

if (computerChoice < 0.34) {
    computerChoice = "rock";
}

else if (computerChoice <= 0.66) {
    computerChoice = "paper";
}

else {
    computerChoice = "scissors";
}
console.log("computerChoice");
