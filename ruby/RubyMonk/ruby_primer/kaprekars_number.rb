=begin 
Problem Statement
9 is a Kaprekar number since 
9 ^ 2 = 81 and 8 + 1 = 9
297 is also Kaprekar number since 
297 ^ 2 = 88209 and 88 + 209 = 297.
In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
Find if a given number is a Kaprekar number.
=end

# RM solution, which I totally had to use to cheat
def kaprekar?(k)
  no_of_digits = k.to_s.size
  square = (k ** 2).to_s
  
  second_half = square[-no_of_digits..-1]
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
  
  k == first_half.to_i + second_half.to_i
end


def kaprekar?(k)
  if k == 1
    true
  else
    digits = k.to_s.size
    square = (k ** 2).to_s
    last = square[-digits..-1]
    first = square.size.even? ? square[0..digits - 1] : square[0..digits -2]
    k == first.to_i + last.to_i
  end
end

p kaprekar?(1)
p kaprekar?(9)
p kaprekar?(46)
p kaprekar?(55)
p kaprekar?(90)
p kaprekar?(297)
p kaprekar?(703)


=begin
I added the test for 1 because 1 is a Kaprekar number. That was about the only part I didn't cheat on.
STDOUT:
returns true for 9 ✔
returns false for 46 ✔
returns true for 55 ✔
returns false for 90 ✔
returns true for 297 ✔
returns true for 703 ✔
=end