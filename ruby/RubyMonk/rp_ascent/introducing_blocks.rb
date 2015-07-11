=begin 
Block your code!
Lets build four blocks one each for addition, subtraction, multiplication and division. 
Each block should accept two values, perform the operation and return the result.
We've already done addition for you, so feel free to use it as an example for the rest.
=end

Addition = lambda {|a, b| return a + b } # use this as your example!

Subtraction = lambda { |a, b| return a - b } # your code between the braces

Multiplication = lambda { |a, b| return a * b } # your code between the braces

Division = lambda { |a, b| return a / b } # your code between the braces

p Addition.call(5, 6)

=begin 
STDOUT:
Addition.call(5, 6) gives 11 ✔
Addition.call(0, 0) gives 0 ✔
Addition.call(-51, 1001) gives 950 ✔
Subtraction.call(5, 6) gives -1 ✔
Subtraction.call(0, 0) gives 0 ✔
Subtraction.call(-51, 1001) gives -1052 ✔
Multiplication.call(2, 5) gives 10 ✔
Multiplication.call(0, 5) gives 0 ✔
Multiplication.call(-1000, 2) gives -2000 ✔
Division.call(10, 5) gives 2 ✔
Division.call(0, 5) gives 0 ✔
Division.call(1, 0) raises error ✔
=end