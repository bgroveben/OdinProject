=begin 
Now you understand why we said mixins could give us the ability to mimic inheriting from more than one class: 
by mixing in traits from various modules as needed, we can add any combination of behaviors to our classes we like!
=end
# Create a module, MartialArts.
# Inside, define a method called swordsman that just puts "I'm a swordsman."
# Include MartialArts to mix this into both the Ninja and Samurai classes, thereby giving them the swordsman method.

# Create your module here!
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

storm_shadow = Ninja.new("Storm Shadow")
tokugawa = Samurai.new("Tokugawa Ieyasu")
puts storm_shadow.swordsman
puts tokugawa.swordsman