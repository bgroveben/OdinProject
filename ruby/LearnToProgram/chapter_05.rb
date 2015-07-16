# A Few Things to Try

# Write an Angry Boss program. It should rudely ask what you want. Whatever you answer, the Angry Boss should yell it back to you, and then fire you. 
# For example, if you type in I want a raise., it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!

puts "What would you like to tell your angry boss?"
response = gets.chomp.upcase
puts ("WHADDAYA MEAN '#{response}'?!?  YOU'RE FIRED!!")
puts " "

# So here's something for you to do in order to play around more with  center, ljust, and rjust: 
# Write a program which will display a Table of Contents so that it looks like this:
=begin

                Table of Contents                 
 
Chapter 1:  Numbers                         page 1
Chapter 2:  Letters                        page 72
Chapter 3:  Variables                     page 118

=end

puts " "
line_width = 50
puts ("Table of Contents").center line_width
puts " "
puts ("Chapter 1:  Numbers").ljust(line_width/2)   + ("page 1").rjust(line_width/2)
puts ("Chapter 2:  Letters").ljust(line_width/2)   + ("page 72").rjust(line_width/2)
puts ("Chapter 3:  Variables").ljust(line_width/2) + ("page 118").rjust(line_width/2)
