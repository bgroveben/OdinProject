# The instructions for this exercise are pretty vague; make the tests pass.
# This program 'walks up' the class hierarchy starting with subclass.
# If argument klass is an ancestor (direct or indirect) of argument subclass, the program will return true; false otherwise. 
# The program terminates when it reaches nil (BasicObject) or when it finds klass.

def is_ancestor?(klass, subclass)
  current_class = subclass
  while !current_class.superclass.nil? && current_class != klass
    current_class = current_class.superclass
  end
  current_class == klass
end

p is_ancestor?(Object, Integer)
p is_ancestor?(Numeric, Integer)
p is_ancestor?(Numeric, String)

=begin 
STDOUT:
detects that Numeric is the direct ancestor of Integer: is_ancestor?(Numeric, Integer) ✔
detects that Numeric is the direct ancestor of Float: is_ancestor?(Numeric, Float) ✔
knows Numeric is not an ancestor of String: is_ancestor?(Numeric, String) ✔
detects that Object is a direct ancestor of String: is_ancestor?(Object, String) ✔
detects that Integer is a grandchild of Object (Object -> Numeric -> Integer): is_ancestor?(Object, Integer) ✔
doesn't use any other methods to solve the problem (yes, there's a shortcut :)) ✔
=end

puts " "

# The shortcut, or rather, a shortcut. This being Ruby, there are probably a few more.

def is_ancestor?(klass, subclass)
  subclass.ancestors.include? klass
end

p is_ancestor?(Object, Integer)
p is_ancestor?(Numeric, Integer)
p is_ancestor?(Numeric, String)