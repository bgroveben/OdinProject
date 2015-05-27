// Intro to Objects I, lesson 4/33 "I have to celebrate you baby"
// Imagine you have a movie collection, and you want to write code that returns your review for each one.

var getReview = function (movie) {
  switch(movie) {
    case 'Toy Story 2':
      return("Great story. Mean Prospector.");
      console.log("Great story. Mean Prospector.");
      break;
    case 'Finding Nemo':
      return("Cool animation, and funny turtles.");
      console.log("Cool animation, and funny turtles.");
      break;
    case 'The Lion King':
      return("Great songs.");
      console.log("Great songs.");
      break;
    default:
      return("I don't know!");
      console.log("I don't know!");
  }
};

getReview('Finding Nemo');
