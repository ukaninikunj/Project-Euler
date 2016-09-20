# Project Euler Problem: 4
# Largest Palindrome Product
=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=end

class Integer
	def palindromic?
		d = self.to_s.split('')
		return d == d.reverse
	end  
end

max = 0
(100..999).each do |a|
	(a..999).each do |b|
		p = a * b
		if p > max and p.palindromic?
			max = p
		end
	end
end

puts max