// Choose Your Own Adventure game using switch statements and if/else loops.
// The story sucks, but I'm focusing on the mechanics right now.

var user = prompt("Sup dawg?").toLowerCase();
    switch(user) {
      case 'nuttin':
        var alone = prompt("Are you alone(yes or no)?").toLowerCase();
        var happy = prompt("Are you happy(yes or no)?").toLowerCase();
        if (alone === 'yes' || happy ==='yes') {
          console.log("word");
        } else {
          console.log("Then fix that!");
        }
        break;
      case 'chillin':
        var music = prompt("Do you have any music on(yes or no)?").toLowerCase();
        var coding = prompt("Are you knuckling out some code(yes or no)?").toLowerCase();
        if (music === 'yes' && coding === 'yes') {
          console.log("yo");
        } else {
          console.log("Put some music on and knuckle out some code!");    
        }
        break;
      case 'coding':
        console.log("sweet");
        break;
      default:
        console.log("dat's cool too");
    }