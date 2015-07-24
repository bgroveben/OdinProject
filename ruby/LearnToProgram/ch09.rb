# The Time Class
# A Few Things to Try

# One billion seconds... Find out the exact second you were born (if you can). 
# Figure out when you will turn (or perhaps when you did turn?) one billion seconds old. Then go mark your calendar.

bday = Time.mktime(1974, 7, 29, 12)
puts bday 
puts bday + 1_000_000_000
puts 

# Happy Birthday! Ask what year a person was born in, then the month, then the day. 
# Figure out how old they are and give them a big SPANK! for each birthday they have had.

# A simple solution to calculating years is # age_years = (Time.now - dob) / 31_536_000
#                                          or age_years = Time.now.year - dob.year
def age(dob)  # I got this from StackOverflow; it accounts for leap years
  now = Time.now.utc
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end

puts "What year were you born?"
a = gets.chomp
puts "What month (please give the number) were you born?"
b = gets.chomp
puts "What day were you born?"
c = gets.chomp

dob = Time.mktime(a, b, c)
years = age(dob)

puts "That makes you #{years} years old!"
while years > 0
  puts "SPANK! (#{years})"
  years -= 1
end
puts 

# Arrays and Hashes

color_array = []
color_hash  = {}

color_array[0]         = 'red'
color_array[1]         = 'green'
color_array[2]         = 'blue'
color_hash['strings']  = 'red'
color_hash['numbers']  = 'green'
color_hash['keywords'] = 'blue'

color_array.each do |color|
  puts color
end

color_hash.each do |code_type, color|
  puts code_type + ':  ' + color
end
puts

weird_hash = Hash.new 
weird_hash[12] = 'monkeys'
weird_hash[[]] = 'emptiness'
weird_hash[Time.new] = 'no time like the present'
puts weird_hash
puts 


# Creating Classes

class Die
  def roll
    1 + rand(6)
  end  
end
# Let's make a few dice...
dice = [Die.new, Die.new, Die.new]
# ... and roll them.
dice.each do |die|
  puts die.roll
end
puts

# Now throw in an instance variable

class Die
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

die = Die.new 
die.roll
puts die.showing 
puts die.showing
die.roll
puts die.showing
puts die.showing
puts
puts Die.new.showing 
# WTF?

class Die
  def initialize
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

puts Die.new.showing 
puts  # That's better


class Die
  def initialize
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat
    puts "What number do you want to roll (1-6)?"
    number = gets.chomp.to_i
    if number < 1 || number > 6
      puts "I know you're cheating, but 1-6 please."
    else
      "Here's your #{number}, cheater."
    end
  end
end

puts Die.new.cheat
