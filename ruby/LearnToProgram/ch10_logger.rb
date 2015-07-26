=begin 
Program Logger. 
Write a method called log, which takes a string description of a block and, of course, a block. 
Similar to do_self_importantly, it should puts a string telling that it has started the block, and another string at the 
end telling you that it has finished the block, and also telling you what the block returned. 
Test your method by sending it a code block. 
Inside the block, put another call to log, passing another block to it. (This is called nesting.) 
In other words, your output should look something like this:

Beginning "outer block"...
Beginning "some little block"...
..."some little block" finished, returning:  5
Beginning "yet another block"...
..."yet another block" finished, returning:  I like Thai food!
..."outer block" finished, returning:  false
=end

def log(block_description, &block)
  puts 'Beginning "'+block_description+'"...'
  value = block.call
  puts '..."'+block_description+'" finished, returning: ' + value.to_s
end

log('outer block') do
  log('some little block') do
    5
  end
  log('yet another block') do
    "I like Thai Food!"
  end
  false
end
puts

# Here is the code from the answer key. Yeah, I had to cheat. 
# I couldn't figure out assigning the block.call to a variable.
# The nesting part confounded me as well. Oh well.

def log(block_description, &block)
puts 'Beginning "'+block_description+'" . . .' 
value_returned = block.call
puts '. . . "'+block_description+'" finished, returning:'
puts value_returned
end

log 'outer block' do
  log 'some little block' do
    5
  end

  log 'yet another block' do
    'I like Thai food!'
  end
false
end
# When you run the answer key code, value returned is printed on the next line. My code doesn't do that. So there.
