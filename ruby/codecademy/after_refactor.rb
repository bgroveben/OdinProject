# This is the code from before_refactor.rb, cleaned up a bit.

$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  
return "n must be an integer." unless n.is_a? Integer
 
return "n must be greater than 0." if n <= 0
  
  prime_array ||= [] 
  
  prime = Prime.new
  n.times { prime_array << prime.next }
  prime_array
end

first_n_primes(10)



# This code is even more streamlined than the previous code which was written for Ruby 1.8

require 'prime'

def first_n_primes(n)
  # Check for correct input!
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0

  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.instance
  prime.first n
end

first_n_primes(10)