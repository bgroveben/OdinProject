=begin 
In this case, we'll be making an Account object with public methods to display balances and transfer funds, 
but which rely on private methods to make sure the user's PIN (personal identification number) is correct 
before approving transactions.
=end

# Codecademy version:
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)

puts "" # put a blank line between outputs

# My version:
class Account
  attr_reader :name, :balance
  
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    if pin_number == pin  # also works with @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin  # also works with @pin
      @balance -= amount
      puts "Withdrew $#{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
    def pin
      @pin = 1234
    end
    
    def pin_error
      "Access denied: incorrect PIN."
    end
end

checking_account = Account.new("Me", 50_000)
checking_account.withdraw(11, 5000)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 5000)
checking_account.display_balance(1234)
