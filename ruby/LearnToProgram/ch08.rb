# A Few Things to Try
=begin
Expand upon englishNumber. First, put in thousands. 
So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.

Expand upon englishNumber some more. Now put in millions, so you get 'one million' instead of 'one thousand thousand'. 
Then try adding billions and trillions. How high can you go? I think I'll stop at billions.

How about weddingNumber? It should work almost the same as englishNumber, except that it should insert the word "and" all over the place, returning things like 'nineteen hundred and seventy and two', or however wedding invitations are supposed to look. 
I'd give you more examples, but I don't fully understand it myself. You might need to contact a wedding coordinator to help you.
Rather than throw in a bunch of 'and's everywhere, I just put them in after the hundreds on line 73 (seventy-three). 
=end

def english_number(number)
  if number < 0  # No negative numbers.
    return 'Please enter a number zero or greater.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''  # This is the string we will return.

  ones_place = ['one',    'two',    'three',    'four',     'five',    'six',     'seven',     'eight',    'nine']

  tens_place = ['ten',    'twenty', 'thirty',   'forty',    'fifty',   'sixty',   'seventy',   'eighty',   'ninety']

  teenagers  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  left  =  number
  write = left/1_000_000_000           # How many billions left to write out?
  left  = left - write*1_000_000_000   # Subtract off those billions.

  if write > 0
    billions   = english_number(write)
    num_string = num_string + billions + ' billion'
    if left > 0
      # So we don't write 'one billionthree million....'
      num_string = num_string + ' '
    end
  end

  write = left/1_000_000
  left  = left - write*1_000_000
  if write > 0
    millions   = english_number(write)
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000           
  left  = left - write*1000  
  if write > 0
    thousands   = english_number(write)
    num_string  = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/100          
  left  = left - write*100  
  if write > 0
    hundreds   = english_number(write)
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' and '
    end
  end
  
  write = left/10          
  left  = left - write*10  
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

  write = left  
  left  = 0     
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
puts english_number(1100)
puts english_number(1101)
puts english_number(2222)
puts english_number(3211)
puts english_number(9395)
puts english_number(12236)
puts english_number(123456)
puts english_number(987654)
puts english_number(1_000_000)
puts english_number(2_345_678)
puts english_number(1_000_000_000)
puts english_number(2_345_678_901)
puts


=begin 
"Ninety-nine bottles of beer..." Using englishNumber and your old program, write out the lyrics to this song the right way this time. Punish your computer: have it start at 9999. (Don't pick a number too large, though, because writing all of that to the screen takes your computer quite a while. A hundred thousand bottles of beer takes some time; and if you pick a million, you'll be punishing yourself as well!
=end 

time = Time.now

def bottles_of_beer(bottles)
  while bottles != 0
    puts english_number(bottles).to_s + ' bottles of beer on the wall'
    puts english_number(bottles).to_s + ' bottles of beer'
    bottles = bottles - 1
    puts 'take one down, pass it around'

    if bottles == 1
      puts english_number(bottles).to_s + ' bottle of beer on the wall'
    else 
      puts english_number(bottles).to_s + ' bottles of beer on the wall'
    end
    puts
    if bottles == 1
      puts english_number(bottles).to_s + ' bottle of beer on the wall'
      puts english_number(bottles).to_s + ' bottle of beer'
      bottles = bottles - 1
      puts 'take one down, pass it around'
      puts english_number(bottles).to_s + ' bottles of beer on the wall'
    end 
  end
end

puts bottles_of_beer(100_000)

elapsed_time = Time.now - time 
puts elapsed_time.to_s + ' seconds to execute.'
