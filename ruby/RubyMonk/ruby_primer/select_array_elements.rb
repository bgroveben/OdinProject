=begin 
Problem Statement
Create a method 'random_select' which, when given an array of elements (array) and a number (n), returns n randomly selected elements from that array.
Example: Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers from the given array. (Note: those two random numbers may be the same number.) The method should return those random values in a new array.
Calling the method twice should ideally return different sets of values (though it may not).
Note: Ruby has the method rand which takes a parameter max. It returns a random number lesser than max.
One more note: Ruby also has a method Array#sample which very concisely solves this problem. Unfortunately, it's too concise! The exercise is almost to write your own Array#sample, so it's been disallowed. Good luck!
=end

=begin 
RubyMonk answer
def random_select(array, n)
  result = []
  n.times do 
    result << array[rand(array.length)]
  end
  result
end
=end 

def random_select(array, n)
  result = []
  n.times { result << array.shuffle[n] }
  result
end

p random_select([1,2,3,4,5], 2)

=begin 
STDOUT:
passing [1, 2, 3, 4, 5] and 2 returned [4, 5]
passing [1, 2, 3, 4] and 2 returned [2, 3]
passing [1, 2, 3] and 2 returned [1, 3]
passing [3, 1, 5] and 2 twice returned [5, 3] and [3, 3]
Returns the number of elements requested from a 5-element array ✔
Returns the number of elements requested from a 4-element array ✔
Returns the number of elements requested from a 3-element array ✔
Makes a call to 'rand' or 'Array#shuffle' ✔
Does not return the same input on two consecutive calls (tries 5 times) ✔
returns only the values present in the array passed to the method ✔
=end