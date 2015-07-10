=begin
Problem Statement
Given a sentence, return true if the sentence is a palindrome.
You are supposed to write a method palindrome? to accomplish this task.
Note Ignore whitespace and cases of characters.
Example:
Given "Never odd or even" the method should return true
=end

# RM solution:
def palindrome?(sentence)
  downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
  downcase_stripped_sentence  ==  downcase_stripped_sentence.reverse
end

def palindrome?(sentence)
  new_sentence = sentence.downcase.gsub(" ", "")
  new_sentence === new_sentence.reverse
end

p palindrome?("Never odd or even")
p palindrome?('Race fast safe car')
p palindrome?('Live not on Evil')
p palindrome?('Yreka Bakey')


=begin 
STDOUT:
returns true for 'Race fast safe car' ✔
returns true for 'Live not on Evil' ✔
returns false for 'Yreka Bakey' ✔
=end