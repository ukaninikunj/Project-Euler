# Project Euler Problem: 7
# 10001st Prime
=begin 
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10001st prime number?
=end

def is_prime?(number)
  (2...number).each do |n|
    return false if number % n == 0
  end
  true
end

number = 2
index = 1

until index == 10001
	number += 1
	if is_prime?(number)
		index += 1
	end
end

puts "The 10001st prime number is: #{number}."