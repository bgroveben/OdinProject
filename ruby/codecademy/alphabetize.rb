def alphabetize(arr, rev=false)
  arr.sort!
  if rev
    arr.reverse!
  else
    arr
  end
end

numbers = [1,2,3,4,5]
puts alphabetize(numbers)



def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"