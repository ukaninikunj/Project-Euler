# Project Euler Problem: 9
# Special Pythagorean Triplet
=begin 
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
					a**2 + b**2 = c**2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.

Find the product abc.
=end

(1..500).each do |a|
	(a..500).each do |b|
		(b..500).each do |c|
			if a**2 + b**2 == c**2 && a + b + c == 1000
				puts "a: #{a}, b: #{b}, c: #{c}"
        		puts "Product of abc: #{a*b*c}"
      		end
    	end
  	end
end