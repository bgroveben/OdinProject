=begin 
Make an OrangeTree class. It should have a  height method which returns its height, and a  oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year.
=end

class OrangeTree

  def initialize(name)
    @name = name
    @age = 1
    @height = 1
    @orange_count = 0

    puts "#{@name} is planted, and it is #{@height} foot tall. Its name is #{@name}."
  end
  
  def grow_oranges
    one_year_passes
    if @age > 7
      @orange_count += 15
    elsif @age > 5
      @orange_count += 10
    elsif @age > 3
      @orange_count += 5
    else
      @orange_count
    end
    puts "You have #{@orange_count} sweet and tasty oranges left on #{@name}."
    puts "#{@name} is now #{@age} years old and #{@height} feet tall."
  end

  def pick_an_orange
    if @orange_count >= 1
      puts "You pick an orange and savor its tasty sweetness."
      @orange_count -= 1
      if @orange_count == 1
        puts "You have one more orange left on #{@name}." 
      else
        puts "You have #{@orange_count} oranges left on #{@name}."
      end
    else
      puts "Sorry, there are no oranges on #{@name}."
    end
  end


  private

  def one_year_passes
    @age += 1
    @height += 1
    @orange_count = 0

    if tree_dead?
      puts "Your tree has died at the ripe old age of #{@age}. Have a nice day!"
      exit
    end
  end

  def tree_dead?
    @age > 10
  end

end

tree = OrangeTree.new("Dave")
tree.grow_oranges
tree.pick_an_orange
tree.grow_oranges
tree.grow_oranges
tree.grow_oranges
tree.grow_oranges
tree.grow_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.grow_oranges
tree.grow_oranges
tree.pick_an_orange
tree.grow_oranges
tree.grow_oranges


# This version is from the answer key: 
# http://learntoprogramanswers.blogspot.com/2008/01/page-126-134-few-more-things-to-try.html

=begin
class OrangeTree

  def initialize
    @age = 0
    @tall = 0
    @fruit = 0
    puts 'A new Orange Tree is planted.'
  end

  def height
    puts 'The tree is ' + @tall.to_s + ' feet tall.'
  end

  def count_the_oranges
    puts 'The tree has ' + @fruit.to_s + ' oranges.'
  end

  def pick_an_orange
    if @fruit < 1
      puts 'Sorry, there are no oranges to pick this year.'
    else
      puts 'You pick an orange from the tree. It\'s very delicious.'
      @fruit = @fruit - 1
    end
  end

  def one_year_passes
    puts 'One year passes'
    @age = @age + 1
    @tall = @tall + 1
    @fruit = 0

    if dead?
    puts 'The Orange Tree dies'
    exit
  end 

  if @age > 2
    @fruit = @age*10
  else
    @fruit = 0
  end

end

private

  def dead?
    @age > 5
  end

end

puts ''
tree = OrangeTree.new
tree.height
tree.count_the_oranges
tree.pick_an_orange
puts ''
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
puts ''
tree.one_year_passes
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
puts ''
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
puts ''
tree.one_year_passes 
tree.height
tree.count_the_oranges 
puts ''
tree.one_year_passes
=end