class Person
  def initialize(name)  # function that "boots up" each object
    # In Ruby, we use @ before a variable to signify that it's an instance variable. 
    # This means that the variable is attached to the instance of the class.
    @name = name
  end
end
# We can create an instance of a class just by calling .new on the class name, like so:
matz = Person.new("Yukihiro")