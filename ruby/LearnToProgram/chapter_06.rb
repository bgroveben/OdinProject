# A Few Things to Try

=begin
"99 bottles of beer on the wall..." Write a program which prints out the lyrics to that beloved classic, 
that field-trip favorite: "99 Bottles of Beer on the Wall."
I'm going to do 9 bottles, so the program has a shorter runtime.
=end

count = 9
while count > 0
  if count > 1
    puts "#{count} bottles of beer on the wall"
    puts "#{count} bottles of beer"
    puts "Take one down and pass it around"
  elsif count > 0
    puts "1 bottle of beer on the wall"
    puts "1 bottle of beer"
    puts "Take one down and pass it around"
    puts "No more bottles of beer on the wall"
    puts " "
  end
  count -= 1
end

=begin
Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. (This part is optional, and would be much easier if you read the section on Ruby's random number generator at the end of the methods chapter.) You can't stop talking to grandma until you shout BYE.
Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' without one!
Hint 2: Try to think about what parts of your program should happen over and over again. All of those should be in your while loop.
=end

puts "What do you want to say to Grandma? Remember to speak up!"
response = gets.chomp
while response != "BYE"
  if response == response.upcase
    puts "NO, NOT SINCE #{(rand(1930..1950))}!"
  else
    puts "HUH!? SPEAK UP SONNY!"
  end
  response = gets.chomp
end
puts "BYE SONNY!"

=begin 
Extend your Deaf Grandma program: What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.
=end

puts "What do you want to say to Grandma? Remember to speak up!"
goodbye = 0
while goodbye < 3
  response = gets.chomp
  if response == response.upcase
    puts "NO, NOT SINCE #{(rand(1930..1950))}!"
  else
    puts "HUH!? SPEAK UP SONNY!"
  end

  if response == "BYE"
    goodbye += 1
  else
    goodbye = 0
  end
end
puts "BYE SONNY!"

=begin 
Leap Years. Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). Leap years are years divisible by four (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). (Yes, it's all pretty confusing, but not as confusing has having July in the middle of the winter, which is what would eventually happen.)
=end 

puts "Tell me years to begin with and end with, and I'll tell you all of the leap years in between."
puts "What is the first year?"
first = gets.chomp.to_i
puts "What is the last year?"
last = gets.chomp.to_i
puts " "
puts "These are the leap years between #{first} and #{last}: "
for i in (first..last)
  if ((i % 4 == 0) && (i % 100 != 0) || (i % 400 == 0))
    puts i 
  else 
    i += 1
  end
end