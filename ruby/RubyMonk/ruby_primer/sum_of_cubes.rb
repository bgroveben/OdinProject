=begin 
Problem Statement
Compute the sum of cubes for a given range a through b.
Write a method called sum_of_cubes to accomplish this task
Example Given range 1 to 3 the method should return 36
=end

# My first solution:
def sum_of_cubes(a, b)
  ary = (a..b).to_a
  ary2 = ary.map { |i| i**3  }
  ary2.inject{ |sum,i| sum + i }
end


#RM solution:
def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end


#StackOverflow solution:
def sum_of_cubes(a, b)
  (a..b).reduce(0) { |a, b| a + b**3 }
end


# SO solution optimized for runtime:
def sum_of_cubes(min, max)
  lower = min - 1
  (((max * (max + 1))/2) ** 2) - (((lower * (lower + 1))/2) ** 2)
end

p sum_of_cubes(1,3)
p sum_of_cubes(3,5)

=begin 
STDOUT:
returns 216 for range 3 to 5 ✔
returns 36 for range 1 to 3 ✔
=end