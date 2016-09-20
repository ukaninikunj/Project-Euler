# Project Euler Problem: 3
# Largest Prime Factor
=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143?
=end

n = 600851475143
a = []
x = 1
y = 2
 
while x < n
	if n % y == 0 
		a << y
		x *= y
	end
	y += 1
end

puts "The largest prime factor of #{n} is #{a.last}"