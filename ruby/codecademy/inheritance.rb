# Inheritance is the process by which one class takes on the attributes and methods of another, 
# and it's used to express an is-a relationship.

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error


# We've created an Application class in the editor. Create your own class, MyApp, that inherits from Application.
class Application
  def initialize(name)
    @name = name
  end
end

# Add your code below!
class MyApp < Application
end


# Sometimes you'll want one class that inherits from another to not only take on the methods and attributes of its parent, 
# but to override one or more of them.
# Create a new class, Dragon, that inherits from Creature. 
# Give your derived class a fight method that overrides Creature's; 
# instead of returning "Punch to the chops!", it should return "Breathes fire!".
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end


# You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword.
# When you call super from inside a method, that tells Ruby to look in the superclass of the current class and find a method 
# with the same name as the one from which super is called. If it finds it, Ruby will use the superclass' version of the method.
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    super
  end
end


# Any given Ruby class can have only one superclass, so no multiple inheritance is allowed.
class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end
# => superclass mismatch for class Dragon
