=begin 
Converting implicit blocks to explicit
Sometimes, the performance benefits of implicit block invocation are outweighed by the need to have the block accessible as a concrete object.
Ruby makes it very easy to convert blocks from implicit to explicit and back again, but requires special syntax for this.
=end

# Let's start with converting implicit to explicit.

def calculation(a, b, &block) # &block is an explicit (named) parameter
 block.call(a, b)
end

puts calculation(5, 5) { |a, b| a + b } # this is an implicit block -- it is nameless and is not passed as an explicit parameter.


# Now, the other way - explicit to implicit.

def calculation(a, b)
  yield(a, b) # yield calls an implicit (unnamed) block 
end

addition = lambda {|x, y| x + y}
puts calculation(5, 5, &addition) # like our last example, &addition is an explicit (named) block -- but `yield` can still call it!

#1 The block should be the last parameter passed to a method.
#2 Placing an ampersand (&) before the name of the last variable triggers the conversion.


=begin 
Let's do an exercise where you get to try this yourself.
We have a method called filter that accepts an explicitly passed block. 
We look to the block to tell us whether a value from the array should be accepted or rejected.
The Array#select method does exactly this but requires an implicit block. 
Try converting the explicit block into an implicit block and passing it on to Array#select.
=end

def filter(array, block)
 return array.select(&block) # Your code here
end

p filter([1,2,3,4], lambda { |n| n.even? })
=begin 
STDOUT:
filter([1, 2, 3, 4], lambda {|number| number.even? }) returns [2, 4] ✔
filter([1, 2.0, 3, 4.0], lambda {|number| number.integer? }) returns [1, 3] ✔
=end


=begin 
Ok, let’s make this more complicated by changing our filter method itself to a block, and make the incoming block that 
does the filtration an implicitly passed one. 
Here, you’ll need to convert the block passed to Filter from implicit to explicit, then back again.
=end

Filter = lambda do |array, &block|
 array.select(&block)
end

p filter([1,2,3,4], lambda { |n| n.even? })

=begin 
STDOUT:
Filter.call([1, 2, 3, 4]) {|number| number.even? } returns [2, 4] ✔
Filter.call([1, 2.0, 3, 4.0]) {|number| number.integer? } returns [1, 3] ✔
=end