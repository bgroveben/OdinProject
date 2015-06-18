# This program will count the number of times a word appears in the text entered by the user and return the
# word and count from highest to lowest.
# This program does not account for capitalization and trailing punctuation.

puts "Please enter some text for the histogram."
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each { | word | frequencies[word] += 1 }
frequencies = frequencies.sort_by do | key, value |
  value
end
frequencies.reverse!
frequencies.each do | key, value |
  puts key + " " + value.to_s 
end