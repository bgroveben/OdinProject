=begin 
Problem Statement
Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits.
Example: 
Given: 123 
Return: [123, 132, 213, 231, 312, 321]
=end

def number_shuffle(number)
  ary = number.to_s.split('') 
end

p number_shuffle(123)