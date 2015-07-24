# A Few Things to Try

#!# Some of this violates the DRY principle, but I'm going through the basics for the sake of clarity.
#!# I am also rounding the measurements for the sake of simplicity; no leap-years or fractions of an hour type-stuff.

# Write a program which tells you:

# How many hours are in a year?
hours_in_day = 24
days_in_year = 365

puts "#{hours_in_day * days_in_year}" + " hours are in a year."
puts " "

# How many minutes are in a decade?
minutes_in_hour = 60
hours_in_day = 24
days_in_year = 365
years_in_decade = 10

puts "#{minutes_in_hour * hours_in_day * days_in_year * years_in_decade}" + " minutes are in a decade."
puts " "

# How many seconds old are you?

time_now = Time.now  # http://ruby-doc.org/core-2.2.2/Time.html
bday = Time.new(1974, 7, 29, 12)

puts "I am " + "#{(time_now - bday).to_i}" + " seconds old."
puts " "

# How many chocolates do you hope to eat in your life?
#!# This is kind of a wierd one, so I'm going to say I want 5 chocolates a week over my eighty year lifespan

chocolates_per_week = 5
weeks_in_year = 52
years_in_life = 80

puts "I hope to eat " + "#{chocolates_per_week * weeks_in_year * years_in_life}" + " chocolates in my life."
puts " "

# If I am 1204 million (1_204_000_000) seconds old, how old am I?
seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_year = 365

puts "If I am 1204 million seconds old, then I am " + "#{1_204_000_000 / days_in_year / hours_in_day / minutes_in_hour / seconds_in_minute}" + " years old."
puts " "


=begin 
I found a couple of answer keys for the problems, but the book version is different from the one I am using:

http://learntoprogramanswers.blogspot.com/ 

1. Hours in a year
puts 365 * 24

2. Minutes in a decade
puts 10 * 365 * 24 * 60

3. Seconds I'm old, 8/8/76 to 5/7/07 (9:45pm)
puts (30 * 365 * 24 * 60 * 60) + (272 * 24 * 60 * 60) + (21 * 60 * 60) + (45 * 60)

4. 912,000,000 seconds, how old?
puts 912000000/60/60/24/365


https://learntoprogramrubybookanswers.wordpress.com/chapter-2/

• How many hours are in a year?

# days a year * hours a day
puts 365 * 24
Answer: 8760 hours

• How many minutes are in a decade?

# days a year * hours a day * minutes a hour * amount of years
puts 365 * 24 * 60 * 10
Answer: 5256000 minutes

• How many seconds old are you?

# days a year * hours a day * minutes a hour * seconds a minute * amount of years
puts 365 * 24 * 60 * 60 * 23
Answer: 725328000 seconds

• If I am 912 million seconds old, how old am I?

# his age in seconds  /  amount of seconds in a year
puts 912000000  /  (365 * 24 * 60 * 60)
michael adds: The reason why I add parentheses in the 2nd part of the division (the divisor) is because the “amount of seconds in a year” part needs to be calculated first in its entirety before it can be used to divide the authors age.
=end