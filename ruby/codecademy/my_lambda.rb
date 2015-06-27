# Lambdas are defined using the following syntax:
# lambda { |param| block }


# We have an array of strings in the editor, but we want an array of symbols.
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Create a new variable called symbolize.
# Store a lambda that takes one parameter and calls .to_sym on that parameter.
symbolize = lambda { |param| param.to_sym }
# We will then use symbolize with the .collect method to convert the items in strings to symbols!
symbols = strings.collect(&symbolize)


# This is a lambda that checks to see if each element in an array is a symbol.
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
# Create a lambda, symbol_filter, that takes one parameter and checks to see if that parameter .is_a? Symbol.
symbol_filter = lambda { |param| param.is_a? Symbol }
# Create a new variable called symbols, and store the result of calling my_array.select and passing it your lambda.
symbols = my_array.select(&symbol_filter)


# See if you can figure out what this code is supposed to do:
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M" }
a_to_m = crew.select(&first_half)