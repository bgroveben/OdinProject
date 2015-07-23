=begin 
Let's say we want to make a simple virtual pet, a baby dragon. Like most babies, it should be able to eat, sleep, and poop, which means we will need to be able to feed it, put it to bed, and take it on walks. Internally, our dragon will need to keep track of if it is hungry, tired, or needs to go, but we won't be able to see that when we interact with our dragon, just like you can't ask a human baby, "Are you hungry?". We'll also add a few other fun ways we can interact with our baby dragon, and when he is born we'll give him a name. (Whatever you pass into the  new method is passed into the initialize method for you.) 
Alright, let's give it a shot:
=end

class Dragon 
  
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly     = 10  # He's full.
    @stuff_in_intestine =  0  # He doesn't need to go.
  
    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do 
      if @asleep
        passage_of_time
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end
  
  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  
  private
  # "private" means that the methods defined here are methods internal to the object.
  # You can feed your dragon, but you can't ask him if he's hungry.
  # Put another way, the public methods are things you can do to the dragon.
  # Private methods are things that happen within the dragon.

  def hungry?
    # Method names can end with a "?".
    # Usually, we only do this if the method returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly     = @stuff_in_belly     - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else  # Our dragon is starving! 
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving! In desperation, he eats YOU!'
      exit  # This quits the program
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts 'Whoops! ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk 
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
