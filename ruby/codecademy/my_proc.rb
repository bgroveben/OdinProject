# Sample Proc:
=begin 
cube = Proc.new { |x| x ** 3 }
[1, 2, 3].map(&cube)
# [1, 8, 27]
=end

# Create a method, greeter, that takes no arguments and yields to a block.
def greeter
  yield 
end
# Create a Proc, phrase, that puts "Hello there!". Pass this to greeter instead of a block.
phrase = Proc.new { puts "Hello there!"}
greeter(&phrase)


# Unlike blocks, we can call procs directly by using Ruby's .call method.
hi = Proc.new { puts "Hello!" }
hi.call
