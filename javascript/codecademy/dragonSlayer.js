// Dragon Slaying game; you have to get 4 hits on the Dragon to win.

var slaying = true;
var youHit = Math.floor(Math.random() * 2);
var damageThisRound = Math.floor(Math.random()*5 + 1);
var totalDamage = 0;
while(slaying) {
    if (youHit === 1) {
        console.log("Yay! You hit the Dragon!");
        totalDamage += damageThisRound;
        if (totalDamage >= 4) {
            console.log("Hurray, you slew the Dragon!")
        } else {
            youHit = Math.floor(Math.random() * 2);    
        }
    } else {
        console.log("Sorry Dawg, the Dragon burned you up!");
    }
    slaying = false;
}