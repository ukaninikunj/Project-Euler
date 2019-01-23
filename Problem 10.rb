# Project Euler Problem: 10
# Summation of Primes
=begin 
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

def is_prime?(number)
  (2...number).each do |n|
    return false if number % n == 0
  end
  true
end
number = 1
sum = 0

until number >= 2000000
	number += 1
	if is_prime?(number)
		sum += number
	end
end

puts "The sum of all the primes below two million is: #{sum}."