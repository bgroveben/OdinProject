=begin 
Problem Statement
Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length. 
Let's not treat the punctuation marks any different than other characters and assume that we will always have single space 
to separate the words.
Example: Given a string "Sort words in a sentence", it should return "a in Sort words sentence".
Note: You can use the sort method to sort an array. Try the documentation at ruby-lang to know more about sort.
=end

def sort_string(string)
  # string.split.to_a.sort_by{ |word| word.length }  # This returns an array, but RM wants a string.
  string.split.to_a.sort_by{ |word| word.length }.join(' ')  # Use join(' ') to convert array to string.
end

p sort_string("Sort words in a sentence")
p sort_string('Different number of letters')

# Given 'Awesome I am' it returns 'I am Awesome' ✔