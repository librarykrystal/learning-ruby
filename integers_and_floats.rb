# floats = floating point numbers (numbers with decimals)

# 2000000 is same as 2_000_000 for readability, personal choice

2 + 4
# is actually the same as:
2.+(4)
# because the operators are methods being called on the number objects
# the ability to write them as we'd write on paper is some "syntactic sugar" incl in Ruby

# modulus operator % gives remainder
20 % 6  # returns 2

10 / 3  # returns 3
# in order to get an accurate result, one of the numbers needs to be a float:
10 / 3.0  # returns 3.3333333333333335
10 / 3.to_f  # also returns accurate result, because .to_f converts to float
3.0.to_i  # returns 3, because .to_i converts to integer
"3".to_i  # returns 3
3.to_s  # returns "3" because .to_s converts to string
-5.abs  # absolute value, returns 5
5.even?  # returns false (parity)
5.odd?  # returns true
12.digits  # returns [2, 1] an array of the digits

# Comparisons return boolean values:
3 > 8  # returns false
3 < 8  # returns true
3 == 3  # returns true
3 != 3  # returns false

# Spaceship operator
4 <=> 7  # returns -1, meaning the first number is smaller than the second
7 <=> 4  # returns 1, meaning the first is larger than the second
4 <=> 4  # returns 0, meaning they are equal

# Times method
5.times do
  puts "Howdy"
end  # this returns/puts "Howdy" 5 times and also returns the integer 5
# simple/short executions like this can also be written on one line like so:
5.times { puts "Howdy" }
# with a block argument:
5.times do |n|
  puts "Yo, #{n}"
end  # returns 5 times with incrementing n (starting at 0) plus the integer the method was called on:
# Yo, 0
# Yo, 1
# Yo, 2
# Yo, 3
# Yo, 4
# 5

# rounding
4.3.ceil  # returns 5
4.6.floor  # returns 4
4.5.round  # returns 5
4.4.round  # returns 4
-1.positive?  # returns false
-2.6.negative?  # returns true