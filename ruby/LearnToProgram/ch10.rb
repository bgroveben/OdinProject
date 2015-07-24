# Blocks and Procs

toast = Proc.new do
  puts 'Cheers!'
end
toast.call
toast.call
toast.call
puts

# Blocks can take parameters:

do_you_like = Proc.new do | a_good_thing |
  puts 'I *really* like ' +a_good_thing+'!'
end
do_you_like.call 'chocolate'
do_you_like.call 'ruby'
puts

# You can't pass methods into other methods, but you can pass procs into methods.
# Methods can't return other methods, but they can return procs.

# Methods which take procs:

def do_self_importantly(some_proc)
  puts 'Everybody just HOLD ON! I have something to do...'
  some_proc.call
  puts 'Okay everyone, I\'m done. Go on with what you were doing.'
end
say_hello = Proc.new do
  puts 'hello'
end
say_goodbye = Proc.new do
  puts 'goodbye'
end
do_self_importantly(say_hello)
do_self_importantly(say_goodbye)
puts
# This can come in handy when you have to (repeatedly) open a file, then do something, then close the file.

# You can also write methods which will determine how many times, or even if, to call a proc.
# Here is a method which will call the proc passed in about half of the time, and another which will call it twice:

def maybe_do(some_proc)
  if rand(2) == 0  # This will call the proc about half the time.
    some_proc.call
  end
end

def twice_do(some_proc)
  some_proc.call
  some_proc.call    
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybe_do(wink)
maybe_do(glance)
twice_do(wink)
twice_do(glance)
puts
# Sure, you could write a method to wink twice, but you can't write a method to just do *something* twice.

# Now pay attention.
# This next method will take some object and a proc, and will call the proc on that object.
# If the proc returns false, we quit; otherwise the we call the proc with the returned object.
# We keep doing this until the proc returns false (or our program crashes).
# The method will return the last non-false value returned by the proc.

def do_until_false(first_input, some_proc)
  input  = first_input
  output = first_input

  while output
    input  = output
    output = some_proc.call(input)
  end
  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false 
  else
    array.pop   # Take off the last number...
    array.push(last_number * last_number)   # ...and replace it with its square...
    array.push(last_number - 1)   #...followed by the next smaller number.
  end
end
always_false = Proc.new do |just_ignore_me|
  false
end
puts do_until_false([5], build_array_of_squares).inspect
puts do_until_false('I\'m writing this at 3am; someone knock me out!', always_false)
puts 
# The above is a pretty weird method, but it shows how differently our method acts when given very different procs.

# Methods which return procs.

# In this example, compose takes two procs and returns a new proc which, when called, calls the first proc 
# and passes its result into the second proc.

def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end
square_it = Proc.new do |x|
  x * x
end
double_it = Proc.new do |x|
  x + x
end
double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)
puts
# Notice that the call to proc1 had to be inside the parentheses for proc2 in order for it to be done first.


# Passing blocks (not procs) into methods.

class Array
  def each_even(&was_a_block_now_a_proc)
    # We start with "true", because arrays start with 0, which is even
    is_even = true

    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call(object)
      end
      is_even = (not is_even)  # Toggle from even to odd, or odd to even.
    end
  end
end
['apple', 'bad apple', 'cherry', 'durian'].each do |fruit|
  puts 'Yum! I just love ' +fruit+' pies, don\'t you?'
end
# We are getting the even-numbered elements of the array, all of which happens to be odd numbers,
# just because I like to cause problems like that.
[1,2,3,4,5].each_even do |oddball|
  puts oddball.to_s+' is NOT an even number!'
end
puts
=begin
About the Array class above: 
So to pass in a block to each_even, all we had to do was stick the block after the method. 
You can pass a block into any method this way, though many methods will just ignore the block. 
In order to make your method not ignore the block, but grab it and turn it into a proc, put the name of the proc at the end 
of your method's parameter list, preceded by an ampersand (&). 
So that part is a little tricky, but not too bad, and you only have to do that once (when you define the method). 
Then you can use the method over and over again, just like the built-in methods which take blocks, like each and times. 
(Remember 5.times do...?)
If you get confused, just remember what eachEven is supposed to do: call the block passed in with every other element in the array.
Once you've written it and it works, you don't need to think about what it's actually doing under the hood 
("which block is called when??"). 
In fact, that's exactly why we write methods like this: so we never have to think about how they work again. We just use them.
=end


# The following method times how long different sections of a program are taking, aka 'profiling' the code.
# profile takes the time before running the code, runs it, then takes the time at the end and calculates the difference.

def profile(description_of_block, &block)
  start_time = Time.now 
  block.call 
  duration = Time.now - start_time
  puts description_of_block+': '+duration.to_s+' seconds'
end
profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end
  # Show the number of digits in this HUGE number
  puts number.to_s.length.to_s+' digits'
end
profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
puts
