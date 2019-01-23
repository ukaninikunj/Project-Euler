# Project Euler Problem: 16
# Power Digit Sum
=begin 
2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?
=end

def power(n)
  sum = (2**n).to_s.each_char.inject {|a, b| a.to_i + b.to_i}
  "The Sum of The Digits of The Number 2**#{n} is: #{sum}"
end

puts power(1000)