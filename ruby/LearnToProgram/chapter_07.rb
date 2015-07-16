# A Few Things to Try

=begin 
Write the program we talked about at the very beginning of this chapter.
Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order.
Hint: There's a lovely array method which will give you a sorted version of an array:  sort. Use it!
=end

words = []
word = "initialize"
puts "Type as many words as you want, and they will be sorted alphabetically."
# puts "Type 'STOP' (all caps, or it will be added to the list) when you are done adding words."
# while word != "STOP"
puts "Hit the Enter key on a blank line when you are finished."
while word != ""
  word = gets.chomp
  words.push(word)
end
puts "Now, here are the words you entered in alphabetical order:"
puts words.sort_by { |word| word.downcase}  # so that capitalized letters don't always come before lowercase letters
puts

=begin
Try writing the above program without using the sort method. 
A large part of programming is solving problems, so get all the practice you can!
=end
#!# I'm going to try insertion sort here, even though it has a slow runtime and is far more difficult to implement than the sort method. Hey, I'm following the instructions.

words = []
word = "initialize"
puts "Type as many words as you want, and they will be sorted alphabetically."
puts "Hit the Enter key on a blank line when you are finished."
# puts "Type 'STOP' (all caps, or it will be added to the list) when you are done adding words."
# while word != "STOP"
while word != ""
  word = gets.chomp
  words.push(word)
  def insertionsort(words)
    for j in 1..(words.length - 1)
      key = words[j]
      i = j - 1
      while i >= 0 and words[i] > key
        words[i+1] = words[i]
        i = i - 1
      end
      words[i+1] = key
    end
    puts "Now, here are the words you entered in alphabetical order:"
    words = words.sort_by { |word| word.downcase }  # Takes capitalization into account
    puts words 
    # puts words.drop(1)  # This is so the word 'STOP' is not added to the alphabetized list.
  end
end
puts insertionsort(words)
puts

#!# When I type the list of words in UPPERCASE, the first word on the alphabetized list is dropped and the word 'STOP' is added at the end.
#!# When I type the list of words in lowercase, the word 'STOP' is dropped and the list displays the way I want it to.
#!# There, I fixed it. I also used 'words.sort_by { |word| word.downcase }' so that capitalized letters don't always come first.

=begin
Rewrite your Table of Contents program (from the chapter on methods). Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.). Then print out the information from the array in a beautifully formatted Table of Contents.
=end

=begin
# Here is the code from Chapter 5:
puts 
line_width = 50
puts ("Table of Contents").center line_width
puts " "
puts ("Chapter 1:  Numbers").ljust(line_width/2)   + ("page 1").rjust(line_width/2)
puts ("Chapter 2:  Letters").ljust(line_width/2)   + ("page 72").rjust(line_width/2)
puts ("Chapter 3:  Variables").ljust(line_width/2) + ("page 118").rjust(line_width/2)
=end


puts
line_width = 50
toc = ["Table of Contents", "Chapter 1:  Numbers", "page 1", "Chapter 2:  Letters", "page 72", "Chapter 3:  Variables", "page 118"]
puts (toc[0]).center line_width
puts
puts (toc[1]).ljust(line_width/2) + (toc[2]).rjust(line_width/2) 
puts (toc[3]).ljust(line_width/2) + (toc[4]).rjust(line_width/2)
puts (toc[5]).ljust(line_width/2) + (toc[6]).rjust(line_width/2)
