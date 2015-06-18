# Enter a number as the method argument, and ruby will tell you if the number is prime or not.

def prime(n)  # n is the parameter
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(5)  # 5 is the argument
prime(9)