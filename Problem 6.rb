# Project Euler Problem: 6
# Sum Square Difference
=begin
The sum of the squares of the first ten natural numbers is,
			12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,
			(1 + 2 + ... + 10)**2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

def sum_of_square
	values = []
	(1..100).each do |num|
		values.push(num ** 2)
	end
	values.inject(:+)
end

def square_of_sum
	sum = 0
	(1..100).each do |num|
		sum += num
	end
	sum ** 2
end

difference = square_of_sum - sum_of_square

puts "The difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is #{square_of_sum} − #{sum_of_square} = #{difference}"