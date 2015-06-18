# This program asks for text and the word the user wants redacted, then replaces the word with "REDACTED".
# As is , the program can only handle one redacted word, and does not account for capitalization.

puts "Please enter the text you want altered."
text = gets.chomp
puts "Please enter the word in the text you want redacted."
redact = gets.chomp
words = text.split(" ")
words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end

=begin
What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
How could you make your program take multiple, separate words to REDACT?
How might you make a new redacted string and save it as a variable, rather than just printing it to the console?  
=end