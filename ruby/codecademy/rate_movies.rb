=begin 
Let's start by creating a program that will keep track of our movie ratings.
It'll do one of four things: add a new movie to a hash, 
                             update the rating for an existing movie, 
                             display the movies and ratings that are already in the hash, 
                             or delete a movie from the hash.
If it doesn't receive one of those four commands, the program will output some kind of error message.
=end

movies = {
  'Star Wars' => 5    
}

puts "Do you like movies?"
choice = gets.chomp