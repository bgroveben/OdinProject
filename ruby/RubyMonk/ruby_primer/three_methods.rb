=begin 
You are used to this by now. Write for me three methods - calculate, add and subtract. The tests should all pass. Take a look at the hint if you have trouble! And as a little extra hint: remember that you can use something.is_a?(Hash) or another_thing.is_a?(String) to check an object's type.
Hint:
Write add and subtract first, then have calculate call one or the other depending on the options passed. Gotchas: The inject based approach for addition will require some modification for subtraction. For "calculate", you can't use both splatted arguments and last-parameter-is-a-hash at the same time through Ruby, so you'll have to work on the arguments inside of calculate. There's no neat way to do this - you have to check if the last argument to calculate is a Hash, then remove it from the list before calling add or subtract.
=end

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  # current = numbers.shift
  # numbers.inject(current) { |current, number| current - number }
  numbers.inject() { |sum, number| sum - number }  
end

def calculate(*args)
  options = args[-1].is_a?(Hash) ? args.pop : {}
  options[:add] = true if options.empty?
  return add(*args) if options[:add]
  return subtract(*args) if options[:subtract]
end

=begin 
invoking add(4, 5) returns 9 ✔
invoking add(-10, 2, 3) returns -5 ✔
invoking add(0, 0, 0, 0) returns 0 ✔
invoking subtract(4, 5) returns -1 ✔
invoking subtract(-10, 2, 3) returns -15 ✔
invoking subtract(0, 0, 0, 0, -10) returns 10 ✔
defaults to addition when no option is specified ✔
invoking calculate(4, 5, add: true) returns 9 ✔
invoking calculate(-10, 2, 3, add: true) returns -5 ✔
invoking calculate(0, 0, 0, 0, add: true) returns 0 ✔
invoking calculate(4, 5, subtract: true) returns -1 ✔
invoking calculate(-10, 2, 3, subtract: true) returns -15 ✔
invoking calculate(0, 0, 0, 0, -10, subtract: true) returns 10 ✔
=end