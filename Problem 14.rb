# Project Euler Problem: 14
# Longest Collatz Sequence
=begin 
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

					13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

max_l = 0
max_i = 0
500001.step(1000000, 2).each do |i|
  l = 0
  j = i
  while j != 1 do
    if j.even?
      j /= 2
    else
      j = 3 * j + 1
    end
    l += 1
  end
  if l > max_l
    max_l = l
    max_i = i
  end
end

puts "The Starting Number under One Million is: #{max_i}."