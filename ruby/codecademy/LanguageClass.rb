=begin
A basic class consists only of the class keyword and the name of the class. Check it out:
  class NewClass
    Class magic here
  end
Our NewClass has the ability to create new Ruby objects of class NewClass (just like "Hello!" is a String and 4 is a Fixnum). 
By convention, class names start with a capital letter and use CamelCase instead of relying_on_underscores. 
=end

class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
  
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description
