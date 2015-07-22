# A Few Things to Try

# Expand upon englishNumber. First, put in thousands. 
# So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.

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
  write = left/1000           # How many thousands left to write out?
  left  = left - write*1000   # Subtract off those thousands.

  if write > 0
    thousands   = english_number(write)
    num_string = num_string + thousands + ' thousand'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract of  those hundreds.

  if write > 0
    # Now here's a really sly trick
    hundreds   = english_number(write)
    num_string = num_string + hundreds + ' hundred'

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
puts english_number(1000)
puts english_number(1101)
puts english_number(2222)
puts english_number(3211)
puts english_number(9395)
puts english_number(12236)
puts english_number(123456)
puts english_number(987654)

# Expand upon englishNumber some more. Now put in millions, so you get 'one million' instead of 'one thousand thousand'. 
# Then try adding billions and trillions. How high can you go?

=begin 
How about weddingNumber? It should work almost the same as englishNumber, except that it should insert the word "and" all over the place, returning things like 'nineteen hundred and seventy and two', or however wedding invitations are supposed to look. 
I'd give you more examples, but I don't fully understand it myself. You might need to contact a wedding coordinator to help you.
=end 

=begin 
"Ninety-nine bottles of beer..." Using englishNumber and your old program, write out the lyrics to this song the right way this time. Punish your computer: have it start at 9999. (Don't pick a number too large, though, because writing all of that to the screen takes your computer quite a while. A hundred thousand bottles of beer takes some time; and if you pick a million, you'll be punishing yourself as well!
=end 
