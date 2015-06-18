# What if we wanted to sort the books by title, but from Z – A, or descending order? 

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }


# Use .sort! to sort the fruits array in descending (that is, reverse) alphabetical order.

fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! { |first, second| second <=> first }