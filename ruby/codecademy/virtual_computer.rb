=begin 
Now that you've learned all about classes and objects in Ruby, you can create any kind of Ruby object your heart desires. 
In this project, we'll use our newfound knowledge to create a class, Computer, and generate instances of that class 
that can manipulate imaginary files for us.
=end

class Computer
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "Yo Ben, #{filename} was created by #{@username} at #{time}."
  end
  
  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("Mac", 12345)
other_computer = Computer.new("Winders", 67890)
your_computer = Computer.new("Linux", 24680)

my_computer.create("yay.rb")
your_computer.create("fun.rb")

puts "Users: #{Computer.get_users}"