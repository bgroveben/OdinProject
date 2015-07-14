=begin 
Super Powered
A common use of inheritance is to have overridden methods in a subclass do something in addition to what the superclass method did,
rather than something entirely different (like in previous examples). 
This allows us to re-use behaviour that exists in a superclass, then modify it to suit the needs of the subclass.
Most object oriented languages offer a mechanism by which an overridden method can be called by the overriding method. 
Ruby uses the super keyword to make this happen. 
Using super will call the same method, but as defined in the superclass and give you the result.
In the following example, we define behaviour on the class Animal that describes how it moves.
=end

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"
  end
end

# Your code here
class Human < Animal
  def move
    super + " by walking"
  end
end

class Penguin < Bird
  def move
    "I can move by swimming" 
  end
end

p Animal.new.move
p Bird.new.move
p Human.new.move
p Penguin.new.move

=begin 
STDOUT:
Animal.new.move returns 'I can move' ✔
Bird.new.move returns 'I can move by flying' ✔
Human.new.move returns 'I can move by walking' ✔
Penguin.new.move returns 'I can move by swimming' ✔
Human should be an Animal ✔
Penguin should be a Bird ✔
=end