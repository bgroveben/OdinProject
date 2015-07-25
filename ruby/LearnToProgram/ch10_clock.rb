=begin 
Grandfather Clock. 
Write a method which takes a block and calls it once for each hour that has passed today. 
That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. 
Test your method out with a few different blocks (including the one I just gave you). 
Hint: You can use Time.now.hour to get the current hour. 
However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary 
clock-face numbers (1 to 12).
=end

=begin
def clock
  [1,2,3,4,5,6,7,8,9,10,11,12].each do |hour|
    puts "DONG!" * hour
  end   
end

clock 


def convert_time(hour)
  if hour == 0
    12
  elsif hour > 12
    hour = hour - 12
  else
    hour
  end
end

p convert_time(0)
p convert_time(1)
p convert_time(12)
p convert_time(13)
p convert_time(23)
p convert_time(17)

=end

=begin 
def clock(hour)
  if hour == 0
    12
  elsif hour > 12
    hour = hour - 12
  else
    hour
  end
  puts "DONG!" * hour
end

clock(0)
clock(1)
clock(12)
clock(13)
clock(18)
clock(20)
clock(23)
puts
t = Time.now.hour
clock(t)
puts
clock(Time.now.hour)
=end

def clock(clock_proc)
  hour = Time.now.hour
  if hour == 0
    12
  elsif hour > 12
    hour = hour - 12
  else
    hour
  end
  hour.to_i.times do
    clock_proc.call
  end
end
dong_proc = Proc.new do
  puts "DONG!"
end

clock(dong_proc)
