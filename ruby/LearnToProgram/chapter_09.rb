# The Time Class
# A Few Things to Try

# One billion seconds... Find out the exact second you were born (if you can). 
# Figure out when you will turn (or perhaps when you did turn?) one billion seconds old. Then go mark your calendar.

bday = Time.mktime(1974, 7, 29, 12)
puts bday 
puts bday + 1_000_000_000

# Happy Birthday! Ask what year a person was born in, then the month, then the day. 
# Figure out how old they are and give them a big SPANK! for each birthday they have had.

# A simple solution to calculating years is # age_years = (Time.now - dob) / 31_536_000
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