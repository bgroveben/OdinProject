=begin
Grandfather Clock. 
Write a method which takes a block and calls it once for each hour that has passed today. 
That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. 
Test your method out with a few different blocks (including the one I just gave you). 
Hint: You can use  Time.now.hour to get the current hour. 
However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12).
=end

# This is what I came up with, but I'm not sure it is what the author had in mind:

def clock
  hour = Time.now.hour
  if hour == 0
    hour = 12
  elsif hour > 12
    hour = hour - 12
  else
    hour = hour + 1
  end
  clock_proc = Proc.new do
    hour.to_i.times do
      puts "DONG!"
    end
  end
  clock_proc.call
end

clock 

puts 

# This is the code from the answer key:

def clock(some_proc)
  #convert hours to 12 hour format
  current_hour = Time.new.hour
  if current_hour == 0
    current_hour = current_hour + 12
  elsif current_hour > 12
    current_hour = current_hour - 12
  end
  #call the proc the number of hours passed
  current_hour.to_i.times do
  some_proc.call
  end
end 
# Dong proc
dong_proc = Proc.new do
  puts 'DONG!'
end

clock(dong_proc)

# The output is identical, but my method has the proc inside the definition and clock is called with no arguments.
# The answer key has the proc outside of the method, so the method is called with the proc as an argument.