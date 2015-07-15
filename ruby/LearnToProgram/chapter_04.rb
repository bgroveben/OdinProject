# A Few Things to Try

# Write a program which asks for a person's first name, then middle, then last. 
# Finally, it should greet the person using their full name.

puts "Hello, what's your first name?"
first = gets.chomp
puts "What's your middle name?"
middle = gets.chomp
puts "What's your last name?"
last = gets.chomp
puts "So, your full name is #{first} #{middle} #{last}? Greetings, and thanks for sharing that."


# Write a program which asks for a person's favorite number. 
# Have your program add one to the number, then suggest the result as a bigger and better favorite number.

puts "So #{first}, what's your favorite number?"
number = gets.chomp.to_i
puts "That means " + (number + 1).to_s + " is the next largest number."
