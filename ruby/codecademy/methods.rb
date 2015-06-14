#!/usr/bin/env ruby
=begin
I have been getting away with not using the shebang.
If it is because of how my system is configured, then I don't know what I did to make it work.
=end

# The following code is from the Codecademy ruby exercise "Methods, Methods Everywhere".

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
puts "My name is #{first_name} #{last_name} and I live in #{city}, #{state}."