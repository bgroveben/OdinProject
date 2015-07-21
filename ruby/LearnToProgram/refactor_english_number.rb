=begin 
Let's fix up the English Numbers program. There are a few issues to deal with.
First, it has too much repetition. 
Second, it doesn't handle numbers greater than 100. 
Third, there are too many special cases and too many returns. 
Let's use some arrays and try to clean it up a bit.
=end

def english_number(number)
  if number < 0  # No negative numbers.
    return 'Please enter a number zero or greater.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = ''  # This is the string we will return.

  ones_place = ['one',    'two',    'three',    'four',     'five',    'six',     'seven',     'eight',    'nine']

  tens_place = ['ten',    'twenty', 'thirty',   'forty',    'fifty',   'sixty',   'seventy',   'eighty',   'ninety']

  teenagers  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  left  =  number 
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract of  those hundreds.

  if write > 0
    # Now here's a really sly trick
    hundreds   = english_number(write)
    num_string = num_string + hundreds + ' hundred'
=begin 
That's called 'recursion'. So what did I just do?
I told this method to call itself, but with 'write' instead of number.
Remember that 'write' is (at the moment) the number of hundreds that we have to write out.
After we add 'hundreds' to 'num_string', we add the string 'hundred' after it.
For example, if we originally called english_number with 1999 (number = 1999), then at this point 'write' would be 19,
and 'left' would be 99.
The laziest thing to do at this point is to have english_number write out the 'nineteen' for us,
then we write out 'hundred', and then the rest of english_number writes out 'ninety-nine'.
Get all that?
=end
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end
  
  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write 'tenty-two' instead of 'twelve', we have to make a special case for these.
      num_string = num_string + teenagers[left - 1]
      # The '-1' is because teenagers[3] is 'fourteen', not 'thirteen'.
      # Now, since we already took care of the digit in the ones place, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
      # The '-1' is because tens_place[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write - 1]
    # The '-1' is because, you guessed it, ones_place[3] is 'four', not 'three'.
  end

  # Now we just return num_string
  num_string
end

puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
