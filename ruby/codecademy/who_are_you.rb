# Ruby will print out a string based on user inputs

print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city are you in?"
city = gets.chomp
city.capitalize!

print "What state are you in? Please use the abbreviation."
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and I live in #{city}, #{state}."