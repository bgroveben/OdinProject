=begin 
Problem Statement
Given an array, return true if all the elements are Fixnums.
You need to write array_of_fixnums? method to accomplish this task.
Example:
Given [1,2,3], the method should return true
=end

def array_of_fixnums?(array)
  array.all? { |x| x.is_a?(Fixnum) }
end


# RM solution:
def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end

p array_of_fixnums?([1,2,3])
p array_of_fixnums?(['a',1,:b])
p array_of_fixnums?([])

=begin 
STDOUT:
returns 'true' for [1,2,3] ✔
returns 'false' for ['a',1,:b] ✔
returns 'true' for [] ✔
=end