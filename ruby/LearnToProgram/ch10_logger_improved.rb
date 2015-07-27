=begin 
Better Logger. 
The output from that last logger was kind of hard to read, and it would just get worse the more you used it. 
It would be so much easier to read if it indented the lines in the inner blocks. 
To do this, you'll need to keep track of how deeply nested you are every time the logger wants to write something. 
To do this, use a global variable, a variable you can see from anywhere in your code. 
To make a global variable, just precede your variable name with $, like these:  $global, $nestingDepth, and $bigTopPeeWee. 
In the end, your logger should output code like this:

Beginning "outer block"...
  Beginning "some little block"...
    Beginning "teeny-tiny block"...
    ..."teeny-tiny block" finished, returning:  lots of love
  ..."some little block" finished, returning:  42
  Beginning "yet another block"...
  ..."yet another block" finished, returning:  I love Indian food!
..."outer block" finished, returning:  true
=end

$depth = 0

def log(block_description, &block)
  def indent(spaces)  # I found this on StackOverflow; Thanks Adam McArthur!
    num = (" " * spaces)
    gsub(/^/, num)
  end
  puts ('Beginning "'+block_description+'"...').indent($depth)
  value = block.call
  puts ('..."'+block_description+'" finished, returning:  ' + value.to_s).indent($depth)
end

log('outer block') do
  $depth += 2
  log('some little block') do
    $depth += 2
    log('teeny-tiny block') do
      "lots of love"    
    end
    $depth -= 2
    42
  end
  log('yet another block') do
    "I love Indian food!"
  end
  $depth -= 2
  true
end
puts

=begin 
My Output:
Beginning "outer block"...
  Beginning "some little block"...
    Beginning "teeny-tiny block"...
    ..."teeny-tiny block" finished, returning:  lots of love
  ..."some little block" finished, returning:  42
  Beginning "yet another block"...
  ..."yet another block" finished, returning:  I love Indian food!
..."outer block" finished, returning:  true

My output matches the author's, but I wonder if there is a better way to change the indentation. Time to check the answer key.
=end

# Here is the code from the answer key:

$nesting_depth = 0
$space = ' '  # Waaay simpler than my solution. Oh well, I'm learning.

def log block_description, &block
  puts $space*$nesting_depth + 'Beginning "'+block_description+'" ...'
  $nesting_depth = $nesting_depth + 2
  value_returned = block.call
  $nesting_depth = $nesting_depth - 2 
  puts $space*$nesting_depth + '... "'+block_description+'" finished, returning:  ' + value_returned.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end
  log 'yet another block' do
    'I love Indian food!'
  end
  true
end

# The answer key code is better than mine because it is shorter and simpler.
