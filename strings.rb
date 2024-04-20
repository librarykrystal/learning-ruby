# String literal quotation mark usage/escaping
"They said, \"hello.\""
'It\'s hot outside!'

# Ruby code inside #{} gets evaluated. This string must use double-quotes.
"2 + 2 = #{2 + 2}"

# Concatenate:
"Hello, " + "world"
"hiya" * 5  # returns hiyahiyahiyahiyahiya

# Those string objects were all instances of the built-in string class
# There are built-in Ruby methods that can be called on string instances, including:
"Hello, world".class   # find out what type of object this instance is
"Hello, world".upcase
"Hello, world".reverse
"Hello, town".sub("town", "World")  # argument: replace this with that, only affects first occurance
"He11o, wor1d".gsub("1", "l")  # global sub affects every occurance in the string

# Predicate methods such as include? return boolean values
"Hello, world".include?("world")  # returns true
"Hello, world".include?("word")  # returns false
"Hello, world".include?("h")  # returns false
"Hello, world".downcase.include?("h")  # returns true - this is method chaining
# using =~ operator to check if a string includes a character or substring
    # between // is a REGULAR EXPRESSION
"Hello, world" =~ /He/  # returns 0 because that is the starting index at which this was found in the string
"Hello, world"[1]  # returns "e" which is at index 0
"Hello, world"[-1]  # will give the last character of the string regardless of length
"Hello, world"[-2]  # returns l
# if no character exists (e.g. "hi"[30]), returned is nil

"Hello, world".match(/He/)  # returns a match data object (match data is a Ruby class)
puts "Hello, world".match(/He/)[0] # goes into the object and returns the first string that was matched

