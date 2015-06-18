# Use gsub to mutate a string

print "Please enter a phrase or sentence."
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  print "Nothing to change here."
end
puts "Daffy Duck would say: #{user_input}."