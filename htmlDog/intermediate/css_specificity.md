Specificity

If you have two (or more) conflicting CSS rules that point to the same element, there are some basic rules that a browser follows to determine which one is most specific and therefore wins out.

More Specific = Greater Precedence

If the selectors are the same, then the last one will always take precedence. For example:

p { color: red }
p { color: blue } /* This one wins */

When it comes to nested selectors:

div p { color: red } /* This one is more specific, so it takes precedence */
p { color: blue } 

Calculating Specificity

The actual specificity of a group of nested selectors takes some calculating.
Basically, you give every ID selector ("#whatever") a value of 100;
Every class selector (".whatever") has a value of 10;
Every HTML selector ("whatever") has a value of 1.
Add them all up, and you have the specificity value.

Examples of calculating specificity:

p has a specificity of 1 (1 HTML selector)
div p has a specificity of 2 (2 HTML selectors)
.tree has a specificity of 10 (1 class selector)
div p.tree has a specificity of 12 (2 HTML selectors + a class selector)
#baobab has a specificity of 100 (1 id selector)
body #content .alternative p has a specificity of 112 (HTML selector + id selector + class selector + HTML selector)

The higher the specificity number the greater the precedence.
