=begin 
Problem Statement
Given an Array, return the elements that are present exactly once in the array.
You need to write a method called non_duplicated_values to accomplish this task.
Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]
=end

def non_duplicated_values(values)
  values.find_all { |value| values.count(value) == 1 }
end

p non_duplicated_values([1,2,2,3,3,4,5])
p non_duplicated_values([1,2,2,3,4,4])

=begin 
STDOUT:
returns [1,4,5], given [1,2,2,3,3,4,5] ✔
returns [1,3], given [1,2,2,3,4,4] ✔
=end