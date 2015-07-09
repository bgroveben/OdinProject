=begin 
Problem Statement
Given an array containing some strings, return an array containing the length of those strings.
You are supposed to write a method named 'length_finder' to accomplish this task.
Example:
Given ['Ruby','Rails','C42'] the method should return [4,5,3]
=end

def length_finder(input_array)
  input_array.map { |word| word.length }
end

p length_finder(['Ruby','Rails','C42'])
p length_finder(['I','am','genius'])
p length_finder(['things','are','','awesome'])

=begin 
given ['I','am','genius'] it returns [1,2,6] ✔
given ['things','are','','awesome'] it returns [6,3,0,7] ✔
=end