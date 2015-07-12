=begin 
Introducing the do-end delimiter
A block can be created by wrapping a chunk of code with curly braces ({}) or the words do and end. 
Unlike the curly braces that you've seen thus far, the do - end syntax requires that the do, the code for the block, 
and the end all be on separate lines.
As always, let me demonstrate this through four examples, all of which do the same thing but using different syntaxes. 
Don't hesitate to experiment with them - that's what they're there for.

Since all these forms are functionally identical, we're down to social conventions when it comes to deciding between them. 
In most Ruby codebases, the convention is to use curly braces for blocks with just a single line of code, 
and do-end when more than one line is involved.
Please keep in mind that the last example exists just to demonstrate that the do-end form still works when you create 
line breaks "artificially" using the appropriate Ruby syntax (a semicolon). 
However, this form is obviously clumsy to write and I doubt you'll actually see it used anywhere.
=end

addition = lambda {|a, b| a + b }
puts addition.call(5, 5)


addition = lambda {|a, b|
 a + b
}
puts addition.call(5, 5)


addition = lambda do |a, b|
 a + b
end
puts addition.call(5, 5)


addition = lambda do |a, b|; a + b; end
puts addition.call(5, 5)