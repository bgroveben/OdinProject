# Time for some practice! As always, make the tests pass. 
# Note that the perimeter of both a square and a rectangle is calculated by summing up all of its sides.

module Perimeter
  def perimeter
    sides.sum  # array.sum is courtesy of ActiveSupport in Rails. It worked on RubyMonk's site.
    # sides.inject(:+)  # inject also has several aliases
    # sides.inject(0, :+)  # Why the 0? If no sides are passed, the sum will be zero instead of nil
    # sides.inject(0) { |sum, sides| sum + sides }  # courtesy of Ruby's Enumerable documentation
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

=begin 
Rectangle should include Perimeter ✔
Square should include Perimeter ✔
Perimeter should have a method named `perimeter` ✔
Rectangle should have `perimeter` included into it and not define its own version ✔
Square should have `perimeter` included into it and not define its own version ✔
Rectangle.new(2, 3).perimeter returns 10 ✔
Rectangle.new(5, 10).perimeter returns 30 ✔
Square.new(5).perimeter returns 20 ✔
Square.new(15).perimeter returns 60 ✔
Rectangle#perimeter should in turn call Rectangle#sides ✔
Square#perimeter should in turn call Square#sides ✔
=end