=begin 
Lets just build our own Square class that takes just one parameter to the constructor (initialize) instead of two, 
but inherits perimeter from Rectangle.
This way, you get a nicer syntax for squares (Square.new(3), say) and you get perimeter for free from Rectangle.
=end

class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end

# Create a class Square here
class Square < Rectangle
  def initialize(length)
    @length = length
    @breadth = length  # Why? Because otherwise breadth will be a nil value when the perimeter definition is used.
  end
end

square = Square.new(3)
p square.perimeter

=begin 
STDOUT:
Square shouldn't override perimeter ✔
Square should override initialize ✔
the overriden initialize on Square should take just one parameter ✔
perimeter of Square.new(3) should be 12 ✔
perimeter of Square.new(10) should be 12 ✔
perimter of Rectangle.new(5, 8) should be 26 ✔
=end